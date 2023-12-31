import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(product.description,
        style: const TextStyle(color: kTextColor,
            height: 1.5),),
    );
  }
}
