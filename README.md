<img src="icon.png" width="128" alt="ClipCycle 아이콘">

# ClipCycle

⌘⌥V 를 누르면 예전에 복사했던 내용 목록이 글을 쓰는 위치에 떠서, 골라서 붙여넣을 수 있게 해 주는 맥 메뉴바 앱입니다.
글자뿐 아니라 사진(스크린샷 등)도 최근 20개까지 기록됩니다. 평소에는 ⌘C / ⌘V 를 그대로 쓰다가, 예전에 복사한 게 필요할 때만 꺼내 쓰면 됩니다.

## 다운로드

**[ClipCycle.zip 받기](https://github.com/elinlim22/ClipCycle-release/releases/latest/download/ClipCycle.zip)**

macOS 13 이상, Apple Silicon(M 칩)과 Intel 맥 모두에서 동작합니다.

## 설치 · 업데이트

터미널을 열고(⌘ + Space → "터미널") 아래 한 줄을 붙여넣은 뒤 Enter 를 누르세요. 처음 설치할 때도, 새 버전으로 업데이트할 때도 같은 명령어입니다.

```bash
curl -fsSL https://raw.githubusercontent.com/elinlim22/ClipCycle-release/main/install.sh | bash
```

이 명령어는 최신 버전을 받아서 응용 프로그램 폴더의 기존 앱을 바꾸고 실행까지 해 줍니다. 이 앱은 Apple 의 공식 인증(공증)을 받지 않아서 그냥 받으면 맥이 실행을 막는데, 스크립트가 이 맥에서 앱을 다시 서명해서 실행할 수 있게 만들어 줍니다. 무슨 일을 하는지는 [install.sh](install.sh) 에서 볼 수 있습니다.

설치가 끝나면 **시스템 설정 → 개인정보 보호 및 보안 → 손쉬운 사용** 에서 ClipCycle 을 켜 주세요. 이 권한이 있어야 단축키를 감지하고 글 쓰는 위치에 목록을 띄울 수 있습니다. 켜고 나면 몇 초 안에 메뉴바 아이콘이 ⚠️ 에서 하트 클립 모양으로 바뀝니다. 업데이트한 경우에는 맥이 새 앱으로 인식하므로, 목록의 ClipCycle 을 − 로 지운 뒤 다시 켜야 합니다.

<details>
<summary>터미널 없이 직접 설치하기</summary>

1. [ClipCycle.zip](https://github.com/elinlim22/ClipCycle-release/releases/latest/download/ClipCycle.zip) 을 받아 압축을 풀고, `ClipCycle.app` 을 응용 프로그램 폴더로 옮깁니다.
2. 앱을 열면 경고가 뜹니다. 시스템 설정 → 개인정보 보호 및 보안 아래쪽의 **"그래도 열기"** 를 누르세요.
3. "열 수 없습니다" 처럼 위 버튼이 없는 오류가 뜨면 결국 위의 터미널 명령어를 써야 합니다.

</details>

## 사용법

| 키 | 동작 |
| --- | --- |
| ⌘⌥ 누른 채 V | 목록 열기, 한 번 더 누를 때마다 다음 항목 |
| ⌘⌥ 누른 채 C | 이전 항목 |
| ⌫ (delete) | 선택한 항목을 기록에서 삭제 |
| ⌘ 또는 ⌥ 떼기 | 선택한 항목 붙여넣기 |
| Esc | 취소 |

메뉴바의 하트 클립 아이콘을 누르면 단축키(⌘⌥V / ⌘⇧V), 최대 보관 개수, 사진 최대 보관 개수, 기록 지우기, 로그인 시 자동 실행을 설정할 수 있습니다.

## 개인정보

복사한 내용은 이 맥 안(`~/Library/Application Support/ClipCycle`)에만 저장되고 어디로도 전송되지 않습니다. 비밀번호 관리자에서 복사한 내용처럼 "기록하지 말 것"으로 표시된 내용은 저장하지 않습니다.

---

개발자: hyeslim ([@elinlim22](https://github.com/elinlim22))
