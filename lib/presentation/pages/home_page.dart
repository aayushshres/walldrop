import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:walldrop/core/theme/app_pallete.dart';
import 'package:walldrop/presentation/widgets/categoriestile.dart';
import 'package:walldrop/presentation/widgets/searchbox.dart';
import 'package:walldrop/presentation/widgets/trendingtile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Walldrop",
          style: GoogleFonts.pacifico(
            textStyle: const TextStyle(
              color: AppPallete.gradient1,
              fontSize: 30,
            ),
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SearchBox(),
            SizedBox(height: 20),
            CategoriesTile(),
            SizedBox(height: 20),
            TrendingTile(),
          ],
        ),
      ),
    );
  }
}
