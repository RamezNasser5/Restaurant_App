import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFDFDBDB),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25))),
          hintText: 'Search',
        ),
      ),
    );
  }
}
