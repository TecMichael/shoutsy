import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeaturedShouters extends StatelessWidget {
  const FeaturedShouters({
    Key? key,
    required this.text,
    required this.img,
  }) : super(key: key);

  final String text;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:8.0),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Row(
                children: [
                  Container(
                    height: 300,
                    width: 230,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(1,3)
                          )
                        ]
                    ),
                  ),
                ],
              ),
              Container(
                height: 150,
                width: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),

                  gradient:  LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffFFFFFF).withOpacity(0.0),
                      Color(0xff00C9FF).withOpacity(0.9),
                    ],
                  ),
                ),),
              Container(
                height: 300,
                width: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),


                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                text,
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Check out their profile and send them custom offers!',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.white,
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(1.0, 3),
                                  blurRadius: 3.0,
                                  color: Colors.black38,
                                ),

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, right: 22),
                            child: Text(
                              'Featured Influencer',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            'Message them to collaborate!',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 8,
                              color: Colors.white,

                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),



            ],
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage('assets/small.jpg'),
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(right: 5,top:5),
                    child: Image.asset("assets/verified.png",height: 27,width: 27,)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
