import 'package:flutter/material.dart';
import 'package:jidox/features/presentation/pages/dashboard/dashboard_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() {
  // Must add this line.
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: MyApp()));

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JIDOX',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: (context, child) {
        return MaterialApp(
          builder: (context, child) {
            final mediaQueryData = MediaQuery.of(context);
            return MediaQuery(
              data: mediaQueryData.copyWith(textScaleFactor: 1.0),
              child: child!,
            );
          },
          // translations will be displayed in that locale


          title: 'Jidox',
          // navigatorKey: navigatorKey,
          theme: ThemeData(
          /*  primaryColor: mainColor,
            primaryColorDark: mainColor,
            hintColor: mainColor,*/

            fontFamily: "cairo",
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
                .copyWith(secondary: Colors.blue),
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: "SplashScreen",
          // home: PaymentNewScreen(),
          //  home: MyAcheivments(),
          home: DashboardScreen(),
        );
      },
    );
  }
}
