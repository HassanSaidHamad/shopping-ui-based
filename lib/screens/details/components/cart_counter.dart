import 'package:flutter/material.dart';

import '../../../constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numberOfItem = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
          Icons.remove,
              () {
            if(numberOfItem > 1) {
              setState(() {
                numberOfItem--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numberOfItem.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        buildOutlineButton(
          Icons.add,
              () {
            setState(() {
              numberOfItem++;
            });
          },
        ),
      ],
    );
  }

  SizedBox buildOutlineButton(IconData icon, Function() press) {
    return SizedBox(
      width: 40,
      height: 32,
      child: InkWell(
        onTap: press,
        child: Icon(icon),
      ),
    );
  }
}
