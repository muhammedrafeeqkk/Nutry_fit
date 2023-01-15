import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nutry_fit/Core/Sizedbox.dart';
import 'package:nutry_fit/Core/Text.dart';
import 'package:nutry_fit/Core/colors.dart';
import 'package:nutry_fit/Presentation/Premium/Loked_Premium/widget.dart';
import 'package:nutry_fit/Presentation/Splash_Screens/splashB/widgets/widget.dart';

class Screen_Payment extends StatefulWidget {
  const Screen_Payment(
      {Key? key,
      required this.diseasName,
      required this.imagePath,
      required this.screenwidth,
      required this.screenheight})
      : super(key: key);
  final String diseasName;
  final String imagePath;
  final double screenwidth;
  final double screenheight;

  @override
  State<Screen_Payment> createState() => _Screen_PaymentState();
}

class _Screen_PaymentState extends State<Screen_Payment> {
  int? valuee;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    valuee = 0;
  }

  setSelecterRadio(val) {
    setState(() {
      valuee = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Column(
          children: [
            sizzbox(widget.screenheight, 0.06),
            deseaseCountainerWithImage(
                screenwidth: widget.screenwidth,
                screenheight: widget.screenheight,
                diseasName: widget.diseasName,
                imagePath: widget.imagePath),
            sizzbox(widget.screenheight, 0.04),
            priceRow(price: '₹999.00', priceitem: 'Premium Amount'),
            priceRow(price: '₹0.00', priceitem: 'GST Amount'),
            Divider(
              thickness: 2,
              endIndent: 11,
              indent: 11,
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Colortext(
                      text: 'TOTAL',
                      size: 15,
                      weight: FontWeight.w600,
                      color: black),
                  Colortext(
                      text: '₹999.00',
                      size: 15,
                      weight: FontWeight.w600,
                      color: black)
                ],
              ),
            ),
            sizzbox(widget.screenheight, 0.015),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Row(
                children: [
                  Colortext(
                      text: 'Payment Options',
                      size: 16,
                      weight: FontWeight.w600,
                      color: black),
                ],
              ),
            ),
            sizzbox(widget.screenheight, 0.01),
            Container(
                margin: EdgeInsets.all(10),
                width: widget.screenwidth,
                height: widget.screenheight * 0.06,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1.2, color: Colors.grey)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Image(
                        image: AssetImage(
                            'assets/images/1896px-Razorpay_logo.svg.png'),
                        height: 18,
                        width: 120,
                      ),
                      Radio(
                        value: 1,
                        groupValue: valuee,
                        activeColor: green,
                        onChanged: (val) {
                          setSelecterRadio(val);

                          // selectedradio(val);
                        },
                      )
                    ])),
            Container(
                margin: EdgeInsets.all(10),
                width: widget.screenwidth,
                height: widget.screenheight * 0.06,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1.2, color: Colors.grey)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Image(
                        image: AssetImage('assets/images/paypal.png'),
                        height: 21,
                        width: 120,
                      ),
                      Radio(
                        value: 2,
                        groupValue: valuee,
                        activeColor: green,
                        onChanged: (val) {
                          setSelecterRadio(val);
                          // selectedradio(val);
                        },
                      )
                    ])),
            sizzbox(widget.screenheight, 0.08),
            getPaymentButton(screenwidth: widget.screenwidth)
          ],
        ),
      ),
    );
  }

  priceRow({required String priceitem, required String price}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Colortext(
              text: priceitem, size: 13, weight: FontWeight.w400, color: grey),
          Colortext(
              text: price, size: 15, weight: FontWeight.w600, color: black)
        ],
      ),
    );
  }
}

Container getPaymentButton({required screenwidth}) {
  return Container(
    decoration: BoxDecoration(
      gradient: GreenGradientcolor,
      borderRadius: BorderRadius.circular(30),
    ),
    width: screenwidth * 0.9,
    height: screenwidth * 0.135,
    child: Center(
      child: Text(
        'conform to payment',
        style:
            TextStyle(fontWeight: FontWeight.w400, color: white, fontSize: 12),
      ),
    ),
  );
}
