import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';

class ItemCard extends StatelessWidget {
  final Product? product;
  final void Function()? press;
  // final Function press;

  // const ItemCard({
  //   super.key,
  //   this.product,
  //   required this.press,
  // });

  const ItemCard({
    Key? key,
    this.product,
    this.press,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            // margin: const EdgeInsets.only(top: 30),
            // width: 180,
            // height: 160,
            decoration: BoxDecoration(
                color: product?.color,
                borderRadius: BorderRadius.circular(16)),
            child: Image.asset(product!.image),
          ),
          Padding(
            padding:  const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              product!.title,
              style: const TextStyle(
                color: kTextLightColor,
              ),
            ),
          ),
          Text(
            '\$${product!.price}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
