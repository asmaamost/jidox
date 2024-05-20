import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../utils/colors.dart';

class SliderDrawer extends StatefulWidget {
  const SliderDrawer({
    super.key,
  });

  @override
  State<SliderDrawer> createState() => _SliderDrawerState();
}

class _SliderDrawerState extends State<SliderDrawer> {
  // SliderView?slider;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          //const SliderHeader(),
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/ic_person.jpg'),
                ),
                SizedBox(width: 10.w),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Doris Larson",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      "Founder",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: menuBlue,
            ),
            title: const Text('DashBoard',style: TextStyle(color: menuBlue)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.chat,
              color: darkColor,

            ),
            title: const Text('Chat',style: TextStyle(color: darkColor)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.mail,
              color: darkColor,

            ),
            title: const Text('Email',style: TextStyle(color: darkColor)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.task,
              color: darkColor,
            ),
            title: const Text('Tasks',style: TextStyle(color: darkColor)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.file_copy,
              color: darkColor,
            ),
            title: const Text('File Manager',style: TextStyle(color: darkColor),),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
