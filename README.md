# 프로젝트 설명

## 프로젝트 정보
- Flutter version : 3.27.0
- Packages
  - kanban_board : 보드 UI 관련 
  - intl : 날짜 관리 
  - GetX : 상태관리/라우터/다이얼로그 표시 관리

## 프로젝트 구조
### TaskBoard
보드 관련 기능 담당합니다.

### DetailTask
Task를 새로 생성하거나, 기존 Task를 편집하는 기능 담당합니다.


## 이 외 정보
### kanban_board
pub.dev에 올려져 있는 kanban_board는 callback이 동작하지 않는 문제와 UI에 대한 편집을 자유롭게 수정을 할 수 없음. 기존 kanban_board를 개인 Github에 Fork 후 callback이 동작하지 않는 문제 해결 및 UI를 자유롭게 수정하여 사용함

### Mapper를 사용한 이유 
TaskBoard.Task/TaskBoard.TaskType과 DetailTask.Task/DetailTask.TaskType은 현재 서로 동일한 기능을 하는 모델임. 하지만 