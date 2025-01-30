import 'package:get/get.dart';
import 'package:todo_list_application/app/domain/task_board/view/board_screen.dart';
import 'package:todo_list_application/core/binding/task_board_binding.dart';

final class AppRoutes {
  const AppRoutes._();

  static final GetPage boardScreen = GetPage(
    name: '/',
    page: () => BoardScreen(),
    binding: TaskBoardBinding(),
  );
}
