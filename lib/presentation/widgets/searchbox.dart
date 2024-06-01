import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({super.key});

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "Search",
          suffixIcon: Padding(
            padding: const EdgeInsets.all(10),
            child: IconButton(
                onPressed: () => search(), icon: const Icon(Icons.search)),
          )),
    );
  }
}

void search() {
  print("Search button is clicked");
}
