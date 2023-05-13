import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:umi_music_player/src/utils/theme.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UMI Music Player',
      theme: UAppTheme.baseTheme,
      home: const MyHomePage(title: 'UMI MUSIC PLAYER'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 56),
        child: Column(
          children: [
            const HeaderGreet(),
            Container(
              height: 24,
            ),
            const dailyRecommendation()
          ],
        ),
      ),
      bottomNavigationBar: bottomNavBar(),
    );
  }

  Padding bottomNavBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        child: Container(
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            backgroundColor: UAppTheme.baseTheme.primaryColor,
            selectedItemColor: UAppTheme.baseTheme.primaryColorLight,
            unselectedItemColor:
                UAppTheme.baseTheme.primaryColorLight.withOpacity(0.4),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class dailyRecommendation extends StatelessWidget {
  const dailyRecommendation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Color.fromARGB(255, 48, 165, 189),
        boxShadow: [
          BoxShadow(
            blurRadius: 20.0,
            spreadRadius: 0.0,
            color: Color.fromRGBO(48, 165, 189, 0.3),
          )
        ],
      ),
      height: 120,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text(
                      "Today's recommendation ",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Are we still friends?",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text(
                      "Tyler the Creator",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 7,
                        spreadRadius: 0.0,
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                      )
                    ]),
                child: Image.network(
                    'https://i.scdn.co/image/ab67616d0000b2737005885df706891a3c182a57'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderGreet extends StatelessWidget {
  const HeaderGreet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 24,
          width: 4,
          color: UAppTheme.baseTheme.primaryColorLight,
        ),
        Container(
          width: 8,
        ),
        const Text(
          "Good Morning",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xFFEAF6F8),
          ),
        ),
      ],
    );
  }
}
