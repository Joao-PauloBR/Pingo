import 'package:get/get.dart';

import 'screens/home_page.dart';
import 'screens/reminder_page.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/', page: () => HomePage()),
    GetPage(name: '/reminder', page: () => ReminderPage()),
    GetPage(name: '/edit_reminder', page: () => ReminderPage()),
  ];
}
