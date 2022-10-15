import '../model/categories_model.dart';

List<CategoriesModel> getCategories(){

    List<CategoriesModel> categories = [];
    //categoriesModel categoriesModel = categoriesModel(
        //categoriesName: categoriesName, imageUrl: imageUrl);

    //1
    CategoriesModel categoriesModel = CategoriesModel(
        "Street Art",
        "https://images.pexels.com/photos/545008/pexels-photo-545008.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
            );
    categories.add(categoriesModel);

    //2
    categoriesModel = CategoriesModel(
        "Wild Life",
        "https://images.pexels.com/photos/704320/pexels-photo-704320.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    );
    categories.add(categoriesModel);

    //3
    categoriesModel = CategoriesModel(
        "Nature",
        "https://images.pexels.com/photos/34950/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    );
    categories.add(categoriesModel);

    //4
    categoriesModel = CategoriesModel(
        "City",
        "https://images.pexels.com/photos/466685/pexels-photo-466685.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    );
    categories.add(categoriesModel);

    //5
    categoriesModel = CategoriesModel(
        "Motivation",
        "https://images.pexels.com/photos/1434819/pexels-photo-1434819.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
    );
    categories.add(categoriesModel);

    //6
    categoriesModel = CategoriesModel(
        "Bikes",
        "https://images.pexels.com/photos/2116475/pexels-photo-2116475.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    );
    categories.add(categoriesModel);

    //7
    categoriesModel = CategoriesModel(
        "Car",
        "https://images.pexels.com/photos/1149137/pexels-photo-1149137.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    );
    categories.add(categoriesModel);

    return categories;
}

}