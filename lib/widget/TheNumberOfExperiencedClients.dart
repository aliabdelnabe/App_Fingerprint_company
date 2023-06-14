
import 'package:flutter/material.dart';

class TheNumberOfExperiencedClients extends StatelessWidget {
  const TheNumberOfExperiencedClients({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Theme.of(context).hoverColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child:const Text("49",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w800
                      ),
                      ),
                    ),
                    Container(
                      child:const Text("+",
                      style: TextStyle(
                        fontSize: 60,
                        color: Colors.amber,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w800
                      ),
                      ),
                    ),
                  ],
                ),
                Container(
                      child:const Text("موقع الكترونى",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w600
                      ),
                      ),
                    ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child:const Text("146",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w800
                      ),
                      ),
                    ),
                    Container(
                      child:const Text("+",
                      style: TextStyle(
                        fontSize: 60,
                        color: Colors.amber,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w800
                      ),
                      ),
                    ),
                  ],
                ),
                Container(
                      child:const Text("حملة اعلانيه",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w600
                      ),
                      ),
                    ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child:const Text("10",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w800
                      ),
                      ),
                    ),
                    Container(
                      child:const Text("+",
                      style: TextStyle(
                        fontSize: 60,
                        color: Colors.amber,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w800
                      ),
                      ),
                    ),
                  ],
                ),
                Container(
                      child:const Text("سنوات خبره",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w600
                      ),
                      ),
                    ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child:const Text("34",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w800
                      ),
                      ),
                    ),
                    Container(
                      child:const Text("+",
                      style: TextStyle(
                        fontSize: 60,
                        color: Colors.amber,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w800
                      ),
                      ),
                    ),
                  ],
                ),
                Container(
                      child:const Text("عميل",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w600
                      ),
                      ),
                    ),
                    const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
