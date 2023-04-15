import 'package:flutter/material.dart';

class ShortsPage extends StatefulWidget {
  const ShortsPage({super.key});

  @override
  State<ShortsPage> createState() => _ShortsPageState();
}

class _ShortsPageState extends State<ShortsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            // color: Colors.black,
            image: DecorationImage(
              image: AssetImage("lib/img/m1.webp"),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 22, right: 22, top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      child: Text(
                        "Shorts",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),

                // Second under the children

                const SizedBox(height: 40),
                Container(
                  width: 145,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.subscriptions_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Subscriptions",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                //  To the Bottom aspect of the page
                const SizedBox(height: 320),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 185),
                        Container(
                          width: 145,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.heart_broken,
                                color: Colors.white,
                                size: 14,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Buy Super Thanks",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 17),
                        const Text(
                          "4 must have accessories for your M1\nMacbook pro #shorts",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 235,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                margin: const EdgeInsets.only(right: 9),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              const Text(
                                "Renz Sadiwa",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        Gestures(
                          gesIcon: Icons.thumb_up,
                          counts: '340',
                        ),
                        Gestures(
                          gesIcon: Icons.thumb_down,
                          counts: 'Dislike',
                        ),
                        Gestures(
                          gesIcon: Icons.comment,
                          counts: '5k',
                        ),
                        Gestures(
                          gesIcon: Icons.share,
                          counts: 'Share',
                        ),
                        Gestures(
                          gesIcon: Icons.more_horiz_rounded,
                          counts: 'More',
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Gestures extends StatelessWidget {
  final gesIcon;
  final String counts;
  const Gestures({
    super.key,
    this.gesIcon,
    required this.counts,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          children: [
            Icon(
              gesIcon,
              color: Colors.white,
              size: 32,
            ),
            Text(
              counts,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ],
    );
  }
}
