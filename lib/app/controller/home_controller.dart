import 'package:demo_iapp/app/backend/model/product_model.dart';
import 'package:demo_iapp/app/backend/parse/home_parse.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController implements GetxService {
  final HomeParser parser;

  HomeController({required this.parser});

  bool isLoading = true;

  final List<ProductModel> _productsList = <ProductModel>[];
  List<ProductModel> get productsList => _productsList;

  int totalQuantity = 0;
  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    isLoading = true;
    Response response = await parser.getHomeData();
    isLoading = false;

    debugPrint(response.body.toString());
    if (response.statusCode == 200) {
      var decodedResponse = response.body;
      decodedResponse.forEach((e) {
        _productsList.add(ProductModel.fromJson(e));
      });
      for (var element in productsList) {
        debugPrint(element.quantity.toString());
      }
    }
    update();
  }

  void updateQuantity(int index) {
    _productsList[index].quantity = 1;
    calcuate();
    update();
  }

  void addQuantity(int index) {
    _productsList[index].quantity = _productsList[index].quantity + 1;
    calcuate();
    update();
  }

  void removeQuantity(int index) {
    _productsList[index].quantity = _productsList[index].quantity - 1;
    calcuate();
    update();
  }

  void calcuate() {
    int total = 0;

    var contain = _productsList.where((element) => element.quantity >= 1);
    if (contain.isNotEmpty) {
      for (var element in contain) {
        total = total + element.quantity;
      }
      totalQuantity = total;
    } else {
      totalQuantity = 0;
    }
    update();
  }
}
