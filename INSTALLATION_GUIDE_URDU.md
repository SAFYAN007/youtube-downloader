# YouTube Downloader - Step by Step Setup (Urdu Guide)

## 📖 Complete Installation Guide - Har Step Detail Mein

---

## STEP 1: Python Install Karein

### Windows Users:

1. **Python Download karein:**
   - Website kholen: https://www.python.org/downloads/
   - "Download Python 3.12" button par click karein
   - Installer download hoga

2. **Python Install karein:**
   - Downloaded file ko double-click karein
   - ⚠️ **ZAROORI**: "Add Python to PATH" checkbox ko CHECK karein
   - "Install Now" par click karein
   - Wait karein installation complete hone tak

3. **Check karein Python install hua ya nahi:**
   - Windows Search mein "cmd" type karein
   - Command Prompt kholen
   - Yeh command type karein:
   ```
   python --version
   ```
   - Agar version number show hua (jese: Python 3.12.0) to Python install hai! ✅

### Mac Users:

1. Terminal kholen (Spotlight mein "Terminal" search karein)
2. Homebrew install karein (agar nahi hai):
   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```
3. Python install karein:
   ```bash
   brew install python
   ```

### Linux Users:

```bash
sudo apt update
sudo apt install python3 python3-pip
```

---

## STEP 2: FFmpeg Install Karein (ZAROORI!)

FFmpeg video/audio conversion ke liye chahiye.

### Windows:

**Option 1 - Chocolatey se (Recommended):**
1. PowerShell ko **Administrator** mode mein kholen
   - Windows Search mein "PowerShell" type karein
   - Right click → "Run as Administrator"

2. Chocolatey install karein:
   ```powershell
   Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
   ```

3. FFmpeg install karein:
   ```powershell
   choco install ffmpeg
   ```

**Option 2 - Manual Installation:**
1. https://ffmpeg.org/download.html par jayen
2. Windows build download karein
3. Extract karein C:\ffmpeg folder mein
4. System PATH mein add karein (YouTube tutorial dekhen: "ffmpeg windows install")

### Mac:

```bash
brew install ffmpeg
```

### Linux:

```bash
sudo apt update
sudo apt install ffmpeg
```

**Check karein FFmpeg install hua:**
```bash
ffmpeg -version
```

---

## STEP 3: Project Folder Setup

1. **Naya folder banayen** apne computer par:
   - Example: `C:\youtube-downloader` (Windows)
   - Example: `~/youtube-downloader` (Mac/Linux)

2. **Downloaded files ko is folder mein copy karein:**
   - index.html
   - backend_api.py
   - requirements.txt
   - README.md

3. **File structure yeh hona chahiye:**
   ```
   youtube-downloader/
   ├── index.html
   ├── backend_api.py
   ├── requirements.txt
   └── README.md
   ```

---

## STEP 4: Python Packages Install Karein

1. **Command Prompt / Terminal kholen**

2. **Apne project folder mein jayen:**
   
   Windows:
   ```
   cd C:\youtube-downloader
   ```
   
   Mac/Linux:
   ```bash
   cd ~/youtube-downloader
   ```

3. **Packages install karein:**
   ```bash
   pip install -r requirements.txt
   ```
   
   Ya manually:
   ```bash
   pip install Flask flask-cors yt-dlp
   ```

4. **Wait karein** - 1-2 minute lagenge install hone mein

5. **Verify karein:**
   ```bash
   pip list
   ```
   - Aapko Flask, flask-cors, aur yt-dlp dikhna chahiye

---

## STEP 5: Backend Server Start Karein

1. **Same terminal mein yeh command run karein:**
   ```bash
   python backend_api.py
   ```

2. **Aapko yeh dikhna chahiye:**
   ```
   🚀 YouTube Downloader API Starting...
   📦 Make sure you have installed:
      pip install flask flask-cors yt-dlp
   
   🌐 API will run on: http://localhost:5000
   📝 API Documentation: http://localhost:5000
   
   ⚠️  Note: You also need FFmpeg installed for audio conversion
    * Serving Flask app 'backend_api'
    * Debug mode: on
    * Running on http://0.0.0.0:5000
   ```

3. ⚠️ **IMPORTANT**: Is terminal/command prompt ko **BAND MAT KAREIN**
   - Yeh background mein chalta rahega
   - Jab tak yeh chal raha hai, downloader kaam karega

---

## STEP 6: Frontend Open Karein

Ab aapko **index.html** file ko browser mein open karna hai.

### Method 1 - Simple (Direct):

1. `index.html` file par **double-click** karein
2. Yeh automatically browser mein khul jayega
3. ⚠️ **Agar downloads kaam nahi kar rahe**, to Method 2 use karein

### Method 2 - Local Server se (Recommended):

1. **Naya terminal/command prompt kholen** (pehla wala chalta rahe)

2. Project folder mein jayen:
   ```bash
   cd C:\youtube-downloader
   ```

3. Python HTTP server start karein:
   ```bash
   python -m http.server 8000
   ```

4. Browser kholen aur yeh URL type karein:
   ```
   http://localhost:8000
   ```

---

## STEP 7: Use Karna Shuru Karein! 🎉

1. **YouTube par jayen** aur koi bhi video kholen

2. **Video ka URL copy karein:**
   - Address bar se URL copy karein
   - Example: `https://www.youtube.com/watch?v=dQw4w9WgXcQ`

