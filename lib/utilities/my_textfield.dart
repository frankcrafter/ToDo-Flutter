import 'package:flutter/material.dart';
import 'package:todo_app/utilities/my_button.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final VoidCallback onPressed;
  const MyTextField({
    super.key,
    required this.controller,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: controller,
            cursorColor: Theme.of(context).colorScheme.secondary,
            cursorHeight: 20,
            cursorWidth: 2,
            decoration: InputDecoration(
              hintText: "What you doing today?",
              hintStyle: TextStyle(
                color: Theme.of(context).colorScheme.secondary.withAlpha(180),
              ),
              contentPadding: EdgeInsetsGeometry.fromLTRB(20, 15, 20, 15),
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
        const SizedBox(width: 20),
        MyButton(
          onPressed: onPressed,
          btnName: "Add",
          iconType: Icon(Icons.add),
          fontSize: 18,
        ),
      ],
    );
  }
}
