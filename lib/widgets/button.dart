import 'package:flutter/material.dart';

class ButtonL extends StatelessWidget {
  final void Function()? onTap;
  final String label;
  const ButtonL({this.onTap, required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(label),
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          backgroundColor: Color.fromARGB(215, 89, 7, 197),
          fixedSize: Size(200, 40)),
    );
  }
}
