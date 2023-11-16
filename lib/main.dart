import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_ins/common/utils/colors.dart';
import 'package:my_ins/features/responsive/mobie_screen_layout.dart';
import 'package:my_ins/features/responsive/responsive_layout_screen.dart';
import 'package:my_ins/features/responsive/web_screen_layout.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  try {
    if(kIsWeb){
      await Firebase.initializeApp(
        options: FirebaseOptions(apiKey: "AIzaSyAz6tIOi6tvqiwi1sgqwctrH2NVX5qgwZI",
            appId: "1:926155216151:web:fa76dad533c65479c89352",
            messagingSenderId: "G-53NY6718R5",
            projectId: "myins-5b1d0",
            authDomain: "myins-5b1d0.firebaseapp.com",
            databaseURL: "https://myins-5b1d0-default-rtdb.asia-southeast1.firebasedatabase.app",
            storageBucket: "myins-5b1d0.appspot.com"),
      );
    }else{
      await Firebase.initializeApp(
      );
    }
  }catch(e){
    print("main func : error : ${e.toString()}");
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:mobileBackgroundColor
      ),
      home: ResponsiveLayout(mobileScreenLayout: MobileScreenLayout() , webScreenLayout: WebScreenLayout(),)
    );
  }
}