import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoga/delayed_animation.dart';
import 'package:yoga/main.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: d_red, //Colors.white.withOpacity(1),
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("GET CONNECTED"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DelayedAnimation(
                    delay: 1500,
                    child: Text(
                      "Connect email address",
                      style: GoogleFonts.poppins(
                        color: d_red,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  DelayedAnimation(
                    delay: 2500,
                    child: Text(
                      "It's recommanded to connect your email address for us to better protect uour information.",
                      style: GoogleFonts.poppins(
                        color: Colors.grey[600],
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            LoginForm(),
            const SizedBox(
              height: 125,
            ),
            DelayedAnimation(
              delay: 5500,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: d_red,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 125,
                    vertical: 13,
                  ),
                ),
                child: Text(
                  'CONFIRM',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyApp(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 35),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: DelayedAnimation(
                    delay: 6500,
                    child: Text(
                      "SKIP",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: [
          DelayedAnimation(
            delay: 3500,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Your Email',
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          DelayedAnimation(
            delay: 4500,
            child: TextField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
                labelText: 'Password',
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.visibility,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
