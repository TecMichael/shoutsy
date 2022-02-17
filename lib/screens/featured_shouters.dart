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
    return Row(
      children: [
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
              colors: [
                Color(0xffFFFFFF),
                Color(0xff00C9FF),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 130,bottom: 22),
                child: CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage('assets/small.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          text,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: 28,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      ' "Check out their profile and send them custom offers!",',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Colors.white,
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
