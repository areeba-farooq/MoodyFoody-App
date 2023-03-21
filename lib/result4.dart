import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'home.dart';

class Result4 extends StatefulWidget {
  const Result4({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Result4();
  }
}

class _Result4 extends State<Result4> {
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
          'Enjoy Your Happiness!!',
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
                      "https://www.licious.in/blog/wp-content/uploads/2021/11/Vegetable-Rolls.jpg",
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
                          "Rolls...🥰",
                          style: GoogleFonts.pacifico(
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 100,
                        ),
                        Text(
                          "Rolls are love, indeed! There's nothing quite like a warm, fluffy roll straight from the oven. Whether you prefer savory or sweet, there's a roll for every taste. From classic dinner rolls to soft, buttery cinnamon rolls, these little treats are always a welcome addition to any meal. Whether you're enjoying them on their own or using them to soak up a delicious sauce, rolls are a versatile and beloved food all around the world. So why wait? Go ahead and treat yourself to a roll today, you deserve it!",
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
