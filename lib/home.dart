import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:moody_foody/result.dart';
import 'package:moody_foody/result2.dart';
import 'package:moody_foody/result3.dart';
import 'package:moody_foody/result4.dart';
import 'package:moody_foody/result5.dart';
import 'package:moody_foody/result6.dart';
import 'package:page_transition/page_transition.dart';
import 'globals.dart' as globals;

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'How are you Feeling Today?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.pacifico(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 1.5,
                      width: MediaQuery.of(context).size.width / 2.2,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              int random(int min, int max) {
                                return min + Random().nextInt(max - min);
                              }

                              globals.a = random(1, 3);
                              print(globals.a);
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.bottomToTop,
                                      child: const Result()));
                            },
                            child: SizedBox(
                                height: MediaQuery.of(context).size.height / 5,
                                width: MediaQuery.of(context).size.width / 2.3,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/moods/happy.png',
                                      height: 80,
                                      width: 80,
                                    ),
                                    Text(
                                      'Happy',
                                      style: GoogleFonts.pacifico(
                                        color: Colors.black,
                                        fontSize: 23,
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 100,
                          ),
                          InkWell(
                            onTap: () {
                              int random(int min, int max) {
                                return min + Random().nextInt(max - min);
                              }

                              globals.a = random(3, 5);
                              print(globals.a);
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.bottomToTop,
                                      child: const Result2()));
                            },
                            child: SizedBox(
                                height: MediaQuery.of(context).size.height / 5,
                                width: MediaQuery.of(context).size.width / 2.3,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/moods/sad.png',
                                      height: 80,
                                      width: 80,
                                    ),
                                    Text(
                                      'Sad',
                                      style: GoogleFonts.pacifico(
                                        color: Colors.black,
                                        fontSize: 25,
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 100,
                          ),
                          InkWell(
                            onTap: () {
                              int random(int min, int max) {
                                return min + Random().nextInt(max - min);
                              }

                              globals.a = random(5, 7);

                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.bottomToTop,
                                      child: const Result3()));
                            },
                            child: SizedBox(
                                height: MediaQuery.of(context).size.height / 5,
                                width: MediaQuery.of(context).size.width / 2.3,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/moods/angry.png',
                                      height: 80,
                                      width: 80,
                                    ),
                                    Text(
                                      'Angry',
                                      style: GoogleFonts.pacifico(
                                        color: Colors.black,
                                        fontSize: 25,
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 1.5,
                      width: MediaQuery.of(context).size.width / 2.2,
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 100,
                          ),
                          InkWell(
                            onTap: () {
                              int random(int min, int max) {
                                return min + Random().nextInt(max - min);
                              }

                              globals.a = random(7, 9);

                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.bottomToTop,
                                      child: const Result4()));
                            },
                            child: SizedBox(
                                height: MediaQuery.of(context).size.height / 5,
                                width: MediaQuery.of(context).size.width / 2.3,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/moods/emoji.png',
                                      height: 80,
                                      width: 80,
                                    ),
                                    Text(
                                      'Love',
                                      style: GoogleFonts.pacifico(
                                        color: Colors.black,
                                        fontSize: 25,
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 100,
                          ),
                          InkWell(
                            onTap: () {
                              int random(int min, int max) {
                                return min + Random().nextInt(max - min);
                              }

                              globals.a = random(9, 11);

                              print(random(9, 11));
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.bottomToTop,
                                      child: const Result5()));
                            },
                            child: SizedBox(
                                height: MediaQuery.of(context).size.height / 5,
                                width: MediaQuery.of(context).size.width / 2.3,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/moods/sleepy.png',
                                      height: 80,
                                      width: 80,
                                    ),
                                    Text(
                                      'Lazy',
                                      style: GoogleFonts.pacifico(
                                        color: Colors.black,
                                        fontSize: 25,
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 100,
                          ),
                          InkWell(
                            onTap: () {
                              int random(int min, int max) {
                                return min + Random().nextInt(max - min);
                              }

                              globals.a = random(11, 13);

                              print(random(11, 13));
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.bottomToTop,
                                      child: const Result6()));
                            },
                            child: SizedBox(
                                height: MediaQuery.of(context).size.height / 5,
                                width: MediaQuery.of(context).size.width / 2.3,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/moods/neutral.png',
                                      height: 80,
                                      width: 80,
                                    ),
                                    Text(
                                      'Neutral',
                                      style: GoogleFonts.pacifico(
                                        color: Colors.black,
                                        fontSize: 25,
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
