import 'package:dencoffee_app/Models/ProductModel.dart';

abstract class ProductInterface{

  Future<ProductModel> getProducts();

  Future<ProductModel> createProduct();

  Future<ProductModel> editProduct();

}