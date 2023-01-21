import 'package:flutter/material.dart';

Widget headerWidget(BuildContext context,
    {required String image_url,
    required String Head_text,
    required String Sub_text}) {
  return Column(
    children: [
      Container(
          height: MediaQuery.of(context).padding.top * 2 + 10,
          color: Colors.deepOrange.shade800),
      Expanded(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  image_url,
                ),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.blue.withOpacity(0.5), BlendMode.overlay),
                opacity: .8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              Head_text,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: Colors.white),
            ),
            Text(
              Sub_text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ))
    ],
  );
}
