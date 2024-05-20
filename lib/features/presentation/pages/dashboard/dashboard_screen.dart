import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jidox/features/presentation/pages/dashboard/renenue_chart.dart';
import 'package:jidox/features/presentation/pages/dashboard/total_sales.dart';
import 'package:jidox/features/presentation/widjets/slider_drawer.dart';
import '../../../utils/colors.dart';
import 'card_item.dart';
import 'notification_item.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late List<CardModel> data = [];
  bool isVisible = false;

  @override
  void initState() {
    data.add(CardModel("Customer", "45.212", "2.541"));
    data.add(CardModel("Orders", "25.242", "3.541"));
    data.add(CardModel("REVENUE", "65.212", "4.541"));
    data.add(CardModel("GROWTH", "15.216", "1.541"));
    data.add(CardModel("CONVERSATION", "75.216", "8.541"));
    data.add(CardModel("BALANCE", "71.216", "9541"));
  }

  @override
  Widget build(BuildContext context) {
    getDeviceWidthRatio();

    return Scaffold(
      drawer: SliderDrawer(),
      appBar: AppBar(
          title: const Text(
            '',
          ),
          actions:[Container(width: 150,
            margin: EdgeInsetsDirectional.symmetric(horizontal: 15),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(onTap: (){
                },
                    child: Container(child: Icon(Icons.notification_add,color: Colors.red,))),
                Icon(Icons.settings,color: Colors.grey,),
                Icon(Icons.wifi_tethering,color: Colors.grey,),
                Icon(Icons.settings,color: Colors.grey,),
              ],
            ),
          ),] ,
          backgroundColor: Colors.white),
      // drawer: SliderDrawer(),
      // appBar: MyAppbar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: greey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin:
                  EdgeInsetsDirectional.only(top: 10, start: 15, end: 15),
                  child: Text(
                    "Dashboard",
                    style: TextStyle(
                        color: darkColor, fontWeight: FontWeight.bold),
                  )),

              Visibility(
                visible: isVisible == false,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    // alignment: AlignmentDirectional.center,
                    padding:
                        const EdgeInsetsDirectional.only(top: 20, bottom: 30),
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 2.7,
                      ),
                      itemBuilder: (context, index) => CardItem(
                          title: data[index].title!,
                          valu: data[index].value!,
                          rate: data[index].rate!,
                          index: index),
                      itemCount: data.length,
                    )),
              ),
              Visibility(
                visible: isVisible == true,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    // alignment: AlignmentDirectional.center,
                    padding:
                        const EdgeInsetsDirectional.only(top: 20, bottom: 30),
                    child: SingleChildScrollView(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) => CardItem(
                            title: data[index].title!,
                            valu: data[index].value!,
                            rate: data[index].rate!,
                            index: index),
                        itemCount: data.length,
                      ),
                    )),
              ),
              Visibility(
                visible: isVisible == false,
                child: Container(
                  child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(flex: 2, child: TotalSale()),
                      Expanded(
                          flex: 4,
                          child: Container(

                            child: Revenu_chart(),
                          ))
                    ],
                  ),
                ),
              ),
              Visibility(
                visible: isVisible == true,
                child: Column(
                  children: [
                    TotalSale(),
                    Container(
                      child: Container(
                        child: Revenu_chart(),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }

  void getDeviceWidthRatio() {
    var deviceData = MediaQuery.of(context);
    var screenSize = MediaQuery.of(context).size;
    var deviceOrientation = MediaQuery.of(context).orientation;
    print(screenSize.width.toString());
    if (screenSize.width < 1000) {
      setState(() {
        isVisible = true;
      });
    } else {
      setState(() {
        isVisible = false;
      });
    }
  }
}

class CardModel {
  String? title;
  String? value;
  String? rate;

  CardModel(
    this.title,
    this.value,
    this.rate,
  );
}