3. **Downloader mein paste karein:**
   - Input box mein URL paste karein
   - "Get Video Info" button par click karein

4. **Wait karein** - Video info load hoga (2-5 seconds)

5. **Format choose karein:**
   - 🎥 MP4 Video (agar video chahiye)
   - 🎵 MP3 Audio (agar sirf audio chahiye)

6. **Quality select karein:**
   - MP4: 1080p, 720p, 480p, ya 360p
   - MP3: 320kbps, 256kbps, 192kbps, ya 128kbps

7. **Quality option par click karein** - Download shuru ho jayega! ✅

---

## 🔍 Troubleshooting - Agar Kuch Kaam Na Kare

### Problem 1: "python command not found"
**Solution:**
- Python install nahi hai ya PATH mein nahi hai
- Python dubara install karein aur "Add to PATH" checkbox check karein

### Problem 2: "pip command not found"
**Solution:**
```bash
python -m pip install -r requirements.txt
```

### Problem 3: "FFmpeg not found" error
**Solution:**
- FFmpeg install karein (Step 2 dekhen)
- Computer restart karein installation ke baad

### Problem 4: "Failed to fetch video information"
**Solution:**
- Check karein backend chal raha hai (terminal mein messages dekhen)
- Check karein internet connection
- Video URL sahi hai ya nahi verify karein

### Problem 5: "CORS error" ya "Network error"
**Solution:**
- Backend definitely `http://localhost:5000` par chal raha hona chahiye
- index.html ko bhi local server se open karein (Method 2)

### Problem 6: Download nahi ho raha
**Solution:**
- Backend terminal mein errors check karein
- FFmpeg properly install hai verify karein
- Try karein dusri video URL

### Problem 7: "Port already in use"
**Solution:**
- Koi aur program port 5000 use kar raha hai
- Backend code mein port change karein:
  ```python
  app.run(debug=True, host='0.0.0.0', port=5001)  # 5000 ki jagah 5001
  ```
- Frontend mein bhi update karein:
  ```javascript
  const API_BASE_URL = 'http://localhost:5001/api';
  ```

---

## 💡 Pro Tips

### Tip 1: Dono Terminals Ko Side by Side Rakhein
- Left side: Backend running
- Right side: Frontend server (optional)
- Errors easily dekh sakte hain

### Tip 2: Browser Console Check Karein
- F12 press karein browser mein
- Console tab mein errors dikhenge agar kuch issue hai

### Tip 3: Backend Logs Dekhen
- Backend terminal mein har request ka log aata hai
- Errors wahan dikhenge

### Tip 4: Downloaded Files
- Files `downloads` folder mein save hoti hain (automatically banta hai)
- 1 hour purani files automatically delete ho jati hain

---

## 🎬 Quick Start Summary (TL;DR)

```bash
# 1. Install Python (python.org se)

# 2. Install FFmpeg
choco install ffmpeg  # Windows
brew install ffmpeg   # Mac

# 3. Project folder mein jayen
cd youtube-downloader

# 4. Packages install karein
pip install -r requirements.txt

# 5. Backend start karein (terminal 1)
python backend_api.py

# 6. Frontend open karein (terminal 2 - optional)
python -m http.server 8000
# Browser: http://localhost:8000

# 7. YouTube link paste karein aur download karein!
```

---

## 📞 Help Chahiye?

Agar koi problem aa rahi hai:

1. ✅ Check karein sab steps follow kiye
2. ✅ Errors ko Google par search karein
3. ✅ Backend terminal aur browser console check karein
4. ✅ Python, FFmpeg versions check karein

---

## 🎉 Enjoy Your YouTube Downloader!

Ab aap YouTube se videos aur audio download kar sakte hain apni site par!

**Important Legal Note:**
- Sirf wo videos download karein jinki permission hai
- Copyrighted content download karna illegal ho sakta hai
- YouTube Terms of Service follow karein

---

**Happy Downloading! 🚀**
