<img src="icon.png" width="128" alt="ClipCycle 아이콘">

# ClipCycle

⌘⌥V 를 누르면 예전에 복사했던 내용 목록이 글을 쓰는 위치에 떠서, 골라서 붙여넣을 수 있게 해 주는 맥 메뉴바 앱입니다.
평소에는 ⌘C / ⌘V 를 그대로 쓰다가, 예전에 복사한 게 필요할 때만 꺼내 쓰면 됩니다.

## 다운로드

**[ClipCycle.zip 받기](https://github.com/elinlim22/ClipCycle-release/releases/latest/download/ClipCycle.zip)**

macOS 13 이상, Apple Silicon(M 칩)과 Intel 맥 모두에서 동작합니다.

## 설치 방법

1. 받은 zip 을 더블클릭해서 압축을 풀고, 안에 있는 `ClipCycle.app` 을 Finder 의 **응용 프로그램** 폴더로 옮깁니다.
2. 터미널을 열고(⌘ + Space → "터미널") 아래 한 줄을 붙여넣은 뒤 Enter 를 누릅니다. 처음 한 번만 하면 됩니다.

   ```bash
   xattr -cr /Applications/ClipCycle.app && codesign --force --deep --sign - /Applications/ClipCycle.app && open /Applications/ClipCycle.app
   ```

   이 앱은 Apple 의 공식 인증(공증)을 받지 않았기 때문에, 인터넷에서 받은 그대로는 맥이 실행을 막습니다. 이 명령어는 "다운로드한 파일" 표시를 지우고 이 맥에서 앱을 다시 서명해서 실행할 수 있게 만들어 줍니다. 이후로는 더블클릭으로 열립니다.
3. 앱이 처음 열리면 **시스템 설정 → 개인정보 보호 및 보안 → 손쉬운 사용** 에서 ClipCycle 을 켜 줍니다. 이 권한이 있어야 단축키를 감지하고 글 쓰는 위치에 목록을 띄울 수 있습니다. 켜고 나면 몇 초 안에 메뉴바 아이콘이 ⚠️ 에서 하트 클립 모양으로 바뀝니다.

## 사용법

| 키 | 동작 |
| --- | --- |
| ⌘⌥ 누른 채 V | 목록 열기, 한 번 더 누를 때마다 다음 항목 |
| ⌘⌥ 누른 채 C | 이전 항목 |
| ⌫ (delete) | 선택한 항목을 기록에서 삭제 |
| ⌘ 또는 ⌥ 떼기 | 선택한 항목 붙여넣기 |
| Esc | 취소 |

메뉴바의 하트 클립 아이콘을 누르면 단축키(⌘⌥V / ⌘⇧V), 최대 보관 개수, 기록 지우기, 로그인 시 자동 실행을 설정할 수 있습니다.

## 개인정보

복사한 내용은 이 맥 안(`~/Library/Application Support/ClipCycle`)에만 저장되고 어디로도 전송되지 않습니다. 비밀번호 관리자에서 복사한 내용처럼 "기록하지 말 것"으로 표시된 내용은 저장하지 않습니다.

---

개발자: hyeslim ([@elinlim22](https://github.com/elinlim22))
