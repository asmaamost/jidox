import 'package:flutter/cupertino.dart';

import '../../../utils/colors.dart';

class RevenuHeader extends StatelessWidget {
  const RevenuHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: codeBg,
          border: Border.all(color: codeBg),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsetsDirectional.only(start: 30, end: 10, top: 15),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Curent wek',
                  style: TextStyle(color: darkColor, fontSize: 15),
                ),
                Text(
                  "1705.54 ",
                  style: TextStyle(color: darkColor, fontSize: 15),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'previous wek',
                  style: TextStyle(color: darkColor, fontSize: 15),
                ),
                Text(
                  "1705.54 ",
                  style: TextStyle(color: darkColor, fontSize: 15),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Conversation',
                  style: TextStyle(color: darkColor, fontSize: 15),
                ),
                Text(
                  "7789 ",
                  style: TextStyle(color: darkColor, fontSize: 15),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Customers',
                  style: TextStyle(color: darkColor, fontSize: 15),
                ),
                Text(
                  "1705.54 ",
                  style: TextStyle(color: darkColor, fontSize: 15),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
