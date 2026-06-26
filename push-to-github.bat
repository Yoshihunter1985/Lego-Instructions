@echo off
REM ============================================
REM  Brick Vault - Push New Files to GitHub
REM ============================================
REM  Double-click this file any time after you've
REM  copied new images/PDFs into this folder (or
REM  its subfolders) via File Explorer.
REM ============================================

cd /d "%~dp0"

echo.
echo Checking for changes...
git add .

git diff --cached --quiet
if %errorlevel%==0 (
    echo.
    echo No new or changed files found. Nothing to push.
    echo.
    pause
    exit /b
)

echo.
echo Committing changes...
git commit -m "Add/update Lego sets %date% %time%"

echo.
echo Pushing to GitHub...
git push

echo.
echo Done! Give it a minute, then refresh the app.
echo.
pause
