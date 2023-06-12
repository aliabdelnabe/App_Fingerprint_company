import 'package:flutter/material.dart';


class MyHeaderDrawer extends StatelessWidget {
  const MyHeaderDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
          padding:const EdgeInsets.all(8),
          height: 120,
          decoration: const BoxDecoration(
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 60,
                width: 80,
                child: Image.asset(
                  "assets/images/logo.png",
                  fit: BoxFit.cover,
                  )
                  ),
                  IconButton(onPressed: (){
                Navigator.pop(
              context,
            );
              },
              icon: Image.asset("assets/icons/close-square-rounded-interface-symbol-with-a-cross.png", 
              color: Theme.of(context).canvasColor) ),
            ],
          ),
        );
  }
}


