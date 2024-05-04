// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:musicstudio/Screenss/audio_query.dart';
import 'package:musicstudio/Screenss/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {  
  final GetAudio _getAudio = GetAudio();
  @override
  void initState() {
  
    

    debugPrint('heyy');
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      ),
    );
   
    _getAudio.requestPermision();
  

      super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(6, 16, 68, 1),
              Color.fromRGBO(245, 0, 139, 1),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Image.network(          
                         "https://s3.amazonaws.com/thumbnails.venngage.com/template/4f75dd4f-0c29-4151-8455-97dcaadb32b3.png",
                height: 200,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Music Studio',
                    style: GoogleFonts.aboreto(
                        color: Colors.white70, fontSize: 22),
                  ),
                  SizedBox(
                    height: 32,
                    child: Text(
                      'X',
                      style: GoogleFonts.aboreto(
                        color: Colors.red,
                        fontSize: 28,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
        // body: Image.network(          
        //                  "https://s3.amazonaws.com/thumbnails.venngage.com/template/4f75dd4f-0c29-4151-8455-97dcaadb32b3.png",
        //         height: 200,
        //       ),
        // Image.asset("assets/images/splashhh.jpg",fit: BoxFit.cover,height: double.infinity,width: double.infinity,)
        );
  }
}
