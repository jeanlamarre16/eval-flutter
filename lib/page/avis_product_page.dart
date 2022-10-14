import 'package:flutter/material.dart';
import 'package:flutter_sales/model/cart_model.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import '../model/product_model.dart';

class AvisProductPage extends StatelessWidget {
  AvisProductPage(extra, {Key? key}) : super(key: key);
  //Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("liste des avis"),
          actions: [
            TextButton(
                onPressed: ()=> context.go('/detail'),
                child: Text("retour"),
            )
          ],
        ),
      body: Center(
        child: Container(
          height: 600,
        ),
      ),
    );
  }
}


