#!/bin/bash
# ClipCycle 설치·업데이트 스크립트
# 사용: curl -fsSL https://raw.githubusercontent.com/elinlim22/ClipCycle-release/main/install.sh | bash
set -euo pipefail

URL="https://github.com/elinlim22/ClipCycle-release/releases/latest/download/ClipCycle.zip"
APP="/Applications/ClipCycle.app"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

echo "▶ 최신 버전 받는 중..."
curl -fsSL -o "$TMP/ClipCycle.zip" "$URL"
ditto -x -k "$TMP/ClipCycle.zip" "$TMP"

echo "▶ 기존 앱 종료 및 교체..."
pkill -x ClipCycle 2>/dev/null || true
sleep 0.5
rm -rf "$APP"
mv "$TMP/ClipCycle/ClipCycle.app" "$APP"

# 공증을 받지 않은 앱이라, 이 맥에서 실행할 수 있도록 다운로드 표시를 지우고 다시 서명함
xattr -cr "$APP"
codesign --force --deep --sign - "$APP"

VERSION=$(defaults read "$APP/Contents/Info.plist" CFBundleShortVersionString 2>/dev/null || echo "?")
open "$APP"
echo "✅ ClipCycle $VERSION 설치 완료"
echo
echo "처음 설치했거나 업데이트했다면 손쉬운 사용 권한을 켜 주세요."
echo "  시스템 설정 → 개인정보 보호 및 보안 → 손쉬운 사용"
echo "  (업데이트한 경우: 목록의 ClipCycle 을 - 로 지운 뒤 다시 켜기)"
