
import 'package:arabic_english_app/screens/production%20_videos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class FingerprintServices2 extends StatelessWidget {
  const FingerprintServices2({
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
            width: width * 0.80,
            height: 300,
            child: SvgPicture.asset("assets/images/image_service_video.svg",
            fit: BoxFit.cover,
            ),
          ),
        TextButton(
          onPressed: (){
            Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) => const ProductionVideos()));
            
          },
          child: Text("text9".tr(),
            style:  TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            fontFamily: "Cairo",
            color: Theme.of(context).secondaryHeaderColor,
                                    ),
                                  ),
        ),
    Text("text9 title1".tr(),
                maxLines: 7,
                overflow: TextOverflow.ellipsis,
                  style:  TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Cairo",
                  color: Theme.of(context).secondaryHeaderColor,
                ),
                ),
                Text("text9 title2".tr(),
                maxLines: 7,
                overflow: TextOverflow.ellipsis,
                  style:  TextStyle(
                  fontSize: 12,
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
