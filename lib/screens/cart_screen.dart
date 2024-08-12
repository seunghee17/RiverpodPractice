import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/providers/products_provider.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  bool showCoupon = true;

  @override
  Widget build(BuildContext context) {
    final cartProducts = ref.watch(reduceProductsProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('your cart'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: cartProducts.map((product) {
            return Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                children: [
                  const SizedBox(width: 10,),
                  Text('${product.title}'),
                  const Expanded(child: SizedBox()),
                  Text('${product.price}'),

                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }


}