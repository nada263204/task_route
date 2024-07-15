
// import 'package:flutter/material.dart';
// import 'package:task_route/Home/presentation/view/widgets/products_card.dart';

// class ProductGrid extends StatelessWidget {
//   final List<Product>? products;

//   ProductGrid({this.products});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 2,
//           childAspectRatio: 0.75,
//           mainAxisSpacing: 8,
//           crossAxisSpacing: 8,
//         ),
//         itemCount: products?.length ?? 0,
//         itemBuilder: (context, index) {
//           final product = products![index];
//           return ProductCard(product: product);
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:task_route/Home/data/product_model/product/product.dart';
import 'package:task_route/Home/presentation/view/widgets/products_card.dart';
class ProductGrid extends StatelessWidget {
  final List<Products>? products;

  ProductGrid({this.products});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 2,
          childAspectRatio: 0.75,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemCount: products?.length ?? 0,
        itemBuilder: (context, index) {
          final product = products![index];
          return ProductCard(product: product);
        },
      ),
    );
  }
}
