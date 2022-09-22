import 'package:auto_photo_slide/ui/album_screen/album_screen.dart';
import 'package:auto_photo_slide/ui/upload_screen/upload_screen.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  ImagePicker picker = ImagePicker();
  var userImage;
  var data = [];
  addMyData() {
    var myData = {
      'id': data.length,
    };
    setState(() {
      data.insert(0, myData);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async {
              var image = await picker.pickImage(source: ImageSource.gallery);
              if (image != null) {
                userImage = File(image.path);
              }
              // ignore: use_build_context_synchronously
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UploadScreen(
                    userImage: userImage,
                    addMyData: addMyData

                  ),
                ),
              );
            },
            icon: const Icon(Icons.add_box_outlined),
          ),
          IconButton(
            onPressed: () {
              // ignore: use_build_context_synchronously
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AlbumScreen()),
              );
            },
            icon: const Icon(Icons.photo_album),
          )
        ],
      ),
    );
  }
}
