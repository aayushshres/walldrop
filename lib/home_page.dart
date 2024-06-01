import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:walldrop/core/theme/app_pallete.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      body: const Center(
        child: Text("Home Page"),
      ),
    );
  }
}
