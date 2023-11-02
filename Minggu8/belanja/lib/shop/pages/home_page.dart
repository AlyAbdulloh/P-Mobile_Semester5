import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:belanja/shop/models/item.dart';
import 'package:belanja/shop/seeder/item_seeder.dart';
import 'package:belanja/shop/pages/item_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final items = ItemSeeder().listItems();

  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/item': (context) => ItemPage(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text("Best Shoes"),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: StaggeredGridView.countBuilder(
            itemCount: items.length,
            crossAxisCount: 2,
            staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/item', arguments: item);
                },
                child: SizedBox(
                  height: 235,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 4,
                    shadowColor: const Color.fromARGB(255, 27, 27, 27),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Hero(
                              tag: 'product_cover_${item.image}',
                              child: Image.asset(
                                item.image,
                                fit: BoxFit.fill,
                              )),
                          const Spacer(
                            flex: 1,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                item.name,
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                item.price.toString(),
                                style: TextStyle(fontSize: 13),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 19,
                                    color: Colors.amber[300],
                                  ),
                                  Text(item.rating.toString()),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
