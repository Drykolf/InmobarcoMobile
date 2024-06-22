import 'package:flutter/material.dart';
import 'package:inmobarcomobile/components/search_field.dart';
import 'package:inmobarcomobile/components/suggestion_list.dart';
import 'package:inmobarcomobile/constants/colors.dart';
import 'package:inmobarcomobile/models/item_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(  // Scaffold widget
      backgroundColor: AppColor.lightGrey.withOpacity(0.5),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _searchfield(),
              const SizedBox(height: 20),
              SuggestionList("Destacados", Item.suggested),
              const SizedBox(height: 20),
              SuggestionList("Urgentes", Item.suggested)
            ],
          ),
        ),
      ),
    );
  }

  Container _searchfield() {
    return Container(
      margin: const EdgeInsets.only(top: 10,left: 10,right: 10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColor.grey2.withOpacity(0.11),
            spreadRadius: 0,
            blurRadius: 40,
          )
        ],
      ),
      child: const SearchField(),
    );
  }
}
