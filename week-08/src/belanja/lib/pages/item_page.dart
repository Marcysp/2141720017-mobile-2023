import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/item_image_hero.dart';
import 'package:belanja/widgets/produk_name.dart';
import 'package:belanja/widgets/rating_stock_widget.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
          Container(
            child: Center(
              child: ItemImageHero(item: itemArgs),
            ),
          ),
          
          Container(
            // width: MediaQuery.of(context).size.width * 0.9,
            padding: EdgeInsets.all(9.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RatingStock(item: itemArgs),
                ProdukName(item: itemArgs),
                Padding(
                  padding: const EdgeInsets.only(top: 13.0),
                  child: Text(
                    'Deskripsi',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    itemArgs.deskripsi ?? "-",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


// import 'package:flutter/widgets.dart';

// class ItemPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context){
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }