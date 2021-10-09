import 'package:flutter/material.dart';
import 'package:storeapp/constants.dart';
import 'package:storeapp/models/product.dart';
import 'package:storeapp/screens/details_screen.dart';
import 'package:storeapp/widgets/home/product_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // bottom: false,
      child: Column(
        children: [
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0)),
                  ),
                ),
                ListView.builder(
                  itemCount: Product.products.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    products: Product.products[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            product: Product.products[index],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
