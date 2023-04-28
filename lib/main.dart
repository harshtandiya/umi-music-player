import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Container(
              height: 60,
            ),
            Row(
              children: const [
                Text(
                  "Good Morning",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF30A5BD),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
