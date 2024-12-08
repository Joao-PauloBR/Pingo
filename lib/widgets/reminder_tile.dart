import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/reminder_controller.dart';
import '../models/reminder.dart';

class ReminderTile extends StatelessWidget {
  final Reminder reminder;
  final int index;

  const ReminderTile({super.key, required this.reminder, required this.index});

  @override
  Widget build(BuildContext context) {
    final ReminderController reminderController = Get.find();

    return Dismissible(
      key: Key(reminder.title),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        reminderController.deleteReminder(index);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('${reminder.title} deletado')),
        );
      },
      background: Container(
        color: Colors.red,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              reminder.title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(height: 8.0),
            Text(
              reminder.description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        onTap: () {
          // Implementar a edição do lembrete
        },
      ),
    );
  }
}