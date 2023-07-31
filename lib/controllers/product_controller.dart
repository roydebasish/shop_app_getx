import 'package:get/get.dart';
import 'package:shop_app_getx/services/remote_service.dart';
import '../models/product.dart';
class ProductController extends GetxController {

  var isLoading = true.obs;
  var productList = <Product>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await RemoteService.getAllProducts();
      if (products != null) {
        productList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }
}