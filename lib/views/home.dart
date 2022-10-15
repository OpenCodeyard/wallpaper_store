import 'package:flutter/material.dart';
import 'package:wallpaper_store/data/data.dart';
import 'package:wallpaper_store/widgets/widget.dart';

import '../model/categories_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<CategoriesModel> categories = [];

  @override
  void initState() {
    categories = getCategories();
    // TODO: implement initState
    super.initState();
  }

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

            const SizedBox(height: 16,),
            Container(
              height: 80,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                itemCount: categories.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                  return CategoriesTile(
                      title: categories[index].categoriesName,
                      imageUrl: categories[index].imageUrl);
                  }),
            )



          ],),
      ),
    );
  }
}

class CategoriesTile extends StatelessWidget {

  final String imageUrl, title;

  const CategoriesTile({Key? key,  required this.title,required this.imageUrl}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 6),
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
            child: Image.network(imageUrl, height: 60, width: 120,
            fit: BoxFit.cover,)),
        Container(
          color: Colors.black26,
          height: 60, width: 120,
          alignment: Alignment.center,
          child: Text(title, style: const TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.w600),),)
      ],),
    );
  }
}

