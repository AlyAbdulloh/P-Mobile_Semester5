import 'package:belanja/pages/home_page.dart';
import 'package:belanja/shop/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  Widget build(BuildContext context) {
    final items = ModalRoute.of(context)!.settings.arguments as Item;

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /* soal 1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    items.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  items.price.toString(),
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          /* soal 3*/
          Icon(
            Icons.star,
            color: Colors.amber[300],
          ),
          Text(items.rating.toString()),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Achmad Aly Abdulloh 2141720039',
      home: Scaffold(
          appBar: AppBar(
            title: Text(items.name),
          ),
          body: ListView(
            children: [
              Image.asset(
                items.image,
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              titleSection,
              // buttonSection,
              // textSection,
            ],
          )),
    );
  }
}
