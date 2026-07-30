# 넥사크로 스터디 노트

넥사크로(Nexacro) 전문가 양성 과정을 들으며 배운 내용을 정리한 **개인 학습 노트 웹페이지**입니다.

**배포 주소 → https://iamcode04.github.io/Nexacro-project/**

브라우저만 있으면 어느 기기에서든 링크로 바로 볼 수 있습니다.

---

## 이 프로젝트는 무엇인가

넥사크로는 (주)투비소프트가 만든 국산 RIA(Rich Internet Application) 개발 플랫폼으로, 공공기관·금융권·대기업 SI 프로젝트의 화면 개발 표준으로 널리 쓰입니다.

이 저장소는 그 과정에서 배운 **개념 · 컴포넌트 사용법 · 예제 코드 · 실습 스크린샷**을 한 페이지에 모아 복습할 수 있게 만든 것입니다.

여기에 더해, 배운 내용으로 직접 만든 **실습 프로젝트의 원본 소스**(화면 · 서버 · 테이블)를 `프로젝트 파일/` 에 함께 올려 두었습니다.

- 빌드 도구 없이 **HTML 파일 하나**로 동작합니다 (프레임워크·번들러 없음)
- GitHub Pages가 저장소를 그대로 서빙합니다
- 검색창에 키워드를 넣으면 해당 항목만 필터링되고 본문이 하이라이트됩니다

---

## 저장소 구조

```
Nexacro-project/
├── index.html                 ← 페이지 전체 (HTML + CSS + JS 한 파일, 약 3,950줄 / 364KB)
├── README.md                  ← 이 문서
├── .gitignore                 ← .claude/ 제외
│
├── images/                    ← 본문에 들어가는 실습 스크린샷 102장 (약 6.7MB)
│   ├── main-screen.png        · 넥사크로 스튜디오 화면
│   ├── grid-*.png             · Grid 관련
│   ├── mobile-*.png           · 모바일 개발 관련 (16장)
│   ├── xpush-*.png            · X-PUSH 관련 (18장)
│   └── ...                    (자세한 규칙은 아래 "이미지 이름 규칙" 참고)
│
├── 프로젝트 동영상/
│   └── 넥사크로 프로젝트 동영상.mp4   ← 실습 프로젝트 실행 녹화본 (5분 53초 / 약 18MB)
│
└── 프로젝트 파일/              ← 실습 프로젝트 원본 소스 (아래 "프로젝트 파일" 참고)
    ├── 01_화면_xfdl/          · 화면 정의 16개 + 프로젝트 설정 4개
    ├── 02_서버_자바/          · 서버 컨트롤러 1개
    └── 03_테이블_sql/         · 테이블 DDL 5개
```

> `.claude/` 폴더는 로컬 개발 설정이라 `.gitignore`로 제외되어 있습니다.

---

## index.html 안쪽 구조

페이지는 **상단 탭 2개**로 나뉘고, 두 번째 탭 안에 다시 **서브탭 3개**가 있습니다.

```
넥사크로 소개 (탭 1)
 └ 넥사크로가 무엇인지, 왜 배우는지, 특징, 학습 로드맵 6단계

넥사크로 툴 (탭 2)
 ├ 컴포넌트 정리 (서브탭)   → 전체 구조를 한눈에 보는 요약 4개
 ├ 자세한 사용법 (서브탭)   → 주제별 아코디언 40개 + 검색
 └ 프로젝트 동영상 (서브탭) → 실습 프로젝트 실행 영상
```

### 컴포넌트 정리 — 요약 아코디언 4개

| 아코디언 | 내용 |
|---|---|
| 넥사크로 툴 정리 | 40개 항목을 일곱 갈래로 묶은 **마인드맵** (SVG 곡선은 JS로 그림) |
| 서버 연동 방식 | 화면 → Controller → Service/Mapper → DB → 화면 응답 흐름도 |
| SQL 작성 방식 | Service가 Mapper를 호출해 MyBatis가 SQL을 실행하기까지의 흐름도 |
| X-PUSH 메시지 흐름 | 토픽 등록 → Provider 공급 → 매칭 → 수신 → 수신 확인 흐름도 |

### 자세한 사용법 — 아코디언 40개

아이콘 색으로 갈래를 구분합니다. **DOM 순서 = 아래 표 순서**입니다.

| 색 | 갈래 | 개수 | 다루는 내용 |
|---|---|---|---|
| 🟢 초록 | 컴포넌트 · 화면 | 17 | 화면/스크립트 기초, UI 컴포넌트 카탈로그, 포지션, Dataset, Grid, Calendar, Combo, Edit·MaskEdit·TextArea, Theme·XCSS, Property, Div, Popup, Tab, Frame 구조, 기타 고급 기능, File Upload/Download, Web |
| 🔵 파랑 | 서버 연동 | 3 | transaction()과 서버 통신(파라미터·Dataset 송수신), 서버 측 처리 구조(Controller·Service·Mapper), 실전 연동 패턴 |
| 🔴 빨강 | SQL | 1 | MyBatis Mapper와 SQL 작성(파라미터 바인딩 · 조회/저장 · 페이징 · 공통코드) |
| 🟡 노랑 | 모바일 · X-PUSH · 배포 | 15 | 모바일 개발 방법론, 반응형 vs 적응형, MLM, Device API(카메라), App Builder 패킹, ListView·Step, X-PUSH 개요·포트·TOPIC·실시간/신뢰성·FCM/APNS·Provider API·설치와 운영, WRE 배포, NRE 배포 |
| ⚪ 회색 | 기타 · 프로젝트 | 4 | 프로젝트/제품 개요, 외부 리소스 가져오기, 실행 환경과 배포, 프로젝트 설계 참고 |

### 검색

