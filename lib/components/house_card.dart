import 'package:flutter/material.dart';
import 'package:inmobarcomobile/constants/colors.dart';
import 'package:inmobarcomobile/models/item_model.dart';

class ItemCard extends StatefulWidget {
  ItemCard(this.item, this.onTap,{super.key});
  Item item;
  Function()? onTap;
  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: AppColor.lightGrey,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColor.lightGrey)
      ),
      child: InkWell(
        onTap: widget.onTap,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColor.lightGrey,
                  image: DecorationImage(
                    image: NetworkImage(widget.item.thumbUrl!),
                    fit: BoxFit.cover
                  )
                ),
              ),
              const SizedBox(height: 10,),
              Text(widget.item.category!, style: const TextStyle(
                color: AppColor.blue1,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
              const SizedBox(height: 8,),
              Text(widget.item.title!, style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis
              ),),
              const SizedBox(height: 8,),
              Row(
                children: [
                  const Icon(
                    Icons.location_on, 
                    color: AppColor.grey2,),
                  Text(widget.item.location!, style: const TextStyle(
                    color: AppColor.grey2,
                    fontSize: 16
                  ),
                  overflow: TextOverflow.ellipsis,)
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${widget.item.price}\$/Mes", 
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),overflow: TextOverflow.ellipsis,),
                  IconButton(
                    onPressed: (){}, 
                    icon: const Icon(Icons.favorite_outline, color: AppColor.grey2,))
                ],
              )
            ],
          ),
          ),
      ),
    );
  }
}