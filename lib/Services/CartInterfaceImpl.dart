import 'package:dencoffee_app/Interface/CartInterface.dart';
import 'package:dencoffee_app/Models/ProductModel.dart';
import 'package:dencoffee_app/StateStore/cart-store.dart';

class CartInterfaceImpl extends CartInterface{

  final List<ProductModel> cartItems = [];

  @override
  void addProduct(ProductModel product) {
    print(product);
    if(cartStore.cart.contains(product)){
      print("test" + cartStore.cart.contains(product).toString());
      product.qty += 1;
    } else{
      cartStore.cart.add(product);
      product.qty = 1;
    }
    calcularTotal();
  }


  @override
  int calcularTotal() {
    int total = 0;
    for (var product in cartStore.cart){
      print(product);
      total += product.price;
    }
    print("total = $total" );
    cartStore.setTotal(total);
    return total;
  }

  @override
  void editProduct(int id, ProductModel product) {
    final existingProduct = cartItems.firstWhere((item) => item.id == id);

    if (existingProduct != null) {
      existingProduct.name = product.name;
      existingProduct.price = product.price;
    }

}

  @override
  List<ProductModel> getProducts(){
    return cartItems;
  }

  @override
  void removeProduct(int id) {
    cartItems.removeWhere((product) => product.id == id);
  }

}