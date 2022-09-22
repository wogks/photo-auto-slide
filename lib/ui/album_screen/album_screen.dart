import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AlbumScreen extends StatefulWidget {
  const AlbumScreen({super.key});

  @override
  State<AlbumScreen> createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  final data = [];
      saveData()async{
      var storage = await SharedPreferences.getInstance();
      storage.setString('name', 'john');
      var result = storage.getString('name');
      final data = result;
    }
    @override
  void initState() {
    saveData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
}