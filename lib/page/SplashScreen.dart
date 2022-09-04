import 'dart:async';
import 'package:flutter/material.dart';
import 'package:task_app_firebase/page/home_page.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
//Navigates to new screen after 5 seconds.
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                scale: 0.5,
                image: NetworkImage(
                    'https://t4.ftcdn.net/jpg/05/09/32/23/360_F_509322365_GWIEP8tMiN78YZKub0CgGsEfcvT9q2kh.jpg'),
              ),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Colors.white,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 100.0, left: 100.0),
                        child: CircularProgressIndicator(
                          backgroundColor: Colors.blue,
                          valueColor:
                          AlwaysStoppedAnimation<Color>(Colors.white),
                          // minHeight: 10.0,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 10.0))
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}