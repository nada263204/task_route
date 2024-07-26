import 'package:flutter/material.dart';
import 'package:task_route/Home/data/product_model/product/product.dart';

class ProductCard extends StatelessWidget {
  final Products product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: const Color.fromARGB(139, 18, 81, 133), width: 1.0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Image.network(
                        product.images != null && product.images!.isNotEmpty
                            ? product.images!.first
                            : 'https://via.placeholder.com/150',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                      Positioned(
                        top: 8,
                        right: 8,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.favorite_border,
                            color: Colors.blue,
                            size: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.title ?? '',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        product.description ?? '',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'EGP ${product.discountPercentage}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'EGP ${product.price}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Review (${product.rating.toString()})',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Icon(Icons.star,
                              color: Colors.yellow, size: 16),
                          const Spacer(),
                          RawMaterialButton(
                            onPressed: () {},
                            fillColor: const Color.fromARGB(255, 18, 81, 133),
                            shape: const CircleBorder(),
                            constraints: const BoxConstraints.tightFor(
                              width: 32.0,
                              height: 32.0,
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
