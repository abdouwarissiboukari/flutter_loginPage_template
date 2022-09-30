import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoga/social_page.dart';
import 'package:yoga/delayed_animation.dart';
import 'package:yoga/main.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDECF2),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 30,
          ),
          child: Column(children: [
            DelayedAnimation(
              delay: 1500,
              child: Container(
                height: 170,
                child: Image.asset('images/yoga_1.png'),
              ),
            ),
            DelayedAnimation(
                delay: 2500,
                child: Container(
                  height: 400,
                  child: Image.asset('images/yoga_2.jpeg'),
                )),
            DelayedAnimation(
              delay: 3500,
              child: Container(
                margin: const EdgeInsets.only(
                  top: 30,
                  bottom: 20,
                ),
                child: Text(
                  "Get fitter, stronger, and embrasse a helthier lifestyle",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            DelayedAnimation(
                delay: 4500,
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: d_red,
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.all(13),
                    ),
                    child: const Text('GET STARTED'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SocialPage(),
                        ),
                      );
                    },
                  ),
                ))
          ]),
        ),
      ),
    );
  }
}
