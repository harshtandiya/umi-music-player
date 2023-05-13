import 'package:flutter/material.dart';

import '../src/utils/theme.dart';

class SongDetailsPage extends StatelessWidget {
  final String songName;
  final String artistName;
  final String albumCoverURL;

  const SongDetailsPage({
    Key? key,
    required this.songName,
    required this.artistName,
    required this.albumCoverURL,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 56),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: UAppTheme.baseTheme.primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(999))),
                  child: IconButton(
                    color: UAppTheme.baseTheme.primaryColorLight,
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 56),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    child: Image.network(albumCoverURL),
                  ),
                  Text(
                    'Song Name: $songName',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Artist Name: $artistName',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
