import 'package:get/get.dart';
import 'package:todo_list_application/app/domain/task_board/view/board_screen.dart';

final class AppRoutes {
  const AppRoutes._();

  static final GetPage boardScreen = GetPage(
    name: '/',
    page: () => BoardScreen(),
  );
}
