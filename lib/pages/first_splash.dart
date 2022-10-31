import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF13131E),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/login_page');
              },
              child: Image.asset(
                'assets/swords.png',
                width: 140,
              ),
            ),
            Text(
              "VENTURE",
              style: GoogleFonts.dmSerifDisplay(
                color: Colors.white,
                fontSize: 32,
                letterSpacing: 8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
