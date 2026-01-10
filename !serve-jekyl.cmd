
@echo off
setlocal
set "SITE=C:\Users\rusco\OneDrive - University of Warwick\Admin\Archives\Documents\GitHub\minimal-mistakes"

if not exist "%SITE%" (
  echo Site path not found: %SITE%
  exit /b 1
)

pushd "%SITE%"
:: Use the full path to powershell.exe to avoid PATH issues
set "PS=%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe"

:: Start Jekyll in a new PowerShell window, bypassing policy and skipping profiles
start "Jekyll Server" "%PS%" -NoProfile -ExecutionPolicy Bypass -NoExit -Command ^
  "bundle exec jekyll serve --livereload --force_polling"

:: Give the server a moment to start (adjust if needed)
timeout /t 2 >nul

:: Open the site in the default browser
start "" http://localhost:4000

popd
endlocal