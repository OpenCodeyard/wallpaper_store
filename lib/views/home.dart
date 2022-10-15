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
      appBar: AppBar(
        title: brandName(),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Row(children: const [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search"
                    ),
                  ),
                ),
                Icon(Icons.search)
              ],),
            )
          ],),
      ),
    );
  }
}
