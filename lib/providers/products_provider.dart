import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/product.dart';

part 'products_provider.g.dart';

const List<Product> allProducts = [
  Product(id: '1', title: 'Groovy Shorts', price: 12),
  Product(id: '2', title: 'Karati Kit', price: 34),
  Product(id: '3', title: 'Denim Jeans', price: 54),
  Product(id: '4', title: 'Red Backpack', price: 14),
  Product(id: '5', title: 'Drum & Sticks', price: 29),
  Product(id: '6', title: 'Blue Suitcase', price: 44),
  Product(id: '7', title: 'Roller Skates', price: 52),
  Product(id: '8', title: 'Electric Guitar', price: 79),
];

//읽기 전용
// final productsProvider = Provider((ref) {
//   return allProducts;
// });

// final reduceProductsProvider = Provider((ref){
//   return allProducts.where((p) => p.price < 50).toList();
// });

//generated providers
//이 어노테이션은 코드제너레이션을 사용할것임을 말하는 것임
@riverpod
List<Product> products(ref) {
  return allProducts;
}

@riverpod
List<Product> reduceProducts(ref) {
  return allProducts.where((p) => p.price < 50).toList();
}