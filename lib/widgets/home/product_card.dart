import 'package:flutter/material.dart';
import 'package:storeapp/constants.dart';

import 'package:storeapp/models/product.dart';

class ProductCard extends StatelessWidget {
  final int? itemIndex;
  final Product? products;
  final Function()? press;

  const ProductCard({
    Key? key,
    this.itemIndex,
    this.products,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      // color: Colors.green,
      height: 166.0,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 190.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 25.0,
                      color: Colors.black12,
                    ),
                  ],
                  color: Colors.white),
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 160.0,
                width: 200.0,
                child: Image.asset(products!.image!, fit: BoxFit.cover),
              ),
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              child: SizedBox(
                height: 136.0,
                // because our image is 200 then the width = widith - 200
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding / 2),
                      child: Text(
                        // 'سماعات ﻻ سلكية',
                        products!.title!,
                        // style: Theme.of(context).textTheme.bodyText1,
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding / 2),
                      child: Text(
                        products!.subTitle!,
                        // style: Theme.of(context).textTheme.caption,
                        style: TextStyle(fontSize: 9.0),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(right: 5.0, bottom: 5.0),
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                        vertical: kDefaultPadding / 5,
                      ),
                      decoration: BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      child: Text(
                        'السعـر: \$${products!.price!}',
                        style: TextStyle(fontSize: 10.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
