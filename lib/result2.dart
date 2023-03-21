import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'home.dart';

class Result2 extends StatefulWidget {
  const Result2({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Result2();
  }
}

class _Result2 extends State<Result2> {
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
          'Enjoy your Happiness!',
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
                      "https://i.ytimg.com/vi/XKC62IFnH2s/maxresdefault.jpg",
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
                          "Pizza...",
                          style: GoogleFonts.pacifico(
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 100,
                        ),
                        Text(
                          "Pizza will cheer your mood, no doubt about it! There's something about the combination of warm, gooey cheese, savory tomato sauce, and your choice of toppings that just can't be beat. Whether you're a fan of classic pepperoni, veggie-packed supreme, or something a little more exotic, there's a pizza out there for everyone. And with so many different crust options to choose from, there's sure to be a pizza that fits your taste and dietary needs. So the next time you're feeling down, why not treat yourself to a delicious slice of pizza? It's sure to bring a smile to your face and lift your spirits in no time!",
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
