import 'package:flutter/material.dart';
import 'package:renal_classifier_web/utils/responsive_layout.dart';

class NavBar extends StatelessWidget {
  final navLinks = ["Humanização de UTIs"];

  List<Widget> navItem() {
    return navLinks.map((text) {
      return Padding(
        padding: EdgeInsets.only(left: 18),
        child: Text(text, style: TextStyle(fontFamily: "Montserrat-Bold")),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          decoration: BoxDecoration(
              color: Colors.white
          ),
          padding: EdgeInsets.symmetric(horizontal: 45, vertical: 38),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 400,
                    height: 100,
                    child: Text(
                      "Renal Classifier", style: TextStyle(fontSize: 40),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                ],
              )

            ],
          ),
        ),
      ],
    );
  }
}