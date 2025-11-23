import 'package:flutter/material.dart';
import 'package:todo_app/utilities/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  final VoidCallback onEdit;
  final VoidCallback onCancel;
  const DialogBox({
    super.key,
    required this.onEdit,
    required this.onCancel,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: Theme.of(context).colorScheme.surface,
            title: Text(
              "Update Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.w400,
              ),
            ),
            content: Column(
              children: [
                SizedBox(
                  width: 270,
                  child: TextField(
                    controller: controller,
                    cursorColor: Theme.of(context).colorScheme.secondary,
                    cursorHeight: 20,
                    cursorWidth: 2,
                    decoration: InputDecoration(
                      hintText: "Enter new task",
                      hintStyle: TextStyle(
                        color: Theme.of(
                          context,
                        ).colorScheme.secondary.withAlpha(180),
                      ),
                      contentPadding: EdgeInsetsGeometry.fromLTRB(
                        20,
                        15,
                        20,
                        15,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          width: 1,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          width: 1,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 120,
                      child: MyButton(
                        onPressed: onEdit,
                        btnName: "Save",
                        iconType: null,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: 120,
                      child: MyButton(
                        onPressed: onCancel,
                        btnName: "Cancel",
                        iconType: null,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
