import 'package:flutter/material.dart';

import './pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
<<<<<<< HEAD
  final Function deleteProduct;

  Products(this.products, {this.deleteProduct}) {
=======

  Products([this.products = const []]) {
>>>>>>> cd2c54106d634aad921905b38c23d5681ce67ea7
    print('[Products Widget] Constructor');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
<<<<<<< HEAD
          Text(products[index]['title']),
=======
          Text(products[index]['tilte']),
>>>>>>> cd2c54106d634aad921905b38c23d5681ce67ea7
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
<<<<<<< HEAD
                onPressed: () => Navigator.push<bool>(
=======
                onPressed: () => Navigator.push(
>>>>>>> cd2c54106d634aad921905b38c23d5681ce67ea7
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => ProductPage(
                            products[index]['title'], products[index]['image']),
                      ),
<<<<<<< HEAD
                    ).then((bool value) {
                      if (value) {
                        deleteProduct(index);
                      }
                    }),
=======
                    ),
>>>>>>> cd2c54106d634aad921905b38c23d5681ce67ea7
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProductList() {
    Widget productCards;
    if (products.length > 0) {
      productCards = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
      productCards = Container();
    }
    return productCards;
  }

  @override
  Widget build(BuildContext context) {
    print('[Products Widget] build()');
    return _buildProductList();
  }
}