각 아코디언에는 `data-keywords` 속성이 붙어 있고, 검색어는 이 키워드와 본문 텍스트 양쪽에서 찾습니다.
**새 아코디언을 추가할 때는 `data-keywords`를 반드시 채워야** 검색에 걸립니다.

---

## 이미지 이름 규칙

`images/` 안의 파일은 전부 **영문 소문자 + 하이픈**으로 되어 있습니다(경로 인코딩 문제를 피하기 위함).
주제 접두어로 어느 아코디언에 쓰이는지 알 수 있습니다.

| 접두어 | 개수 | 쓰이는 곳 |
|---|---|---|
| `xpush-` | 18 | X-PUSH 개요·작동방식·TOPIC·전송·알림·Provider API·클라이언트 실습 |
| `mobile-` | 16 | 모바일 개발 방법론, MLM, Device API, ListView |
| `deploy-` | 14 | 패킹·배포 옵션, Generate/Packing, CacheLevel·CheckVersion, NRE 배포 |
| `server1~9` | 9 | 서버 연동(파랑) 아코디언 |
| `grid-` | 7 | Grid |
| `icon-`, `toolbar-` | 8 | UI 컴포넌트 카탈로그 |
| `modal-`, `modaless-` | 6 | Popup |
| `div-`, `position-` | 6 | Div, 포지션 컴포넌트 |
| `sql1~2` | 2 | MyBatis Mapper와 SQL 작성(빨강) 아코디언 |
| 그 외 | | `main-screen`, `work-screen`, `dataset-*`, `combo-*`, `calendar-*`, `dynamic-*`, `event-*`, `file-*`, `frame`, `web*` |

---

## 프로젝트 파일

`프로젝트 파일/` 은 학습 노트 웹페이지와는 별개로, 과정 중에 직접 만든 **넥사크로 실습 프로젝트의 원본 소스**입니다.
메인 화면 `sdiMain.xfdl` 에서 출발해 팝업·서비스 호출을 4단계까지 따라가며 **실제로 연결된 파일만** 추려 담았습니다.

### 01_화면_xfdl — 화면 정의 (xfdl 16개 + 설정 4개)

`sdiMain.xfdl` → 로그인/회원가입 → 업무화면/라운지 → 게시글·댓글·도서 순으로 이어집니다.

| 폴더 | 파일 | 역할 |
|---|---|---|
| `FrameBase/` | `sdiMain.xfdl` | **진입 화면.** AI 채팅창, 회사/고객지원 바로가기, 업무·라운지 이동 |
| | `sdiOnLogin.xfdl` | 업무·라운지 진입 시 뜨는 로그인 팝업 |
| | `User_bookSub.xfdl` | 도서 목록 서브 화면 |
| `User/` | `User_Login.xfdl` | 첫 진입 인트로 팝업 |
| | `User_SignUp.xfdl` | 회원가입 (아이디 중복확인, 프로필 업로드) |
| | `User_WorkPage.xfdl` | 업무 화면 (회원 목록, 공지 목록) |
| | `User_NoticeWrite.xfdl` / `User_seeNotice.xfdl` | 공지 작성 / 상세 |
| | `User_LoungeNick.xfdl` | 라운지 첫 이용 시 익명 닉네임 설정 |
| | `User_lounge.xfdl` | 라운지 메인 (게시글 목록) |
| | `User_LoungePost.xfdl` | 게시글 작성 |
| | `User_lounge_back.xfdl` | 게시글 상세 · 댓글 · 좋아요 |
| | `User_launge_mypage.xfdl` | 내가 쓴 글 / 댓글 |
| | `User_book.xfdl` / `User_book_info.xfdl` | 도서 목록 / 상세 |
| `Cmm/` | `CmmPaging.xfdl` | 공통 페이징 컴포넌트 |

함께 담은 설정 파일 4개 — `0708.xprj`(프로젝트), `Application_Desktop_SDI.xadl`(진입점, `sdiMain.xfdl` 지정), `typedefinition.xml`(서비스 prefix), `environment.xml`(테마 `theme_edu`)

### 02_서버_자바 — 서버 (자바 1개)

| 파일 | 담당 |
|---|---|
| `EduFileController.java` | `uploadFile.do` — 회원가입 프로필 이미지 업로드. 파일시스템만 사용 (DB 미접근) |

> Spring 설정 XML은 DB 접속정보가 들어 있어 제외했습니다.

### 03_테이블_sql — 테이블 (5개)

`sdiMain_tables.sql` — `mysqldump --no-data` 로 뽑은 **구조(DDL)만**, 실제 데이터는 포함하지 않습니다.

| 테이블 | 주요 컬럼 | 쓰이는 화면 |
|---|---|---|
| `tb_user` | `USER_ID`(PK), `PASS`, `USER_NAME`, `EMAIL`, `PROFILE`, `SEC_NAME` | 로그인, 회원가입, 닉네임, 업무화면 |
| `tb_notice` | `NOTICE_ID`(PK), `USER_ID`, `TITLE`, `CONTENT` | 공지 목록/작성/상세 |
| `tb_lounge_post` | `POST_ID`(PK), `BOARD_TYPE`, `SEC_NAME`, `LIKE_CNT`, `VIEW_CNT` | 라운지 목록/작성/상세 |
| `tb_lounge_comment` | `COMMENT_ID`(PK), `POST_ID`, `SEC_NAME`, `CONTENT` | 댓글 |
| `tb_book` | `ISBN`, `TITLE`, `AUTHORS`, `PRICE`, `THUMBNAIL` | 도서 목록/상세 |

`tb_user.SEC_NAME` 은 라운지에서 쓰는 익명 닉네임으로, 값이 없으면 `User_LoungeNick.xfdl` 팝업이 먼저 뜹니다.
