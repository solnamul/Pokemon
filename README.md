# 🎄 포켓몬 연락처 (Pokemon Contacts)

Swift로 구현한 간단한 포켓몬 연락처 앱입니다.

네트워크 통신을 이용해서 서버에서 랜덤 포켓몬 이미지를 불러오고, 연락처를 저장하는 앱.

## 요구 사항

Lv.1 `UILabel`, `UITableView`, `UIButton` 을 이용해 기본적인 UI 를 구현.

Lv.2 `UINavigationController.push` 을 이용해 연락처 추가 화면을 편집하고 추가 구현.

Lv.3 `UINavigationItem` , `UINavigationBar` 를 통해 상단 네이게이션 바 영역 구현

Lv.4 랜덤 이미지 생성 구현 및 포켓몬 API 연결

Lv.5 `UINavigationController.popViewController` 를 이용해 적용 버튼을 누르면 연락처 데이터(이름/전화번호/프로필이미지)를 디스크에 실제 저장하도록 구현

## 앱 미리보기

![image](https://github.com/user-attachments/assets/7d011120-ace7-4f9b-bef5-cd5e347ce65b)

![image](https://github.com/user-attachments/assets/18275473-13ab-41db-9f51-3473f277d328)

## 커밋컨벤션

- feat : Screen, Component, 기능 추가 및 수정 (큰 변경사항 위주) / 이미지 추가
- update : 간단한 변경 사항
- refactor : 코드 정리 및 단순화 / 간단한 스타일 수정 / 폴더 및 파일 이름이나 위치 변경 / 주석 및 콘솔 관리 / fontello 변경
- fix : 버그 수정
- delete : 폴더, 파일 삭제
- docs : 문서 추가, 수정, 삭제 (ex. README.md)
- test : 테스트 코드 작성, 수정, 삭제
- chore : 패키지/라이브러리 추가, 버전 변경, 삭제
