import 'dart:ui';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jidox/features/utils/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardItem extends StatelessWidget {
  final String title;
  final String valu;
  final String rate;
  final int index;
  const CardItem({super.key, required this.title, required this.valu, required this.rate, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.all(10),
      padding: EdgeInsetsDirectional.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(5))),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 2,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "${title}",
                  style: TextStyle(fontSize: 13, color: Colors.blueGrey),
                ),
                SizedBox(height: 5,),
                Text(
                  "${valu}",
                  style: TextStyle(
                      fontSize: 11,
                      color: darkColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5,),

                Row(crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(  decoration: BoxDecoration(
                        color: green,
                        border: Border.all(color: green),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                     // padding: EdgeInsetsDirectional.all(5),
                      width:50,
                      height: 30,

                      child: Center(
                          child: Text(
                        "${rate}",
                        style: TextStyle(fontSize: 11,color: Colors.white),
                      )),
                    ),
                    SizedBox(width: 5,),
                    Text(
                      "Since Last Month",
                      style: TextStyle(fontSize: 12, color: Colors.blueGrey),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(width: 30,height: 30,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Center(
                  child: Icon(
                Icons.person,
                color: Colors.white,
              ))),
        ],
      ),
    );
  }
}
