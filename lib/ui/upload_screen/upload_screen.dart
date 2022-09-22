import 'package:flutter/material.dart';


class UploadScreen extends StatelessWidget {
  const UploadScreen({super.key, required this.userImage});
  final userImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.file(userImage)
        ],
      ),
    );
  }
}