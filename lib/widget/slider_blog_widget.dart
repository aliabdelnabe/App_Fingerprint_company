import 'package:arabic_english_app/widget/slider2.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class CustomerReviews1 extends StatelessWidget {
  const CustomerReviews1({
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
              "blog".tr(),
              style: TextStyle(
                fontSize: 30,
                fontFamily: "Cairo",
                fontWeight: FontWeight.w700,
                color: Theme.of(context).primaryColorLight,
              ),
            ),
            Container(
              width: width *0.25,
              height: 1.5,
              color: const Color(0xFFFFBC01),
            ),
            const SizedBox(height: 30),
            const blug2(),

          ],
        ));
  }
}
