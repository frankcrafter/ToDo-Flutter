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
            backgroundColor: Colors.grey[200],
            title: Text(
              "Update Task",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            content: Column(
              children: [
                SizedBox(
                  width: 270,
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: "Write new task",
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      contentPadding: EdgeInsetsGeometry.fromLTRB(
                        20,
                        15,
                        20,
                        15,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.deepPurple[200]!,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.deepPurple[400]!,
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
                      ),
                    ),
                    SizedBox(
                      width: 120,
                      child: MyButton(
                        onPressed: onCancel,
                        btnName: "Cancel",
                        iconType: null,
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
