import '../Models/ProductModel.dart';

abstract class CartInterface{

  void addProduct(ProductModel product);

  void removeProduct(int id);

  void editProduct(int id, ProductModel product);

  void calcularTotal();



}

