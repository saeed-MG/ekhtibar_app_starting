import 'package:flutter/material.dart';
import 'package:storeapp/constants.dart';
import 'package:storeapp/models/product.dart';
import 'package:storeapp/widgets/details/details_body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: DetailsBody(
        product: product,
      ),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        'رجــوع',
        style: Theme.of(context).textTheme.bodyText2,
      ),
      backgroundColor: kBackgroundColor,
      leading: IconButton(
        padding: EdgeInsets.only(right: kDefaultPadding),
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back),
        color: kPrimaryColor,
      ),
    );
  }
}
