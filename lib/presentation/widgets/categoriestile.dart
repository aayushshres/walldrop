import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:walldrop/core/theme/app_pallete.dart';
import 'package:walldrop/data/model/categories_model.dart';

class CategoriesTile extends StatefulWidget {
  const CategoriesTile({
    super.key,
  });

  @override
  State<CategoriesTile> createState() => _CategoriesTileState();
}

class _CategoriesTileState extends State<CategoriesTile> {
  List<CategoriesModel> categories = [];

  void _getCategories() {
    categories = CategoriesModel.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    return SizedBox(
      height: 50,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: NetworkImage(categories[index].imgUrl),
                      colorFilter: ColorFilter.mode(
                          AppPallete.blackColor.withOpacity(0.5),
                          BlendMode.darken),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      categories[index].categoriesName,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        color: AppPallete.whiteColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      )),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
