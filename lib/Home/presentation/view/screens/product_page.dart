
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_route/Home/presentation/view%20model/product_cubit.dart';
import 'package:task_route/Home/presentation/view/widgets/products_grid.dart';
import 'package:task_route/core/widgets/search_bar_with_cart.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProductCubit()..fetchProducts(),
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 56,
                width: 100,
                child: Image.asset(
                  'assets/images/output-onlinepngtools.png',
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child:const SearchBarWithCart()
              ),
            ),
            Expanded(
              child: BlocBuilder<ProductCubit, ProductState>(
                builder: (context, state) {
                  if (state is ProductLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is ProductLoaded) {
                    return ProductGrid(products: state.product.products);
                  } else if (state is ProductError) {
                    return Center(child: Text(state.message));
                  } else {
                    return const Center(child: Text('No products found'));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
