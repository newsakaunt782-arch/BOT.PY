@echo off
chcp 65001 >nul
cd /d "%~dp0"
if not exist .env (
  echo .env fayli topilmadi! .env.example dan nusxa oling va to'ldiring.
  pause & exit /b
)
pip install -r requirements.txt
python bot.py
pause
