import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:lottie/lottie.dart';
import 'package:youtube_clone/pages/search.dart';
import 'package:youtube_clone/pages/shorts.dart';

import '../util/ads.dart';
import '../util/bottom_nav.dart';
import '../util/short_list.dart';
import '../util/top_suggestion.dart';
import '../util/videos.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Row(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const BottomNavItems(
                name: "Home",
                icon: Icons.home_filled,
              ),
              const BottomNavItems(
                PageLink: ShortsPage(),
                name: "Shorts",
                icon: Icons.video_library_outlined,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              Badge(
                padding: const EdgeInsets.all(4),
                animationType: BadgeAnimationType.slide,
                badgeContent: const Text(
                  "7",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                // ignore: prefer_const_constructors
                child: BottomNavItems(
                  name: "Subs",
                  icon: Icons.subscriptions_outlined,
                ),
              ),
              const BottomNavItems(
                name: "Library",
                icon: Icons.video_library_outlined,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        shadowColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  "lib/img/yt-logo.png",
                  // height: 40,
                  width: 100,
                ),
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.cast,
                  size: 25,
                ),
                const SizedBox(width: 25),
                Badge(
                  padding: const EdgeInsets.all(3),
                  badgeContent: const Text(
                    "9+",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  child: const Icon(
                    Icons.notifications_outlined,
                    size: 25,
                  ),
                ),
                const SizedBox(width: 25),
                IconButton(
                  style: IconButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const SearchPage();
                      }),
                    );
                  },
                  icon: const Icon(
                    Icons.search,
                    size: 28,
                  ),
                ),
                const SizedBox(width: 25),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Main body
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const SizedBox(width: 10),
                        Container(
                          padding: const EdgeInsets.all(0),
                          height: 30,
                          width: 50,
                          // width: 30,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 24, 24, 24),
                            borderRadius: BorderRadius.circular(1),
                          ),
                          child: const Icon(
                            Icons.explore_outlined,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 1,
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          padding: const EdgeInsets.all(10),
                          height: 30,
                          // width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Text(
                            "All",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const TopSugg(
                          suggName: "Coding",
                        ),
                        const TopSugg(
                          suggName: "Flutter",
                        ),
                        const TopSugg(
                          suggName: "Gaming",
                        ),
                        const TopSugg(
                          suggName: "Manga",
                        ),
                        const TopSugg(
                          suggName: "One Piece",
                        ),
                        const TopSugg(
                          suggName: "Manga",
                        ),
                        const TopSugg(
                          suggName: "Anime",
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 9, left: 12, right: 12, bottom: 9),
                          child: const Text(
                            "See more",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            // Suggestion Ends here

            // ads start here
            const MyAds(),
            // ads end here
            const SizedBox(height: 5),

            // videos section
            const VidSec(
              theColor: Colors.white,
              vidName: "Call of duty modern warfare 2",
              vidDetails: "Bommerangers . 200k views . 2 weeks ago",
              vidLen: "9:30",
              vidBg: "lib/img/cod2.jpg",
              profileImg: "lib/img/boom.webp",
            ),

            // "Shorts For youtube clone"

            Container(
              // height: 410,
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    // 1st Child
                    Row(
                      children: [
                        Image.asset(
                          "lib/img/shorts-logo.png",
                          width: 80,
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),

                    // Second Child
                    SizedBox(
                      width: 410,
                      height: 280,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          MyShorts(
                            shortsDecs:
                                "When luffy says he's gonna become the pirate king and people laugh, not anymore",
                            shortViews: "5.8M Views",
                            shortBg: "lib/img/luffy-bg.png",
                          ),
                          MyShorts(
                            shortsDecs:
                                "See the 13 yr old flutter developer, she design's cross platform mob apps like a pro",
                            shortViews: "520K views",
                            shortBg: "lib/img/boy.webp",
                          ),
                          MyShorts(
                            shortsDecs:
                                "..Look at this Nigerian dancer, there's hardly much skill around to compete with this guy",
                            shortViews: "900K views",
                            shortBg: "lib/img/nig-kid.jpg",
                          ),
                          MyShorts(
                            shortsDecs:
                                "See one of the fastest dogs alive, blazing speed especially the way they jump",
                            shortViews: "5.8M Views",
                            shortBg: "lib/img/dog.webp",
                          ),
                          MyShorts(
                            shortsDecs:
                                "VIOLENCE AT MAX\n these guys are so damn crazy\n WARZONE..",
                            shortViews: "520K views",
                            shortBg: "lib/img/warzone-rebirth.jpg",
                          ),
                          MyShorts(
                            shortsDecs:
                                "Best javascript languages to learn in 2023.. see how they progress in daily work",
                            shortViews: "900K views",
                            shortBg: "lib/img/React-icon.png",
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            // Next yt Video
            const VidSec(
              theColor: Colors.white,
              vidName: "Adding google maps to your flutter app",
              vidDetails: "TheFlutterKing . 600k views . 1 hour ago",
              vidLen: "20:14",
              vidBg: "lib/img/maps-page.jpg",
              profileImg: "lib/img/FvsD.webp",
            ),

            const SizedBox(height: 10),

            const SpinKitCircle(
              color: Colors.blue,
              size: 40,
            ),

            // SizedBox(
            //   width: 120,
            //   height: 120,
            //   child: Lottie.network(
            //       "https://assets8.lottiefiles.com/packages/lf20_ht6o1bdu.json"),
            // )
            // This is the ending of the super main Column
          ],
        ),
      ),
    );
  }
}

// link pages
// Navigator.of(context).push(
//                     MaterialPageRoute(builder: (BuildContext context) {
//                       return const SettingsPage();
//                     }),
//                   );
