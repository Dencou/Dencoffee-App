// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart-store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CartStore on _CartStore, Store {
  late final _$cartAtom = Atom(name: '_CartStore.cart', context: context);

  @override
  List<ProductModel> get cart {
    _$cartAtom.reportRead();
    return super.cart;
  }

  @override
  set cart(List<ProductModel> value) {
    _$cartAtom.reportWrite(value, super.cart, () {
      super.cart = value;
    });
  }

  late final _$totalAtom = Atom(name: '_CartStore.total', context: context);

  @override
  int get total {
    _$totalAtom.reportRead();
    return super.total;
  }

  @override
  set total(int value) {
    _$totalAtom.reportWrite(value, super.total, () {
      super.total = value;
    });
  }

  late final _$_CartStoreActionController =
      ActionController(name: '_CartStore', context: context);

  @override
  void setCart(List<ProductModel> cart) {
    final _$actionInfo =
        _$_CartStoreActionController.startAction(name: '_CartStore.setCart');
    try {
      return super.setCart(cart);
    } finally {
      _$_CartStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTotal(int total) {
    final _$actionInfo =
        _$_CartStoreActionController.startAction(name: '_CartStore.setTotal');
    try {
      return super.setTotal(total);
    } finally {
      _$_CartStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cart: ${cart},
total: ${total}
    ''';
  }
}
