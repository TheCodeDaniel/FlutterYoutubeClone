import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../util/search_suggs.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 8, right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                    const SizedBox(width: 9),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 10, top: 14, bottom: 4),
                      width: 292,
                      height: 33,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 58, 55, 55),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Search Youtube',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            letterSpacing: 0.5,
                          ),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 58, 55, 55),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              // Search bar top ends here

              // Search Suggestions begins here
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ListView(
                  children: const [
                    SearchHis(
                      historyName: "Call of duty warzone mobile gameplay",
                    ),
                    SearchHis(
                      historyName: "Flutter Vs React Native",
                    ),
                    SearchHis(
                      historyName: "Luffy top ten showcase of power",
                    ),
                    SearchHis(
                      historyName: "Yamamoto loses his arm to Yhwach",
                    ),
                    SearchHis(
                      historyName:
                          "Why do people watch football even though its rubbish",
                    ),
                    SearchHis(
                      historyName:
                          "installing ssl certificates on your website WHOGOHOST",
                    ),
                    SearchHis(
                      historyName: "Connect flutter to backend with php",
                    ),
                    SearchHis(
                      historyName: "gtx 1650 review in 2022",
                    ),
                    SearchHis(
                      historyName: "dell xps 15, a 14 core cpu",
                    ),
                    SearchHis(
                      historyName: "RTX 3050 for mobile developers",
                    ),
                    SearchHis(
                      historyName:
                          "Why you should buy a mac instead of a gaming pc as a developer",
                    ),
                    SearchHis(
                      historyName: "Youtube clone with flutter",
                    ),
                    SearchHis(
                      historyName: "#TheCodeDaniel",
                    ),
                    SearchHis(
                      historyName: "Dart frog for backend",
                    ),
                    SearchHis(
                      historyName: "Dart frog vs express js",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
