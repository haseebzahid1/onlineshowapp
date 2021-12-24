import 'package:bagshopapp/style/color_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../modal/product.dart';
import 'catagoriess.dart';
import 'item_bage.dart';

class BodyScreen extends StatelessWidget {
  const BodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text("Women",style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight:FontWeight.bold),),
        ),
        SizedBox(height: 20,),
        const Categories(),
        SizedBox(height: 20,),
        const BagCategories(),
        // BagsPage(),
      ],
    );
  }
}

