import 'package:flutter/material.dart';
import 'package:mobile_app/home_page.dart';
import 'package:mobile_app/main_page.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Center(
        child: Column(
mainAxisAlignment: MainAxisAlignment.center,

          children: [
            /*first portion start here*/
          Text("Mobile Shop",style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),),
          /*first portion end here*/
            const SizedBox(height: 20,),
            /*second portion start here*/
          Image.asset('assets/img1.png'),
            /*second portion end here*/
            const SizedBox(height: 20,),
            /*third portion start here*/
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.grey.shade100,
                fixedSize: Size(200, 60),
              ),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>MainPage()));
              }, child:Text('Start Shopping',style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),),),
            /*third portion end here*/

        ],),
      ),),
    );
  }
}
