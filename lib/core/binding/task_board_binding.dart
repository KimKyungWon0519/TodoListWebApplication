import 'package:get/get.dart';
import 'package:todo_list_application/app/domain/task_board/controller/task_controller.dart';

class TaskBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TaskController>(() => TaskController());
  }
}
