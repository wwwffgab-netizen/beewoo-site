@echo off
echo === 推送代码到 GitHub ===

cd /d e:\c\beeWoo-site

:: 设置 remote（如果还没设的话）
git remote add origin https://github.com/wwwffgab-netizen/beewoo-site.git 2>nul

:: 提交最新改动
git add -A
git commit -m "更新：清理敏感文件，更新 gitignore"

:: 推送
git push -u origin main

if %errorlevel% equ 0 (
  echo.
  echo === 推送成功 ===
  echo 仓库: https://github.com/wwwffgab-netizen/beewoo-site
  echo.
  echo 现在去浏览器开启 Pages：
  echo 仓库页面 → Settings → Pages → Source: Deploy from a branch
  echo Branch: main → Save
  echo 网站地址: https://wwwffgab-netizen.github.io/beewoo-site/
) else (
  echo.
  echo 推送失败。需要输入 GitHub 用户名和密码。
  echo 用户名: wwwffgab-netizen
  echo 密码: 粘贴你的 token
)
pause
