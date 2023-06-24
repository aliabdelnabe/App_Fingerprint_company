
import 'package:arabic_english_app/screens/social_media_management.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class FingerprintServices5 extends StatelessWidget {
  const FingerprintServices5({
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
            width: width *0.80,
            height:200,
            child: SvgPicture.asset("assets/images/image_service_design_photos.svg",
            fit: BoxFit.cover,
            ),
          ),
        TextButton(
          onPressed: (){
            Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) => const SocialMediaManagement()));
          },
          child: Text("text12".tr(),
            style:  TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            fontFamily: "Cairo",
            color: Theme.of(context).secondaryHeaderColor,
                                    ),
                                  ),
        ),
    Text("text12 title1".tr(),
                maxLines: 7,
                overflow: TextOverflow.ellipsis,
                  style:  TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Cairo",
                  color: Theme.of(context).secondaryHeaderColor,
                ),
                ),
                Text("text12 title2".tr(),
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
