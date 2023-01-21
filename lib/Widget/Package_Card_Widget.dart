import 'package:flutter/material.dart';

class BodyPart extends StatelessWidget {
  final String Price, Heading, Button_text;
  final Color Heading_text_color,
      Price_text_color,
      Card_text_color = Colors.black;
  final Color Button_color, Heading_color, Price_color;
  final Color Card_color = Colors.grey.shade200;
  final double Heading_font_size, Price_font_size;
  final List<Widget> Card_list;

  BodyPart({
    this.Heading_color = Colors.blue,
    this.Price_color = Colors.blue,
    this.Heading_text_color = Colors.white,
    this.Price_text_color = Colors.white,
    this.Button_color = Colors.blue,
    this.Heading_font_size = 20,
    this.Price_font_size = 15,
    Key? key,
    required this.Price,
    required this.Heading,
    required this.Button_text,
    required this.Card_list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width > 600 ? size.width / 2.1 : size.width,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Stack(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(top: 35),
              title: Container(
                decoration: BoxDecoration(
                  color: Heading_color,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                  ),
                ),
                height: 50,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Heading,
                      style: TextStyle(
                          color: Heading_text_color,
                          fontSize: Heading_font_size,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              subtitle: Card(
                margin: EdgeInsets.zero,
                color: Card_color,
                shadowColor: Colors.black.withOpacity(.5),
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: Card_list +
                        [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Button_color,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: Text(
                                  Button_text,
                                ),
                              ),
                            ],
                          ),
                        ],
                  ),
                ),
              ),
            ),
            Positioned(
                top: 0,
                left: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Price_color,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                  ),
                  height: 50,
                  child: Text(
                    Price,
                    style: TextStyle(
                        fontSize: Price_font_size, color: Price_text_color),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
