import 'package:get/get.dart';
import 'package:todo_list_application/core/routes/app_routes.dart';

final class AppPages {
  const AppPages._();

  static final String initialLocation = AppRoutes.boardScreen.name;
  static final List<GetPage> pages = [
    AppRoutes.boardScreen,
  ];
}
