
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class ContentWriting extends StatelessWidget {
  const ContentWriting({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child:  Container(
        
      width: width*0.92,
        height: 460,
          decoration:  BoxDecoration(
        color:Theme.of(context).hintColor,
          boxShadow: [
          BoxShadow(
          offset: const Offset(0,2),
          blurRadius: 3, color:Theme.of(context).hoverColor)
        ],
          borderRadius: const BorderRadius.all(Radius.circular(24)),
        ),
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 86,
            child: SvgPicture.asset("assets/images/seo.svg"
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Content writing and seo".tr(),
                
                style:  TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Cairo",
                  color: Theme.of(context).secondaryHeaderColor,
                ),
                ),
                Text("Content writing and seo1".tr(),
                maxLines: 7,
                overflow: TextOverflow.ellipsis,
                  style:  TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Cairo",
                  color: Theme.of(context).secondaryHeaderColor,
                ),
                ),
            ],
            ),
            ),
          const SizedBox(height: 20),
        ],
      ),
      ),
    );
  }
}