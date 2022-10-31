import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF17171A),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 50,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/coinlogo.png',
                width: 50,
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                'Welcome back. \nLet’s make money.',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFF262A34),
                    hintText: 'Email',
                    hintStyle: GoogleFonts.openSans(
                      color: Color(0xFF6F7075),
                      fontSize: 12,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                  ),
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                  cursorColor: Colors.yellow,
                  cursorWidth: 1,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      splashColor: Colors.transparent,
                      onPressed: () {
                        setState(() {
                          obsecureText = !obsecureText;
                        });
                      },
                      icon: Icon(
                        obsecureText ? Icons.visibility_off : Icons.visibility,
                        size: 20,
                        color: Color(0xFF6F7075),
                      ),
                    ),
                    filled: true,
                    fillColor: Color(0xFF262A34),
                    hintText: 'Password',
                    hintStyle: GoogleFonts.openSans(
                      color: Color(0xFF6F7075),
                      fontSize: 12,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                  ),
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                  cursorColor: Colors.yellow,
                  cursorWidth: 1,
                  obscureText: obsecureText,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Align(
                alignment: Alignment(1, 0),
                child: Text(
                  'Forgot My Password',
                  style: GoogleFonts.poppins(
                    color: Color(0xFF6F7075),
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 45,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/first_started');
                  },
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.poppins(
                      color: Color(0xFF6B4909),
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFFCAC15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Align(
                alignment: Alignment(0, 0),
                child: RichText(
                  text: TextSpan(
                    text: 'Don’t have account? ',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                    ),
                    children: [
                      TextSpan(
                        text: 'Sign Up',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
