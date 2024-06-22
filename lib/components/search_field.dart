
import 'package:flutter/material.dart';
import 'package:inmobarcomobile/constants/colors.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.all(15),
        prefixIcon: const Icon(Icons.search),
        suffixIcon: const Icon(Icons.tune),
        hintText: "Buscar...",
        hintStyle: const TextStyle(
          color: AppColor.lightGrey,
          fontSize: 16
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none
        ),
      )
    );
  }
}