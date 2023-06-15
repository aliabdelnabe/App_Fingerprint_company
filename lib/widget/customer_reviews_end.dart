import 'package:arabic_english_app/screens/customer_reviews.dart';
import 'package:arabic_english_app/widget/carousel_screen2.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class CustomerReviewsEND extends StatelessWidget {
  const CustomerReviewsEND({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         const SizedBox(height: 40),
                  Text(
    "customer reviews".tr(),
    style: TextStyle(
      fontSize: 30,
      fontFamily: "Cairo",
      fontWeight: FontWeight.w700,
      color: Theme.of(context).primaryColorLight,
    ),
                  ),
                  Container(
    width: 160,
    height: 1.5,
    color: const Color(0xFFFFBC01),
                  ),
          const CarouselScreen2(),
          const SizedBox(height: 40),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
            ),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => const CustomerReviews()));
            },
            child:Container(
      width: width*0.38,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Image.asset(
              "assets/icons/write (1).png",
              height: 25,
              width: 25,
              fit: BoxFit.cover,
              color: Colors.white,
              ),
              const SizedBox(width: 10),
              Text(
            "Write a review".tr(),
            style:const TextStyle(
              color: Colors.white,
              fontSize: 13.5,
              fontFamily: "Cairo",
              fontWeight: FontWeight.bold
            ),
            ),
        ],
      ),
    ),
              ),
        ],
      ));
  }
}
