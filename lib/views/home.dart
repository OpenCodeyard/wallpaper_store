import 'package:flutter/material.dart';
import 'package:wallpaper_store/widgets/widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: brandName(),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
              color: const Color(0xfff5f8fd),
                borderRadius: BorderRadius.circular(30)
              ),
              padding: const EdgeInsets.symmetric(horizontal: 22),
              margin: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(children: const [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search Wallpapers",
                      border: InputBorder.none
                    ),
                  ),
                ),
                Icon(Icons.search)
              ],),
            ),



          ],),
      ),
    );
  }
}
