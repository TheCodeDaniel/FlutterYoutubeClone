import 'package:flutter/material.dart';

class MyAds extends StatelessWidget {
  const MyAds({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          // content column
          children: [
            Container(
              height: 225,
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage("lib/img/opay-bg.jpeg"),
                  fit: BoxFit.contain,
                ),
              ),
              // child: ,
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            // ads content row
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage("lib/img/opay-logo.ico"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Install Opay now | Opay",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 20,
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    const Text(
                      "Earn up to 15% annual interest on your savings",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                      ),
                    ),
                    const SizedBox(height: 0),
                    Row(
                      children: const [
                        Text(
                          "Ad .",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "4.4",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                          size: 18,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "FREE",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
            // Ads content row
          ),
        ),
        // Install Button
        Padding(
          padding: const EdgeInsets.only(left: 22, right: 22),
          child: TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            onPressed: () {
              debugPrint("install ad button clicked");
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    height: 500,
                    child: Column(
                      children: [
                        // Header of ad POP up
                        Padding(
                          padding: const EdgeInsets.only(left: 13, right: 13),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Google play",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.close,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 0.5,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  );
                },
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 56, 91, 122),
                borderRadius: BorderRadius.circular(19),
              ),
              child: Padding(
                padding: const EdgeInsets.all(7.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Install",
                      style: TextStyle(
                        color: (Colors.white),
                      ),
                    ),
                    Icon(
                      Icons.download_rounded,
                      color: Colors.white,
                      size: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
