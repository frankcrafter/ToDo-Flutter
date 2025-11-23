import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String btnName;
  final Icon? iconType;
  const MyButton({
    super.key,
    required this.onPressed,
    required this.btnName,
    required this.iconType,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: iconType,
      label: Text(btnName),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsetsGeometry.fromLTRB(25, 15, 25, 15),
        textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        elevation: 5,
        backgroundColor: Colors.deepPurple[400],
        foregroundColor: Colors.white,
      ),
      onPressed: onPressed,
    );
  }
}
