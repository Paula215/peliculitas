import 'package:flutter/material.dart';

class ButtonPlay extends StatelessWidget {
  final void Function()? onTap;
  const ButtonPlay({this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Icon(
        Icons.play_arrow,
        size: 40,
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        fixedSize: const Size(70, 70),
        backgroundColor: Colors.deepOrange,
      ),
    );
  }
}
