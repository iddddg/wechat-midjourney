@echo off
setlocal enabledelayedexpansion

if "%~1"=="" (
  echo version is required
  exit /b 1
)

set VERSION=%~1

docker build . -t wechat-midjourney:%VERSION%

docker tag wechat-midjourney:%VERSION% iddddg/wechat-midjourney:%VERSION%
docker push iddddg/wechat-midjourney:%VERSION%