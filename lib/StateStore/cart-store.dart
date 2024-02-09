import 'package:dencoffee_app/Interface/CartInterface.dart';
import 'package:dencoffee_app/Models/ProductModel.dart';
import 'package:mobx/mobx.dart';

part 'cart-store.g.dart';

class CartStore = _CartStore with _$CartStore;

abstract class _CartStore with Store {

  @observable
  List<ProductModel> cart = [];

  @observable
  int total = 0;

  @action
  void setCart(List<ProductModel> cart) {
    this.cart = cart;
  }

  @action
  void setTotal(int total){
    this.total = total;
  }
}

var cartStore = CartStore();
