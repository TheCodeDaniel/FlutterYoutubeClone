import 'package:flutter/material.dart';

class TopSugg extends StatelessWidget {
  final String suggName;
  const TopSugg({
    super.key,
    required this.suggName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10),
        Container(
          padding:
              const EdgeInsets.only(top: 9, left: 12, right: 12, bottom: 9),
          height: 50,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 36, 36, 36),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white, width: 0.20),
          ),
          child: Text(
            suggName,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
