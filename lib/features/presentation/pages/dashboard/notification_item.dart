import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notification_item extends StatelessWidget {
  const Notification_item({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min,
      children: [
        Container(width: 100,height: 40,
        color: Colors.red,),
      ],
    );
  }
}
