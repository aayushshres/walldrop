import 'package:walldrop/data/model/categories_model.dart';

List<CategoriesModel> getCategories() {
  List<CategoriesModel> categories = [];
  CategoriesModel categorieModel = CategoriesModel();

  categorieModel.imgUrl =
      "https://images.pexels.com/photos/91153/pexels-photo-91153.jpeg";
  categorieModel.categoriesName = "Nature";
  categories.add(categorieModel);
  categorieModel = CategoriesModel();

  categorieModel.imgUrl =
      "https://images.pexels.com/photos/92248/pexels-photo-92248.jpeg?";
  categorieModel.categoriesName = "Street";
  categories.add(categorieModel);
  categorieModel = CategoriesModel();

  categorieModel.imgUrl =
      "https://images.pexels.com/photos/2832432/pexels-photo-2832432.png?";
  categorieModel.categoriesName = "Texture";
  categories.add(categorieModel);
  categorieModel = CategoriesModel();

  categorieModel.imgUrl =
      "https://images.pexels.com/photos/1880650/pexels-photo-1880650.jpeg?";
  categorieModel.categoriesName = "Minimalist";
  categories.add(categorieModel);
  categorieModel = CategoriesModel();

  categorieModel.imgUrl =
      "https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg?";
  categorieModel.categoriesName = "Animal";
  categories.add(categorieModel);
  categorieModel = CategoriesModel();

  return getCategories();
}
