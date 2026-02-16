# YouTube Downloader - Complete Setup Guide

## 🎯 Features
- **MP4 Video Download** - Multiple quality options (1080p, 720p, 480p, 360p)
- **MP3 Audio Download** - Multiple bitrates (320, 256, 192, 128 kbps)
- **Modern UI** - Beautiful, responsive design
- **Fast Downloads** - Optimized backend processing
- **No Registration** - 100% free to use

## 📋 Prerequisites

### System Requirements
- Python 3.8 or higher
- FFmpeg (for audio conversion)
- Modern web browser

### Install FFmpeg

**Windows:**
```bash
# Using Chocolatey
choco install ffmpeg

# Or download from: https://ffmpeg.org/download.html
```

**macOS:**
```bash
brew install ffmpeg
```

**Linux (Ubuntu/Debian):**
```bash
sudo apt update
sudo apt install ffmpeg
```

## 🚀 Installation Steps

### Step 1: Install Python Dependencies

```bash
# Install required packages
pip install -r requirements.txt

# Or install manually:
pip install Flask flask-cors yt-dlp
```

### Step 2: Run the Backend Server

```bash
# Run the Flask API server
python backend_api.py
```

Server will start on: `http://localhost:5000`

### Step 3: Open the Frontend

1. Open `index.html` in your web browser
2. Or host it on a local server:

```bash
# Using Python's built-in server
python -m http.server 8000

# Then open: http://localhost:8000
```

## 📁 File Structure

```
youtube-downloader/
├── index.html              # Main frontend file
├── backend_api.py          # Flask API server
├── requirements.txt        # Python dependencies
├── downloads/              # Downloaded files (auto-created)
└── README.md              # This file
```

## 🔧 Configuration

### Backend API URL
In `index.html`, update the API URL if needed:

```javascript
const API_BASE_URL = 'http://localhost:5000/api';
```

### Download Folder
In `backend_api.py`, you can change the download directory:

```python
DOWNLOAD_FOLDER = 'downloads'
```

## 📡 API Endpoints

### 1. Get Video Information
```
POST /api/info
Body: { "url": "YouTube video URL" }
Response: Video metadata (title, thumbnail, duration, formats)
```

### 2. Download Video
```
POST /api/download
Body: {
  "url": "YouTube video URL",
  "format": "mp4" or "mp3",
  "quality": "720" or "320" etc.
}
Response: Downloaded file
```

### 3. Health Check
```
GET /api/health
Response: API status
```

## 💻 Usage Guide

### For Users:
1. Paste YouTube video link in the input field
2. Click "Get Video Info"
3. Select format (MP4 or MP3)
4. Choose quality
5. Click on quality option to download

### For Developers:
1. The frontend uses Fetch API to communicate with backend
2. Backend uses yt-dlp for downloading videos
3. Files are temporarily stored and cleaned up after 1 hour
4. CORS is enabled for cross-origin requests

## 🌐 Deployment

### Deploy Backend (Flask)

**Option 1: Heroku**
```bash
# Create Procfile
echo "web: python backend_api.py" > Procfile

# Deploy
heroku create your-app-name
git push heroku main
```

**Option 2: Railway/Render**
- Upload your code
- Set Python as buildpack
- Deploy

**Option 3: VPS (DigitalOcean, AWS, etc.)**
```bash
# Install dependencies
pip install -r requirements.txt

# Run with gunicorn
pip install gunicorn
gunicorn backend_api:app -b 0.0.0.0:5000
```

### Deploy Frontend

**Option 1: GitHub Pages**
- Upload `index.html` to GitHub
- Enable GitHub Pages
- Update API_BASE_URL to your backend URL

**Option 2: Netlify/Vercel**
- Drag and drop `index.html`
- Configure environment variables

**Option 3: Your Hosting (cPanel, etc.)**
- Upload `index.html` via FTP
- Update API_BASE_URL

## ⚠️ Important Notes

### Legal Considerations
- Only download videos you have rights to
- Respect YouTube's Terms of Service
- Don't use for copyrighted content without permission

### Performance Tips
- Old files are auto-deleted after 1 hour
- Use quality settings appropriate for your bandwidth
- Consider implementing rate limiting for production

### Security
- Add authentication for production use
- Implement rate limiting
- Use HTTPS in production
- Validate all user inputs

## 🐛 Troubleshooting

### Backend Issues

**"ModuleNotFoundError: No module named 'flask'"**
```bash
pip install flask flask-cors yt-dlp
```

**"FFmpeg not found"**
```bash
# Install FFmpeg (see Prerequisites section)
```

**"CORS errors"**
- Make sure backend is running
- Check API_BASE_URL in index.html
- Verify flask-cors is installed

### Frontend Issues

**"Failed to fetch"**
- Ensure backend server is running on http://localhost:5000
- Check browser console for errors
- Verify API_BASE_URL is correct

**"Download not starting"**
- Check backend logs for errors
- Ensure FFmpeg is installed
- Verify video URL is valid

### Common Errors

**"ERROR: Unable to download video"**
- Video might be private or age-restricted
- Try a different video
- Check your internet connection

**"Download too slow"**
- Choose lower quality
- Check your internet speed
- Server might be overloaded

## 🔄 Updates

To update yt-dlp (recommended monthly):
```bash
pip install --upgrade yt-dlp
```

## 📞 Support

For issues or questions:
1. Check the Troubleshooting section
2. Review backend logs: Check terminal where `backend_api.py` is running
3. Check browser console: Press F12 in browser

## 📝 License

This project is for educational purposes. Make sure to comply with YouTube's Terms of Service.

## 🎉 Features to Add (Optional)

- [ ] Playlist download support
- [ ] Batch downloads
- [ ] Download history
- [ ] User authentication
- [ ] Video preview before download
- [ ] Subtitle download
- [ ] Custom filename templates
- [ ] Progress bar during download
- [ ] Multiple language support

## 🚀 Quick Start (TL;DR)

```bash
# 1. Install dependencies
pip install -r requirements.txt

# 2. Make sure FFmpeg is installed
ffmpeg -version

# 3. Run backend
python backend_api.py

# 4. Open index.html in browser
# 5. Start downloading!
```

---

**Made with ❤️ for YouTube enthusiasts**
