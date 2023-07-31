import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:shop_app_getx/views/widgets/product_item.dart';
import '../controllers/product_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ProductController productController = Get.put(ProductController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shop App with GetX"),),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Obx(() {
          if (productController.isLoading.value) {
            return Center(child: CircularProgressIndicator(),);
          } else {
            return MasonryGridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 12,
              itemCount: productController.productList.length,
              itemBuilder: (context, index) {
                return ProductItem(productController.productList[index]);
              },
            );
        }
        }
        ),

      ),
    );
  }
}
