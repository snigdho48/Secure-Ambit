import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Features_card extends StatelessWidget {
  final String Heading, Description;
  final Widget Icon;
  const Features_card({
    Key? key,
    required this.size,
    required this.Heading,
    required this.Description,
    required this.Icon,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Stack(alignment: Alignment.topLeft, children: [
        Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(left: 10, right: 10),
            constraints: const BoxConstraints(
              minHeight: 50,
            ),
            width: size.width > 600 ? size.width / 3.5 : size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text(
                    Heading,
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 60),
                  child: Text(
                    Description,
                    style: TextStyle(fontWeight: FontWeight.w200, fontSize: 13),
                  ),
                )
              ],
            )),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            width: 50,
            height: 50,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 2),
            color: Colors.grey.shade200,
            child: Icon,
          ),
        )
      ]),
    );
  }
}
