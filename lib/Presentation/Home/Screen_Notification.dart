import 'package:flutter/material.dart';

import 'package:nutry_fit/Core/Text.dart';
import 'package:nutry_fit/Core/colors.dart';
import 'package:nutry_fit/Presentation/Premium/Un_Locked_Premium/Widgets/widgets.dart';

class Screen_Notification extends StatelessWidget {
  const Screen_Notification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Normaltext(
                      text: 'Notification', size: 18, weight: FontWeight.w600),
                ],
              )),
          Expanded(
              flex: 10,
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) => Column(
                  children: [
                    notificationListTile(),
                    notificationListTile(),
                  ],
                ),
              ))
        ],
      ),
    );
  }

  ListTile notificationListTile() {
    return ListTile(
        leading:const CircleAvatar(backgroundColor: Colors.pink),
        title: Colortext(
            text: 'haii nokkiyaaalo onn',
            size: 14,
            weight: FontWeight.w300,
            color: grey),
        subtitle: Colortext(
            color: black,
            text: 'About 8 hours ago',
            size: 12,
            weight: FontWeight.w400),
        trailing: PopupMenuButton(
            itemBuilder: (context) => [
                  PopupMenuItem(
                      child: TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.delete),
                          label: Text('delete')))
                ]));
  }
}
