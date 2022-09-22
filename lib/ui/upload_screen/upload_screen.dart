import 'package:auto_photo_slide/ui/album_screen/album_screen.dart';
import 'package:flutter/material.dart';


class UploadScreen extends StatelessWidget {
  const UploadScreen({super.key, required this.userImage, required this.addMyData, });
  final userImage;
  final addMyData;
  

  @override
  Widget build(BuildContext context) {
    final data = [];
    return Scaffold(
      body: Column(
        children: [
          Image.file(userImage),
          IconButton(
            onPressed: () {
              addMyData();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AlbumScreen(),),
              );
            },
            icon: const Icon(Icons.send),
          )
        ],
      ),
    );
  }
}