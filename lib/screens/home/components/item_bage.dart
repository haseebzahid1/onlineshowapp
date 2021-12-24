import 'package:flutter/material.dart';

import '../../../modal/product.dart';
import '../../../style/color_style.dart';
import '../../detail/detail_screen.dart';

class BagCategories extends StatelessWidget {
  const BagCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          itemCount: products.length,
          gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: kDefaultPaddin,
            crossAxisSpacing: kDefaultPaddin,
            childAspectRatio: 0.75,
          ), itemBuilder: (context, index){
          Product productItem = products[index];
          return InkWell(

              onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailScreen(product:productItem ,))
            );},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(kDefaultPaddin),
                    decoration: BoxDecoration(
                        color: productItem.color,
                        borderRadius: BorderRadius.circular(16)
                    ),
                    child: Image.asset(productItem.image,fit: BoxFit.cover ,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
                  child: Text(productItem.title,style: const TextStyle(color: kTextLightColor),),
                ),
                Text("\$${productItem.price}",style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
          );
        },),
      ),
    );
  }
}
