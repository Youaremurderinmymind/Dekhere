import subprocess, time, cv2, numpy as np, requests, os

# ==== ตั้งค่า ====
DISCORD_WEBHOOK_URL = "https://discord.com/api/webhooks/1535332296905723987/ps-c80syGgYzPfsTn0W3fvAvAFzGNsDsubmXjexzrZSUfAUL8DercJwcQ2YXwUBaCEma"  # ใส่ webhook ของคุณ
TEMPLATES = {
    "button1": "button1.png",   # ชื่อ : path รูปที่ต้องเทียบ
    # "button2": "button2.png", # เพิ่มได้เรื่อยๆ
}
THRESHOLD = 0.8
INTERVAL = 3            # วนาทีต่อรอบ
SEND_TO_DISCORD_EVERY = 10   # สงภาพเข้า Discord ทุกๆ กี่รอบ (0 = ปิดการส่ง)

def screencap():
    subprocess.run(["adb", "shell", "screencap", "-p", "/sdcard/screen.png"])
    subprocess.run(["adb", "pull", "-a", "/sdcard/screen.png", "screen.png"], capture_output=True)
    return cv2.imread("screen.png")

def find_and_tap(img):
    for name, path in TEMPLATES.items():
        template = cv2.imread(path)
        if template is None:
            continue
        result = cv2.matchTemplate(img, template, cv2.TM_CCOEFF_NORMED)
        _, max_val, _, max_loc = cv2.minMaxLoc(result)
        if max_val >= THRESHOLD:
            h, w = template.shape[:2]
            x, y = max_loc[0] + w // 2, max_loc[1] + h // 2
            subprocess.run(["adb", "shell", "input", "tap", str(x), str(y)])
            print(f"[TAP] {name} ({x},{y}) conf={max_val:.2f}")
            return True
    return False

def send_to_discord(image_path):
    if not DISCORD_WEBHOOK_URL or "XXXX" in DISCORD_WEBHOOK_URL:
        return
    try:
        with open(image_path, "rb") as f:
            requests.post(DISCORD_WEBHOOK_URL, files={"file": f}, timeout=15)
        print("[DISCORD] ส่งภาพแล้ว")
    except Exception as e:
        print(f"[DISCORD] ส่งไม่สำเร็จ: {e}")

def main():
    round_count = 0
    while True:
        img = screencap()
        if img is None:
            print("จับภาพไม่ได้ เช็ค adb connect")
            time.sleep(INTERVAL)
            continue

        tapped = find_and_tap(img)
        if not tapped:
            print("ไม่พบปุมที่ตรงในรอบนี้")

        round_count += 1
        if SEND_TO_DISCORD_EVERY and round_count % SEND_TO_DISCORD_EVERY == 0:
            send_to_discord("screen.png")

        time.sleep(INTERVAL)

if __name__ == "__main__":
    main()
