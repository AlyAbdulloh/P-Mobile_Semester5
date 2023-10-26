import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});
  @override
  Widget build(BuildContext context) {
    // throw UnimplementedError();
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
        appBar: AppBar(
          title: Text(itemArgs.name),
        ),
        body: Center(
          child: Text("Start with " + itemArgs.price.toString()),
        ));
  }
}
