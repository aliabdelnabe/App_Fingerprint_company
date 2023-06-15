
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class WeAreOnTime extends StatelessWidget {
  const WeAreOnTime({
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
            child: SvgPicture.asset("assets/images/analysis.svg"
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("We are on time and always interact".tr(),
                
                style:  TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Cairo",
                  color: Theme.of(context).secondaryHeaderColor,
                ),
                ),
                Text("We are on time and always interact1".tr(),
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