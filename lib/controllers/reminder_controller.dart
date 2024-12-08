import 'package:get/get.dart';
import '../models/reminder.dart';

class ReminderController extends GetxController {
  var reminders = <Reminder>[].obs;

  void addReminder(Reminder reminder) {
    reminders.add(reminder);
  }

  void updateReminder(int index, Reminder reminder) {
    reminders[index] = reminder;
  }

  void deleteReminder(int index) {
    reminders.removeAt(index);
  }
}