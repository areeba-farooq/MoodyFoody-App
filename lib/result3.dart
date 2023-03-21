import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'home.dart';

class Result3 extends StatefulWidget {
  const Result3({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Result3();
  }
}

class _Result3 extends State<Result3> {
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
                      "https://www.foodnetwork.com/content/dam/images/food/fullset/2022/02/9/0/KC3004_katie-lee-biegel-edible-cereal-treat-bowls-for-ice-cream-sundae-2_s4x3.jpg",
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
                          "Ice-Cream..",
                          style: GoogleFonts.pacifico(
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 100,
                        ),
                        Text(
                          "Ice cream will make you cool in more ways than one! Whether you're beating the heat on a hot summer day or just looking for a sweet treat to brighten your mood, a scoop (or two) of ice cream is always a welcome indulgence. With so many flavors to choose from, there's sure to be a perfect scoop for every taste. From creamy vanilla to tangy raspberry sorbet, the options are endless. And with the endless combinations of toppings, you can customize your own unique frozen treat. So next time you're feeling hot and bothered, remember that a scoop of ice cream will make you cool in more ways than one!",
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
