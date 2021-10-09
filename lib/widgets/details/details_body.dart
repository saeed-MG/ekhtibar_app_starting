import 'package:flutter/material.dart';
import 'package:storeapp/constants.dart';
import 'package:storeapp/models/product.dart';
import 'package:storeapp/widgets/details/color_dot.dart';

import 'package:storeapp/widgets/details/product_image.dart';

class DetailsBody extends StatelessWidget {
  final Product product;
  const DetailsBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      // crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Expanded(
          flex: 1,
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: ProductImage(
                    size: size,
                    image: product.image!,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ColorDot(
                        fillColor: kTextLightColor,
                        isSelected: true,
                      ),
                      ColorDot(
                        fillColor: Colors.blue,
                        isSelected: false,
                      ),
                      ColorDot(
                        fillColor: Colors.red,
                        isSelected: false,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                  child: Text(
                    product.title!,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Text(
                  'السعـر: \$${product.price}',
                  style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.w600,
                      color: kSecondaryColor),
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 1.5,
                vertical: kDefaultPadding / 2),
            child: Text(
              product.description!,
              style: TextStyle(fontSize: 19.0, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
