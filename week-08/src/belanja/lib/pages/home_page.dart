import 'package:belanja/widgets/footer.dart';
import 'package:belanja/widgets/item_image.dart';
import 'package:belanja/widgets/produk_name.dart';
import 'package:belanja/widgets/rating_stock_widget.dart';
import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Sugar',
        price: 5000,
        imageUrl: '../../assets/sugar.jpeg',
        stock: 3,
        rating: 4.5,
        deskripsi: 'Bumbu dapur Garam'),
    Item(
        name: 'Salt',
        price: 2000,
        imageUrl: '../../assets/salt.png',
        stock: 15,
        rating: 4.0),
    Item(
        name: 'Garlic Powder',
        price: 2000,
        imageUrl: '../../assets/garlic.jpeg',
        stock: 10,
        rating: 3.0,
        deskripsi: 'Bumbu dapur Bawang Bubuk'),
    // ... tambahkan produk lainnya sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Shopping List'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.all(8),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  padding: EdgeInsets.all(8),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/item', arguments: item);
                      },
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AspectRatio(
                                aspectRatio: 1, // gambar berbentuk persegi
                                child: ItemImage(item: item),
                              ),
                              ProdukName(item: item),
                              RatingStock(item: item)
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            FooterWidget(),
          ],
        ));
  }
}
