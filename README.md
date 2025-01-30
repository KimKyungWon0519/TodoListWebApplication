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
pub.dev에 올려져 있는 kanban_board는 callback이 동작하지 않는 문제와 UI에 대한 편집을 자유롭게 수정을 할 수 없습니다. 기존 kanban_board를 개인 Github에 Fork 후 callback이 동작하지 않는 문제 해결 및 UI를 자유롭게 수정하여 사용했습니다.

### Mapper를 사용한 이유 
TaskBoard.Task/TaskBoard.TaskType과 DetailTask.Task/DetailTask.TaskType은 현재 서로 동일한 기능을 하는 모델입니다. 공용 모델로 생성하여 만들 경우 각 도메일 별 기능이 더 추가될 때 공용 모델의 역할이 커질 수 있어 TaskBoard의 모델과 DetailTask의 모델을 서로 분리 후 Mapper를 통한 데이터 전달로 사용했습니다.
