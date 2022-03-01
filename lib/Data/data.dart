import 'package:wallpaper_app/Model/categories.dart';

String apiKey = "563492ad6f917000010000016787c956f1c547aeaad34c4b1a70d6ec";
List<CategorieModel> getCategories(){

  List<CategorieModel> categories = [

    CategorieModel(
      categorieName: "Street Art",
      imageAssetUrl: "https://images.pexels.com/photos/545008/pexels-photo-545008.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",

    ),

    CategorieModel(
      imageAssetUrl: "https://images.pexels.com/photos/704320/pexels-photo-704320.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      categorieName: 'Wild Life',
    ),

    CategorieModel(
      categorieName: 'Nature',
      imageAssetUrl: "https://images.pexels.com/photos/34950/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    ),

    CategorieModel(
      categorieName: 'City',
      imageAssetUrl: "https://images.pexels.com/photos/466685/pexels-photo-466685.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    ),

    CategorieModel(
      categorieName: "Motivation",
      imageAssetUrl: "https://images.pexels.com/photos/1434819/pexels-photo-1434819.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
    ),

    CategorieModel(
      categorieName: "Bikes",
      imageAssetUrl: "https://images.pexels.com/photos/2116475/pexels-photo-2116475.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    ),

    CategorieModel(
      categorieName: "Cars",
      imageAssetUrl: "https://images.pexels.com/photos/1149137/pexels-photo-1149137.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    ),
  ];
  return  categories;
}