@echo off
REM =============================================
REM AUTO SYNC SCRIPT (simple bat loop)
REM =============================================

REM Go to your Vue project folder (important!)
cd /d E:\my-vue-learning-journey

REM Sync interval in seconds (change anytime)
set INTERVAL=30

echo.
echo ================================
echo AUTO GIT SYNC STARTED
echo Folder: E:\my-vue-learning-journey
echo Interval: %INTERVAL% seconds
echo Close this window to STOP.
echo ================================
echo.

:loop
echo [%date% %time%] Checking for changes...

REM Stage all changes
git add -A

REM Check if anything changed (git status output empty = no change)
set CHANGED=
for /f "delims=" %%i in ('git status --porcelain') do (
    set CHANGED=1
)

REM If changed, commit + push
if defined CHANGED (
    echo Changes detected. Committing...
    git commit -m "auto-sync: changes at %date% %time%"
    echo Pushing to GitHub...
    git push origin main
    echo Push complete.
    echo.
) else (
    echo No changes found.
    echo.
)

echo Waiting %INTERVAL% seconds...
timeout /t %INTERVAL% >nul

goto loop
