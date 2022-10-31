import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Health First.',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Exercise together with our best \ncommunity fit in the world',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Color(0xFF828284),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/gallery.png',
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/first_empty');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'Shape My Body',
                    style: GoogleFonts.lato(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFAFEA0D),
                  padding: EdgeInsets.symmetric(
                    vertical: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Terms & Conditions',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Color(0xFF828284),
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
