import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoutsyTools extends StatelessWidget {
  const ShoutsyTools({
    Key? key,
    required this.text,
    required this.text2,
    required this.color,
    required this.image,
    required this.color2,
  }) : super(key: key);
  final String text;
  final String text2,image;
  final Color color;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 135,
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [color, color2],
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: image.contains('loud')? Color(0xff29B3FE):Colors.transparent,
                        child:Image.asset(image,height: image.contains('loud')?  23:30,)

                    ),
                  )
                ],
              ),
              const SizedBox(height: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text2,
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 32,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'See More',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Color(0xFF7326B7)),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
