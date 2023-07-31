import 'package:flutter/material.dart';

import '../models/product.dart';

class DetailsPage extends StatelessWidget {

  final Product product;
  const DetailsPage(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        backgroundColor: Colors.orangeAccent,
        titleSpacing: 10,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 5),
        child: ListView(
          children: [

            Padding(
              padding: EdgeInsets.all(16),
              child: Image.network(
                product.image,
                fit: BoxFit.cover,
              ),
            ),
            Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            product.rating.rate.toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.star,
                            size: 16,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    Text('\$${product.price}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.red),),
                  ],
                )
            ),

            Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Expanded(
                  child:Text(product.title,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black,overflow: TextOverflow.ellipsis),maxLines: 1,),
                )
            ),


            Container(
              width: double.infinity,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Text(product.description.toString(),
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),

            ),

          ],
        ),
      ),
    );
  }
}
