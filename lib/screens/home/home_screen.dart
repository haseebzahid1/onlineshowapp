import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../style/color_style.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/back.svg",color: kTextColor,),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/search.svg", color: kTextColor,),
            onPressed: () {},
          ),
          IconButton(icon: SvgPicture.asset("assets/icons/cart.svg", color: kTextColor,),
            onPressed: () {},
          ),
          SizedBox(width: kDefaultPaddin/2,),
        ],
      ),
      body: BodyScreen(),
    );
  }
}
