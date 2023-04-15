import 'package:flutter/material.dart';

class MyShorts extends StatelessWidget {
  final String shortsDecs;
  final String shortViews;
  final shortBg;
  const MyShorts({
    super.key,
    required this.shortsDecs,
    required this.shortViews,
    required this.shortBg,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 270,
          width: 160,
          decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(2),
              image: DecorationImage(
                image: AssetImage(shortBg),
                fit: BoxFit.cover,
              )),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(height: 133),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shortsDecs,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 9),
                    Text(
                      shortViews,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(width: 12),
        const SizedBox(height: 10),
      ],
    );
  }
}
