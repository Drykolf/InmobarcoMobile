import 'package:flutter/material.dart';
import 'package:inmobarcomobile/components/house_card.dart';
import 'package:inmobarcomobile/models/item_model.dart';

// ignore: must_be_immutable
class SuggestionList extends StatefulWidget {
  SuggestionList(this.title, this.items,{super.key});
  String? title;
  List<Item> items;
  @override
  State<SuggestionList> createState() => _SuggestionListState();
}

class _SuggestionListState extends State<SuggestionList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.title!, style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),),
              TextButton(onPressed: (){}, child: const Text("Ver mas"))
            ],
          ),
          const SizedBox(height: 12,),
          Container(
            height: 340,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal, 
              itemCount: widget.items.length, 
              itemBuilder: (context, index)=>ItemCard(widget.items[index], (){}),),
          )
        ],
      ),
    );
  }
}
