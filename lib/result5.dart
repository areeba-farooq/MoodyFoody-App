import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'home.dart';

class Result5 extends StatefulWidget {
  const Result5({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Result5();
  }
}

class _Result5 extends State<Result5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.bottomToTop, child: const Home()));
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Happy Meals',
          style: GoogleFonts.pacifico(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      "https://img.taste.com.au/e_PAz3pS/taste/2016/11/rich-chocolate-brownie-with-vanilla-bean-ice-cream-76209-1.jpeg",
                      fit: BoxFit.cover,
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 45,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Brownie...",
                          style: GoogleFonts.pacifico(
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 100,
                        ),
                        Text(
                          "Chocolate brownies are a dessert lover's dream come true! Fudgy, rich, and oh-so-decadent, these squares of pure chocolate goodness are the perfect way to satisfy a sweet tooth. Whether you prefer yours with a soft, gooey center or a crisp, crackly crust, there's a chocolate brownie recipe out there for everyone. And with endless variations like nuts, frosting, or even peanut butter swirls, the possibilities are endless. So the next time you're in need of a chocolate fix, remember that a delicious chocolate brownie is just a few ingredients away!",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.publicSans(
                              color: Colors.black87,
                              fontSize: 22,
                              wordSpacing: 1),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 45,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
