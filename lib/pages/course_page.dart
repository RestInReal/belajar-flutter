import 'package:flutter/material.dart';
import 'package:flutter_percobaan_emulator/theme.dart';
import 'package:flutter_percobaan_emulator/widget/course_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class coursePage extends StatelessWidget {
  const coursePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/inspection.png'),
              ),
            ),
          ),
          ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 225,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                  color: backgroundColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Brand Marketing Design',
                      style: blackTextStyle.copyWith(fontSize: 22),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'How to build strong company with passion',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                    SizedBox(
                      height: 25,
                    ),

                    //NOTE : PREPARING
                    Text(
                      '# PREPARING',
                      style: blackTextStyle.copyWith(fontSize: 18),
                    ),
                    CourseTile(
                      imageUrl: 'assets/icon 1.png',
                      title: 'Ideation',
                      value: 0.7,
                      isLocked: false,
                    ),
                    CourseTile(
                      imageUrl: 'assets/icon 2.png',
                      title: 'Validate Idea',
                      value: 0.2,
                      isLocked: false,
                    ),
                    CourseTile(
                      imageUrl: 'assets/icon 3.png',
                      title: 'Strong Promotion',
                      value: 0.0,
                      isLocked: true,
                    ),
                    SizedBox(
                      height: 25,
                    ),

                    //NOTE : Targeting Customer
                    Text(
                      '# Targeting Customer',
                      style: blackTextStyle.copyWith(fontSize: 18),
                    ),
                    CourseTile(
                      imageUrl: 'assets/icon 4.png',
                      title: 'App Survei',
                      value: 0.0,
                      isLocked: true,
                    ),
                    CourseTile(
                      imageUrl: 'assets/icon 5.png',
                      title: 'Get Funding',
                      value: 0.0,
                      isLocked: true,
                    ),
                    CourseTile(
                      imageUrl: 'assets/icon 6.png',
                      title: 'Shipe Investor',
                      value: 0.0,
                      isLocked: true,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    //NOTE BUTTONS

                    Container(
                      width: MediaQuery.of(context).size.width -
                          (2 * defaultMargin),
                      height: 50,
                      child: FlatButton(
                        onPressed: () {},
                        color: blueColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Text(
                          'Finish and Take Quiz',
                          style: whiteTextStyle.copyWith(
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width -
                          (2 * defaultMargin),
                      height: 50,
                      child: FlatButton(
                        onPressed: () {},
                        color: Color(0xffC3C8DA),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Text(
                          'Skip To Home',
                          style: GoogleFonts.tajawal(
                              color: Color(0xffECEEF5), fontSize: 22),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
