class CategoriesModel {
  final String categoriesName;
  final String imgUrl;

  CategoriesModel({
    required this.imgUrl,
    required this.categoriesName,
  });
  static List<CategoriesModel> getCategories() {
    List<CategoriesModel> categories = [];

    categories.add(
      CategoriesModel(
        imgUrl:
            "https://images.pexels.com/photos/91153/pexels-photo-91153.jpeg",
        categoriesName: "Nature",
      ),
    );
    categories.add(
      CategoriesModel(
        imgUrl:
            "https://images.pexels.com/photos/92248/pexels-photo-92248.jpeg?",
        categoriesName: "Street",
      ),
    );
    categories.add(
      CategoriesModel(
        imgUrl:
            "https://images.pexels.com/photos/2832432/pexels-photo-2832432.png?",
        categoriesName: "Texture",
      ),
    );
    categories.add(
      CategoriesModel(
        imgUrl:
            "https://images.pexels.com/photos/1880650/pexels-photo-1880650.jpeg?",
        categoriesName: "Minimalist",
      ),
    );
    categories.add(
      CategoriesModel(
        imgUrl:
            "https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg?",
        categoriesName: "Animal",
      ),
    );
    return categories;
  }
}
