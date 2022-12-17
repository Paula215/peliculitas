import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final void Function()? onTap;
  final IconData icon;
  const Buttons({this.onTap, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Icon(
        icon,
        size: 35,
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        fixedSize: Size(60, 60),
        backgroundColor: Color(0xFF292B37),
      ),
    );
  }
}
