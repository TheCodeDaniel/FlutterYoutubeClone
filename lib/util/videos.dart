import 'package:flutter/material.dart';

class VidSec extends StatelessWidget {
  final String vidName;
  final String vidDetails;
  final String vidLen;
  // ignore: prefer_typing_uninitialized_variables
  final vidBg;
  // ignore: prefer_typing_uninitialized_variables
  final theColor;
  final profileImg;

  const VidSec({
    super.key,
    required this.vidName,
    required this.vidDetails,
    required this.vidLen,
    required this.theColor,
    required this.vidBg,
    required this.profileImg,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 3,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 226, 226, 226),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
          ),
          onPressed: () {
            debugPrint(" \"$vidName\" has just been clicked");
          },
          child: Container(
            height: 225,
            decoration: BoxDecoration(
                color: theColor,
                image: DecorationImage(
                  image: AssetImage(vidBg),
                  fit: BoxFit.cover,
                )),
            child: Padding(
              padding: const EdgeInsets.only(right: 14.0, bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 3, right: 3),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Text(
                      vidLen,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            // ads content row
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(profileImg),
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          vidName,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 20,
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Text(
                      vidDetails,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              )
            ],
            // Ads content row
          ),
        ),
      ],
    );
  }
}
