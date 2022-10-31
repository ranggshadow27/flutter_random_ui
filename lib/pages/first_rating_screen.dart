import 'package:flutter/material.dart';
import 'package:bwa_firstday_ui/themes/themes.dart';

class FirstRating extends StatefulWidget {
  @override
  State<FirstRating> createState() => _FirstRatingState();
}

class _FirstRatingState extends State<FirstRating> {
  @override
  int selectedEmoji = -1;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColorDay5,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/pizzafull.png'),
                radius: 80,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Pizza Ballado',
                style: poppinsSemibold.copyWith(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                '\$90,00',
                style: poppinsRegualr.copyWith(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Align(
                alignment: Alignment(-1, 1),
                child: Text(
                  'Was it delicious?',
                  style: poppinsRegualr.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  emoji('assets/emoji_1.png', 0),
                  emoji('assets/emoji_2.png', 1),
                  emoji('assets/emoji_3.png', 2),
                  emoji('assets/emoji_4.png', 3),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                width: 200,
                height: 50,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/checkout_page');
                  },
                  child: Text(
                    'Rate Now',
                    style: poppinsSemibold.copyWith(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: greenbtnColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget emoji(
    String image,
    int index,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedEmoji = index;
        });
      },
      child: CircleAvatar(
        backgroundColor:
            selectedEmoji == index ? Color(0xFFEEF0FF) : Color(0xFF37394D),
        radius: 30,
        child: Image.asset(
          image,
          width: 28,
        ),
      ),
    );
  }
}
