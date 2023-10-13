import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_ui_demo/constants.dart';
import 'package:shopping_ui_demo/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/back.svg'),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/search.svg',
            color: kTextColor,),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/cart.svg',
              color: kTextColor,),
          ),
          const SizedBox(width: kDefaultPadding / 2,)
        ],
      ),
      body: Body(),
    );
  }
}
