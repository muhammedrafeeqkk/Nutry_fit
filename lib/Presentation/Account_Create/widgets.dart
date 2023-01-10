import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nutry_fit/Core/colors.dart';
import 'package:nutry_fit/Core/text.dart';

Widget textField({required String hinttexxt, required IconData PrefixxIcon}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 11),
    child: TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(PrefixxIcon),
        hintText: hinttexxt,
        hintStyle: TextStyle(
          fontSize: 12,
        ),
        fillColor: Color.fromARGB(255, 240, 245, 245),
        filled: true,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 14.0, horizontal: 1.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none),
      ),
    ),
  );
}

Widget textFieldwithsufixIcon(
    {required String hinttexxt, required IconData PrefixxIcon}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 11),
    child: TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(PrefixxIcon),
        hintText: hinttexxt,
        hintStyle: TextStyle(
          fontSize: 12,
        ),
        suffixIcon: Icon(Icons.remove_red_eye_outlined),
        fillColor: Color.fromARGB(255, 240, 245, 245),
        filled: true,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 14.0, horizontal: 1.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none),
      ),
    ),
  );
}

Widget loginWithWb(double screenwidth, String imagepath) {
  return Padding(
    padding: const EdgeInsets.all(13.0),
    child: Container(
      child: Center(
          child: Image(
        image: AssetImage(imagepath),
        height: 25,
        width: 25,
      )),
      width: screenwidth * 0.11,
      height: screenwidth * 0.11,
      decoration: BoxDecoration(
          // color: Colors.blue,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12)),
    ),
  );
}

Widget textFieldwithContainer(
    {required String hinttexxt,
    required IconData PrefixxIcon,
    required String text}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 11),
    child: TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(PrefixxIcon),
        hintText: hinttexxt,
        icon: Container(
          child: Center(
            child: Colortext(
                text: text,
                size: 16,
                weight: FontWeight.w600,
                color: purewhite),
          ),
          width: 47,
          height: 47,
          decoration: BoxDecoration(
            gradient: PinkGradientcolor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        hintStyle: TextStyle(
          fontSize: 12,
        ),
        fillColor: Color.fromARGB(255, 240, 245, 245),
        filled: true,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 14.0, horizontal: 1.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none),
      ),
    ),
  );
}

Widget textFieldwithsufixIconTogglebar(
    {required String hinttexxt, required IconData PrefixxIcon}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 11),
    child: TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(PrefixxIcon),
        hintText: hinttexxt,
        hintStyle: TextStyle(
          fontSize: 12,
        ),
        suffixIcon: PopupMenuButton(
          icon: Icon(Icons.arrow_drop_down),
          itemBuilder: (context) => [
            PopupMenuItem(
                child: Column(
              children: [
                TextButton(
                    onPressed: (() {}),
                    child: Colortext(
                        text: 'Male',
                        size: 14,
                        weight: FontWeight.w500,
                        color: black)),
                TextButton(
                    onPressed: (() {}),
                    child: Colortext(
                        text: 'Female',
                        size: 14,
                        weight: FontWeight.w500,
                        color: black)),
              ],
            ))
          ],
        ),
        fillColor: Color.fromARGB(255, 240, 245, 245),
        filled: true,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 14.0, horizontal: 1.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none),
      ),
    ),
  );
}
