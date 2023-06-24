
import 'package:arabic_english_app/screens/website%20_design%20_and_hosting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class FingerprintServices1 extends StatelessWidget {
  const FingerprintServices1({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Container(
            width: width * 0.70,
            height: 265,
            child: SvgPicture.asset("assets/images/image_service_web.svg",
            fit: BoxFit.cover,
            ),
          ),
        TextButton(
          onPressed: (){
            Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) => const WebsiteDesignScreen()));
          },
          child: Text("text8".tr(),
            style:  TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            fontFamily: "Cairo",
            color: Theme.of(context).secondaryHeaderColor,
                                    ),
                                  ),
        ),
    Text("text8 title1".tr(),
                maxLines: 7,
                overflow: TextOverflow.ellipsis,
                  style:  TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Cairo",
                  color: Theme.of(context).secondaryHeaderColor,
                ),
                ),
                Text("text8 title2".tr(),
                maxLines: 7,
                overflow: TextOverflow.ellipsis,
                  style:  TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Cairo",
                  color: Theme.of(context).secondaryHeaderColor,
                ),
                ),
        ],
      ),
    );
  }
}
