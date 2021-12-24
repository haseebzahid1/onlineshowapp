import 'package:flutter/material.dart';

import '../../../style/color_style.dart';


class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand bag","Jewellery","Footwear","Dresses"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(

      height: 25,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index)=>buildCategory(index),
      ),
    );
  }


  Widget buildCategory(int index){
    return GestureDetector(
     onTap: (){
       setState(() {
         selectedIndex = index;
       });
     },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex==index ? kTextColor : kTextLightColor,
              ),),

            Container(
              margin: EdgeInsets.only(top: kDefaultPaddin/4),
              height: 2,
              width: 30,
              color: selectedIndex==index ? Colors.black : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }

}
