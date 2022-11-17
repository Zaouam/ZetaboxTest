import 'package:dio/dio.dart';
import 'package:klarna/app/main/models/product.dart';
import 'package:klarna/config/api-urls/api_urls.dart';
import 'package:klarna/config/interceptor/interceptor.dart';

class ProductsServices {

  /// FETCH LIST OF PRODUCTS
  Future<List<Product>?> getProducts() {
    return DioInterceptor.dio!
        .get(ApiUrls.productUrl)
        .then((Response response) {
      if (response.statusCode == 304) {
        return List<Product>.from(response.data.map((x) => Product.fromJson(x)));
      } else {
        return null;
      }
    });
  }
}