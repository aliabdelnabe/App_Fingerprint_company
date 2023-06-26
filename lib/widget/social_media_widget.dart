import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
          const SizedBox(height: 15),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: (){
                    launch('https://www.facebook.com/fingerprintmedia1?mibextid=ZbWKwL');
                  },
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    width: 25,
                    height: 25,
                    child: Image.asset("assets/icons/facebook (1).png",color: Colors.white,),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    launch('https://twitter.com/?lang=ar');
                  },
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    width: 25,
                    height: 25,
                    child: Image.asset("assets/icons/twitter-sign.png",color: Colors.white,),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    launch('https://www.instagram.com/fingerprint_media_1/?igshid=ZDdkNTZiNTM%3D');
                  },
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    width: 25,
                    height: 25,
                    child: Image.asset("assets/icons/instagram.png",color: Colors.white,),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: (){
                    launch('https://www.linkedin.com/in/finger-print-2528361b1');
                  },
                  child: Container(
                    width: 25,
                    height: 25,
                    child: Image.asset("assets/icons/linkedin-logo.png",color: Colors.white,),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    launch('https://www.snapchat.com/add/fingerprintm');
                  },
                  child: Container(
                    width: 25,
                    height: 25,
                    child: Image.asset("assets/icons/snapchat (1).png",color: Colors.white,),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    launch('https://wa.me/201090844348');
                  },
                  child: Container(
                    width: 25,
                    height: 25,
                    child: Image.asset("assets/icons/whatsapp (1).png",color: Colors.white,),
                  ),
                ),
              ],
            )
      ],
    ),
            );
  }
}



