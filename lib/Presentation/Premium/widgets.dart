import 'package:flutter/material.dart';
import 'package:nutry_fit/Core/colors.dart';
import 'package:nutry_fit/Presentation/Premium/Loked_Premium/Screen_Premium_details.dart';

import '../../Core/Images.dart';
import '../../Core/Text.dart';
import '../Message/widget.dart';
import 'Un_Locked_Premium/Widgets/widgets.dart';

class premiumItemsContainer extends StatelessWidget {
  const premiumItemsContainer({
    Key? key,
    required this.screenwidth,
    required this.screenheight,
    required this.diseaseName,
    required this.feature1,
    required this.feature2,
    required this.feature3,
    required this.featureIcon1,
    required this.featureIcon2,
    required this.featureIcon3,required  this.navigateTo,
    
  }) : super(key: key);

  final double screenwidth;
  final double screenheight;
  final String diseaseName;
  final String feature1;
  final String feature2;
  final String feature3;
  final IconData featureIcon1;
  final IconData featureIcon2;
  final IconData featureIcon3;
  final navigateTo;

  @override
  Widget build(BuildContext context ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: InkWell(
        onTap:() => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => navigateTo,
                    )),
        child: Container(
          width: screenwidth * 0.89,
          height: screenheight * 0.21,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: skyGreen,
          ),
          child: Column(children: [
            Expanded(
                flex: 9,
                child: Row(
                  children: [
                    Expanded(
                        flex: 4,
                        child: Container(
                          child: Center(
                            child: nutryLogoOnlyNormal(width: 90),
                          ),
                        )),
                    Expanded(
                        flex: 5,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              iconText(text: feature1, iconshape: featureIcon1),
                              iconText(iconshape: featureIcon2, text: feature2),
                              iconText(iconshape: featureIcon3, text: feature3)
                            ],
                          ),
                        ))
                  ],
                )),
            Expanded(
                flex: 3,
                child: Container(
                    child: Center(
                      child: Colortext(
                          text: diseaseName,
                          size: 15,
                          weight: FontWeight.w500,
                          color: white),
                    ),
                    height: screenheight * 0.09,
                    decoration: const BoxDecoration(
                      gradient: goldGradientcolor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(18),
                          bottomRight: Radius.circular(18)),
                    )))
          ]),
        ),
      ),
    );
  }
}

class premiumLOckedItemsContainer extends StatelessWidget {
  const premiumLOckedItemsContainer({
    Key? key,
    required this.screenwidth,
    required this.screenheight,
    required this.diseaseName,
    required this.feature1,
    required this.feature2,
    required this.feature3,
    required this.featureIcon1,
    required this.featureIcon2,
    required this.featureIcon3, required this.diseaseimage,
  }) : super(key: key);

  final double screenwidth;
  final double screenheight;
  final String diseaseName;
  final String feature1;
  final String feature2;
  final String feature3;
  final IconData featureIcon1;
  final IconData featureIcon2;
  final IconData featureIcon3;
  final String diseaseimage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Screen_premium_Details(diseasName: diseaseName,imagePath:diseaseimage ),)),
        child: Stack(children: [
          Container(
            width: screenwidth * 0.89,
            height: screenheight * 0.21,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: skyBlack,
            ),
            child: Column(children: [
              Expanded(
                  flex: 9,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 4,
                          child: Container(
                            child: Center(
                              child: nutryLogoOnlyNormal(width: 90),
                            ),
                          )),
                      Expanded(
                          flex: 5,
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                iconText(text: feature1, iconshape: featureIcon1),
                                iconText(iconshape: featureIcon2, text: feature2),
                                iconText(iconshape: featureIcon3, text: feature3)
                              ],
                            ),
                          ))
                    ],
                  )),
              Expanded(
                  flex: 3,
                  child: Container(
                      child: Center(
                        child: Colortext(
                            text: diseaseName,
                            size: 15,
                            weight: FontWeight.w500,
                            color: white),
                      ),
                      height: screenheight * 0.09,
                      decoration: const BoxDecoration(
                        gradient: blackGradientcolor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(18),
                            bottomRight: Radius.circular(18)),
                      )))
            ]),
          ),
          Container(
            child: Icon(
              Icons.lock,
              size: 50,
            ),
            width: screenwidth * 0.89,
            height: screenheight * 0.21,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.grey.withOpacity(0.7)),
          ),
        ]),
      ),
    );
  }
}

 