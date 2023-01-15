import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nutry_fit/Core/Sizedbox.dart';
import 'package:nutry_fit/Core/colors.dart';
import 'package:nutry_fit/Presentation/Account_Create/widgets.dart';
import 'package:nutry_fit/Presentation/Premium/Un_Locked_Premium/Screen_unlocked1.dart';
import 'package:nutry_fit/Presentation/Premium/widgets.dart';

import '../User/Profile/Screen_Profile_mainPage.dart';

class Screen_Premium extends StatelessWidget {
  const Screen_Premium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            sizzbox(screenheight, 0.04),
            textField(hinttexxt: 'Search here....', PrefixxIcon: Icons.search),
            premiumItemsContainer(
                navigateTo: Screen_Unlocked_1(),
                feature1: 'open ANy Where',
                feature2: 'open ANy Where',
                feature3: 'open ANy Where',
                featureIcon1: Icons.abc,
                featureIcon2: Icons.abc,
                featureIcon3: Icons.abc,
                diseaseName: 'Denemia !',
                screenwidth: screenwidth,
                screenheight: screenheight),
            premiumLOckedItemsContainer(
              diseaseimage: 'assets/images/happy-lady-exercise.jpg',
              screenwidth: screenwidth,
              screenheight: screenheight,
              feature1: 'open ANy Where',
              feature2: 'open ANy Where',
              feature3: 'open ANy Where',
              featureIcon1: Icons.abc,
              featureIcon2: Icons.abc,
              featureIcon3: Icons.abc,
              diseaseName: 'Weight Loss !',
            ),
            premiumLOckedItemsContainer(
              diseaseimage:
                  'assets/images/peptide-therapy-and-weight-loss-2000x1200.webp',
              screenwidth: screenwidth,
              screenheight: screenheight,
              feature1: 'open ANy Where',
              feature2: 'open ANy Where',
              feature3: 'open ANy Where',
              featureIcon1: Icons.abc,
              featureIcon2: Icons.abc,
              featureIcon3: Icons.abc,
              diseaseName: 'Weight Gain !',
            ),
            premiumLOckedItemsContainer(
              diseaseimage: 'assets/images/diebetic.webp',
              screenwidth: screenwidth,
              screenheight: screenheight,
              feature1: 'open ANy Where',
              feature2: 'open ANy Where',
              feature3: 'open ANy Where',
              featureIcon1: Icons.abc,
              featureIcon2: Icons.abc,
              featureIcon3: Icons.abc,
              diseaseName: 'Diabetic !',
            ),
            premiumLOckedItemsContainer(
              diseaseimage: 'assets/images/thyroidism.jpg',
              screenwidth: screenwidth,
              screenheight: screenheight,
              feature1: 'open ANy Where',
              feature2: 'open ANy Where',
              feature3: 'open ANy Where',
              featureIcon1: Icons.abc,
              featureIcon2: Icons.abc,
              featureIcon3: Icons.abc,
              diseaseName: 'Thyroidism !',
            ),
            premiumLOckedItemsContainer(
              diseaseimage: 'assets/images/hypertension.webp',
              screenwidth: screenwidth,
              screenheight: screenheight,
              feature1: 'open ANy Where',
              feature2: 'open ANy Where',
              feature3: 'open ANy Where',
              featureIcon1: Icons.abc,
              featureIcon2: Icons.abc,
              featureIcon3: Icons.abc,
              diseaseName: 'Hypertension !',
            )
          ],
        ),
      ),
    ));
  }
}
