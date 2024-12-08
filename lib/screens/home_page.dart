import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/reminder_controller.dart';
import '../widgets/reminder_tile.dart';

class HomePage extends StatelessWidget {
  final ReminderController reminderController = Get.put(ReminderController());

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lembretes'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Theme.of(context)
                .colorScheme
                .primaryContainer
                .withOpacity(0.2)),
        child: Obx(() {
          return ListView.builder(
            itemCount: reminderController.reminders.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 4,
                  child: ReminderTile(
                      reminder: reminderController.reminders[index],
                      index: index),
                ),
              );
            },
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('/reminder');
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 0,
        child: Icon(Icons.add_rounded),
      ),
    );
  }
}
