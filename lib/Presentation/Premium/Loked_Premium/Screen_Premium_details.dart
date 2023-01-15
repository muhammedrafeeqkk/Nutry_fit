import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nutry_fit/Core/Sizedbox.dart';
import 'package:nutry_fit/Core/Text.dart';
import 'package:nutry_fit/Core/colors.dart';
import 'package:nutry_fit/Presentation/Premium/Loked_Premium/widget.dart';
import 'package:nutry_fit/Presentation/Splash_Screens/splashB/widgets/widget.dart';

class Screen_premium_Details extends StatelessWidget {
  const Screen_premium_Details(
      {Key? key, required this.imagePath, required this.diseasName})
      : super(key: key);
  final String imagePath;
  final String diseasName;

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Column(
          children: [
            sizzbox(screenheight, 0.08),
            Container(
              height: screenheight * 0.21,
              width: screenwidth,
              decoration: BoxDecoration(
                  gradient: goldWithWHiteGradientcolor,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Normaltext(
                        text: 'Premium Details',
                        size: 15,
                        weight: FontWeight.w500),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Normaltext(
                                text: '* Provide personal dietitian',
                                size: 12,
                                weight: FontWeight.w400),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Normaltext(
                                text: '* Provide well balanced diet',
                                size: 12,
                                weight: FontWeight.w400),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Normaltext(
                                text: '* Weakly assessment of health ',
                                size: 12,
                                weight: FontWeight.w400),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Normaltext(
                                text: '* Help to prevent risk of the disease',
                                size: 12,
                                weight: FontWeight.w400),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            sizzbox(screenheight, 0.07),
            deseaseCountainerWithImage(
                screenwidth: screenwidth,
                screenheight: screenheight,
                diseasName: diseasName,
                imagePath: imagePath),
            sizzbox(screenheight, 0.07),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(primary: grey),
                onPressed: () {},
                icon: Icon(Icons.support_agent_outlined),
                label: Text('more information')),
            sizzbox(screenheight, 0.05),
            priceButton(
                screenwidth: screenwidth,
                context: context,
                diseasName: diseasName,
                imagePath: imagePath,
                screenheight: screenheight)
          ],
        ),
      ),
    );
  }
}
