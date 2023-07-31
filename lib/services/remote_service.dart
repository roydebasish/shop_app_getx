import 'package:http/http.dart' as http;
import 'package:shop_app_getx/models/product.dart';

class RemoteService{

  static var client = http.Client();

  static Future<List<Product>?> getAllProducts() async{
    var response = await client.get(Uri.parse("https://fakestoreapi.com/products"));

    if(response.statusCode == 200){
      var jsonString = response.body;
      return productFromJson(jsonString);
    }else{
      return null;
    }

  }
}