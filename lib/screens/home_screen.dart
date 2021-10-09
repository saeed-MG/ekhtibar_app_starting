import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:storeapp/constants.dart';
import 'package:storeapp/widgets/home/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppBar(),
      body: HomeBody(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      title: SafeArea(
        child: Wrap(children: [
          Text(
            'مرحبا بكم في متجر سعيد للخدمات',
            style: GoogleFonts.getFont(
              'Almarai',
              fontSize: 12,
            ),
          ),
        ]),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
      ],
    );
  }
}
