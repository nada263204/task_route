import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:task_route/Home/data/product_model/product/product.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  Future<void> fetchProducts() async {
    emit(ProductLoading());
    try {
      final response = await Dio().get('https://dummyjson.com/products');
      final productData = Product.fromJson(response.data);
      emit(ProductLoaded(productData));
    } catch (e) {
      emit(ProductError('Failed to fetch products'));
    }
  }
}

abstract class ProductState {}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductLoaded extends ProductState {
  final Product product;

  ProductLoaded(this.product);
}

class ProductError extends ProductState {
  final String message;

  ProductError(this.message);
}
