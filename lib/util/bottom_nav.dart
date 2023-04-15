import 'package:flutter/material.dart';

class BottomNavItems extends StatelessWidget {
  final String name;
  // ignore: prefer_typing_uninitialized_variables
  final icon;
  final PageLink;
  const BottomNavItems({
    super.key,
    required this.name,
    required this.icon,
    this.PageLink,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        // backgroundColor: Colors.white,
        padding: EdgeInsets.zero,
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) {
            return PageLink;
          }),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 25,
          ),
          const SizedBox(height: 3),
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 9,
            ),
          ),
        ],
      ),
    );
  }
}
