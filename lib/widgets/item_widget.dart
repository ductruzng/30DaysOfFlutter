import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({super.key, required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (){
          print("${item.name} pressend");
        },
        leading: Image.network(item.imageUrl),
        title: Text(item.name),
        subtitle: Text(item.description),
        trailing: Text(
          "\$${item.price}",
          textScaler: MediaQuery.textScalerOf(context),
          
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),
        ),
      ),
    );
  }
}
