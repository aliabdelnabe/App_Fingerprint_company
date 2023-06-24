
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class FingerprintServices8 extends StatelessWidget {
  const FingerprintServices8({
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
            width: width * 0.77,
            height: 280,
            child: SvgPicture.asset("assets/images/image_clients_manege.svg",
            fit: BoxFit.cover,
            ),
          ),
        Text("ERP System".tr(),
          style:  TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          fontFamily: "Cairo",
          color: Theme.of(context).secondaryHeaderColor,
                                  ),
                                ),
    Text("ERP System title1".tr(),
                maxLines: 7,
                overflow: TextOverflow.ellipsis,
                  style:  TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Cairo",
                  color: Theme.of(context).secondaryHeaderColor,
                ),
                ),
                Text("ERP System title2".tr(),
                maxLines: 7,
                overflow: TextOverflow.ellipsis,
                  style:  TextStyle(
                  fontSize: 15,
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
