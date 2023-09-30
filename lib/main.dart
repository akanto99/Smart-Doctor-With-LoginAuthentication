import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_doctor/Screens/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    // systemNavigationBarColor: Colors.lightBlue,
    statusBarColor: const Color(0xFF2BAD93),
  ));

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.lightGreen,
          textTheme: TextTheme(
              //To support the following, you need to use the first initialization method
              button: TextStyle(fontSize: 45.sp)),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
