import 'package:flutter/material.dart';

class TitleRow extends StatelessWidget {
  const TitleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: const Text(
          'Todo\'s',
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
    );
  }
}
