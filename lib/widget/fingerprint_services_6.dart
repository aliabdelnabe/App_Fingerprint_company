
import 'package:arabic_english_app/screens/Content_writing_seo_optimization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class FingerprintServices6 extends StatelessWidget {
  const FingerprintServices6({
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
            width: width * 0.60,
            height: 265,
            child: SvgPicture.asset("assets/images/image_service_seo.svg",
            fit: BoxFit.cover,
            ),
          ),
        TextButton(
          onPressed: (){
            Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) => const ContentWritingSeoOptimization()));
          },
          child: Text("Content Writing and SEO".tr(),
            style:  TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            fontFamily: "Cairo",
            color: Theme.of(context).secondaryHeaderColor,
                                    ),
                                  ),
        ),
    Text("Content Writing and SEO title1".tr(),
                maxLines: 7,
                overflow: TextOverflow.ellipsis,
                  style:  TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Cairo",
                  color: Theme.of(context).secondaryHeaderColor,
                ),
                ),
                Text("Content Writing and SEO title2".tr(),
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
