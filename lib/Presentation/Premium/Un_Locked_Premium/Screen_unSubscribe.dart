import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nutry_fit/Core/Text.dart';
import 'package:nutry_fit/Core/colors.dart';

class Screen_unSubscribe extends StatelessWidget {
  const Screen_unSubscribe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: screenwidth * 0.1, vertical: screenwidth * 0.2),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Normaltext(
              text: 'premium details', size: 14, weight: FontWeight.w600),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Normaltext(
                    text: '* Provide personal dietitian',
                    size: 12,
                    weight: FontWeight.w500),
                Normaltext(
                    text: '* Provide well balanced diet',
                    size: 12,
                    weight: FontWeight.w500),
                Normaltext(
                    text: '* Weakly assessment of health ',
                    size: 12,
                    weight: FontWeight.w500),
                Normaltext(
                    text: '* Help to prevent risk of the disease',
                    size: 12,
                    weight: FontWeight.w500)
              ],
            ),
          ),
          Divider(
            thickness: 2,
          ),
          Normaltext(
              text: 'Do you want to unsunscribe this  premium?',
              size: 13,
              weight: FontWeight.w600),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Normaltext(
                    text: '* fund not refundable',
                    size: 12,
                    weight: FontWeight.w500)
              ],
            ),
          ),
          ElevatedButton(
              style:
                  ButtonStyle(backgroundColor: MaterialStateProperty.all(grey)),
              onPressed: (() {}),
              child: Normaltext(text: 'ok', size: 12, weight: FontWeight.w500))
        ]),
      ),
    );
  }
}
