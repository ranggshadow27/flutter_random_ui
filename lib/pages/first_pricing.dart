import 'package:flutter/material.dart';
import 'package:bwa_firstday_ui/themes/themes.dart';

class FirstPricing extends StatefulWidget {
  @override
  State<FirstPricing> createState() => _FirstPricingState();
}

class _FirstPricingState extends State<FirstPricing> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 36,
                  ),
                  child: Column(
                    children: [
                      header(
                        'assets/crown.png',
                        'Which one you wish\nto Upgrade?',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      optiontile(0, 'assets/pig.png', 'Money Security',
                          'support', ' 24/7'),
                      SizedBox(
                        height: 20,
                      ),
                      optiontile(1, 'assets/note.png', 'Automation',
                          'we provide', ' Invoice'),
                      SizedBox(
                        height: 20,
                      ),
                      optiontile(2, 'assets/coinflat.png', 'Balance Report',
                          'up to', ' 10K'),
                    ],
                  ),
                ),
                Expanded(
                  child: bottomupgrade(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget header(
    String image,
    String headertitle,
  ) {
    return Column(
      children: [
        SizedBox(
          height: 80,
        ),
        CircleAvatar(
          backgroundColor: Color(0xFFFBD7FF),
          child: Image.asset(
            image,
            width: 32,
          ),
          radius: 36,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          headertitle,
          style: poppinsSemibold.copyWith(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }

  Widget optiontile(
    int index,
    String images,
    String title,
    String subtitle,
    String coloredSubtitle,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 14,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(37),
          side: BorderSide(
            color:
                selectedIndex == index ? textblueColorDay6 : Color(0xFFD9DEEA),
            width: 2,
          ),
        ),
        leading: Image.asset(
          images,
          width: 56,
        ),
        title: Text(
          title,
          style: poppinsRegualr.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        trailing: selectedIndex == index
            ? Padding(
                padding: const EdgeInsets.only(
                  right: 12,
                ),
                child: CircleAvatar(
                  backgroundColor: textblueColorDay6,
                  radius: 14,
                  child: Image.asset(
                    'assets/ic_check.png',
                    width: 12,
                  ),
                ),
              )
            : SizedBox(),
        subtitle: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: subtitle,
                style: poppinsRegualr.copyWith(
                  color: textgreyColorDay6,
                  fontSize: 12,
                ),
              ),
              TextSpan(
                text: coloredSubtitle,
                style: poppinsRegualr.copyWith(
                  color: textblueColorDay6,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class bottomupgrade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 66,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/first_rating');
            },
            style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: textblueColorDay6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 26,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upgrade Now',
                    style: poppinsSemibold.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Image.asset(
                    'assets/arrow-right-circle.png',
                    width: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
