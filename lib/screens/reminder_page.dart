import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/reminder_controller.dart';
import '../models/reminder.dart';

class ReminderPage extends StatelessWidget {
  final ReminderController reminderController = Get.find();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final int? index;

  ReminderPage({super.key, this.index}) {
    if (index != null) {
      final reminder = reminderController.reminders[index!];
      titleController.text = reminder.title;
      descriptionController.text = reminder.description;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(index == null ? 'Novo Lembrete' : 'Editar Lembrete'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: Container(
        color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.1),
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Título',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 8),
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                hintText: 'Digite o seu título',
                hintStyle: Theme.of(context).textTheme.bodyMedium,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.deepPurple, width: 2),
                ),
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Descrição',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 8),
            TextField(
              controller: descriptionController,
              minLines: 1,
              maxLines: null,
              decoration: InputDecoration(
                hintText: 'Digite uma descrição (opcional)',
                hintStyle: Theme.of(context).textTheme.bodyMedium,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.deepPurple, width: 2),
                ),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[850],
                  ),
                  child: Text('Cancelar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (titleController.text.isEmpty) {
                      Get.snackbar(
                        'Erro',
                        'O título não pode estar vazio',
                        snackPosition: SnackPosition.BOTTOM,
                      );
                    } else {
                      final reminder = Reminder(
                        title: titleController.text,
                        description: descriptionController.text,
                      );
                      if (index == null) {
                        reminderController.addReminder(reminder);
                      } else {
                        reminderController.updateReminder(index!, reminder);
                      }
                      Get.back();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                  child: Text('Salvar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
