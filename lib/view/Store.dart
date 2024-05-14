import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../proto/StoreItems.dart';
import '../components/GridCardStore.dart';

class Store extends StatefulWidget {
  const Store({Key? key}) : super(key: key);

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  String searchBar = "";
  final List<StoreItem> tab = List.generate(
    11,
    (index) => StoreItem(
      id: '123456',
      name: "hijab",
      price: 123,
      description: 'modernOutfit',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          centerTitle: true,
          title: Container(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey[200],
              ),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  hintText: "search",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                onChanged: (value) {
                  setState(() {
                    searchBar = value;
                  });
                },
              ),
            ),
          ),
          titleSpacing: 2.0,
          actions: const [
            Icon(
              Icons.notifications,
              color: Colors.deepPurple,
            ),
            SizedBox(width: 20),
          ],
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.custom(
              gridDelegate: SliverQuiltedGridDelegate(
                crossAxisCount: 4,
                mainAxisSpacing: 2,
                crossAxisSpacing: 1,
                repeatPattern: QuiltedGridRepeatPattern.inverted,
                pattern: const [
                  QuiltedGridTile(2, 2),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 2),
                ],
              ),
              childrenDelegate: SliverChildBuilderDelegate(
                (context, index) {
                  final item = tab[index];
                  return GridCard(
                    id: item.id,
                    description: item.description,
                    name: item.name,
                    price: item.price.toString(),
                  );
                },
                childCount: tab.length,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
