import 'package:flutter/material.dart';
import 'package:walldrop/core/theme/app_pallete.dart';

class TrendingTile extends StatefulWidget {
  const TrendingTile({super.key});

  @override
  State<TrendingTile> createState() => _TrendingTileState();
}

class _TrendingTileState extends State<TrendingTile> {
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
