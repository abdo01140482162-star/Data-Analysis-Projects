@echo off
title Push to GitHub - Football Data Analytics Project
echo =======================================================
echo     Pushing Football Data Analytics Project to GitHub   
echo =======================================================
echo.

:: Check if git is installed
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Git is not installed or not in PATH.
    echo Please install Git from https://git-scm.com/ and try again.
    pause
    exit /b
)

:: Initialize git repository if not already done
if not exist .git (
    echo [INFO] Initializing Git repository...
    git init
    echo.
)

:: Stage all files
echo [INFO] Staging files...
git add .
echo.

:: Commit changes
echo [INFO] Committing changes...
git commit -m "Initial commit: Complete Football Analytics Project with EDA and ML prediction model"
echo.

:: Rename branch to main
echo [INFO] Setting default branch to main...
git branch -M main
echo.

:: Ask for GitHub repository URL
echo =======================================================
echo Please enter your GitHub Repository URL 
echo (e.g., https://github.com/username/repo-name.git):
echo =======================================================
set /p REPO_URL="Repo URL: "

if "%REPO_URL%"=="" (
    echo [ERROR] Repository URL cannot be empty.
    pause
    exit /b
)

:: Check if origin remote already exists
git remote get-url origin >nul 2>nul
if %errorlevel% equ 0 (
    echo [INFO] Updating remote origin URL...
    git remote set-url origin %REPO_URL%
) else (
    echo [INFO] Adding remote origin...
    git remote add origin %REPO_URL%
)
echo.

:: Push to remote
echo [INFO] Pushing files to GitHub (main branch)...
echo (You may be prompted to log in to GitHub in your browser)
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo =======================================================
    echo [SUCCESS] Project successfully uploaded to GitHub!     
    echo =======================================================
) else (
    echo.
    echo =======================================================
    echo [ERROR] Failed to push to GitHub.                      
    echo Please verify your Repository URL, network connection, 
    echo and GitHub permissions.                                
    echo =======================================================
)

echo.
pause
