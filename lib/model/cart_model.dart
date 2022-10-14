import 'package:flutter/foundation.dart';

import 'product_model.dart';

class CartModel extends ChangeNotifier{
  final List<Product> lsProducts;

  CartModel(this.lsProducts);

  addProduct(Product product){
    lsProducts.add(product);
    notifyListeners();
  }
  removeAllProducts(){
    lsProducts.clear();
    notifyListeners();
  }
  removeProduct(Product p){
    lsProducts.remove(p);
    notifyListeners();
  }
  String getPriceCart(){
    num total = 0;
    for (var element in lsProducts) {total += element.price;}
    return total.toStringAsFixed(2);
  }
}