@echo off
setlocal

rem Define the repository URL and the directory name
set "repo_url=https://github.com/BungPeerapat/API_Text_Display_For_Download.git"
set "dir_name=API_Text_Display_For_Download"

rem Check if the directory exists
if not exist "%dir_name%" (
    echo Cloning the repository...
    git clone %repo_url%
) else (
    echo Repository already cloned. Checking for updates...
    cd %dir_name%
    git fetch origin
    echo Fetch completed.
)

endlocal
pause
