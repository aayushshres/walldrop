import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:walldrop/core/theme/app_pallete.dart';
import 'package:http/http.dart' as http;
import 'package:walldrop/core/secrets/app_secrets.dart';

class TrendingTile extends StatefulWidget {
  const TrendingTile({super.key});

  @override
  State<TrendingTile> createState() => _TrendingTileState();
}

class _TrendingTileState extends State<TrendingTile> {
  getTrendingWallpapers() async {
    var uri = Uri.parse(AppSecrets.curated);
    var response =
        await http.get(uri, headers: {"Authorization": AppSecrets.apiKey});
    Map<String, dynamic> jsonData = jsonDecode(response.body);
    jsonData["photos"].forEach((element) {});
  }

  @override
  void initState() {
    getTrendingWallpapers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: 4,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                color: AppPallete.gradient3,
              ),
            );
          }),
    );
  }
}
