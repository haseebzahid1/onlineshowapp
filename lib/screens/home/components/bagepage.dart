import 'package:bagshopapp/style/color_style.dart';
import 'package:flutter/material.dart';

import '../../../modal/product.dart';

class BagsPage extends StatelessWidget {
  const BagsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(kDefaultPaddin),
          height: 180,
          width: 160,
          decoration: BoxDecoration(
            color: products[0].color,
            borderRadius: BorderRadius.circular(16)
          ),
          child: Image.asset(products[0].image),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
          child: Text(products[0].title,style: TextStyle(color: kTextLightColor),),
        ),
        Text("\$234",style: TextStyle(fontWeight: FontWeight.bold),),
      ],
    );
  }
}
