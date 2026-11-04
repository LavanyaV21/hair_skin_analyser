@echo off
title DermaGlow AI Launcher
echo ==========================================================
echo        DermaGlow AI - Hair & Skin Intelligence
echo ==========================================================
echo.
set "PATH=%~dp0..\tools\node;%PATH%"
cd /d "%~dp0server"
echo Starting DermaGlow AI full-stack server on http://localhost:5000 ...
echo Opening browser...
start http://localhost:5000
node src/index.js
pause
