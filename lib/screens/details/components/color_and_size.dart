import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';
import 'body.dart';
import 'color_dot.dart';


class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Color'),
              Row(
                children: [
                  ColorDot(
                    color: Color(0xFF256C95),
                    isSelected: true,
                  ),
                  ColorDot(color: Color(0xFFF8C078)),
                  ColorDot(color: Color(0xFFA29B9B)),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text:  TextSpan(
              style: const TextStyle(color: kTextLightColor),
              children: [
                const TextSpan(
                  text: 'Size\n',
                ),
                TextSpan(text: '${product.price} cm',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.bold
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

