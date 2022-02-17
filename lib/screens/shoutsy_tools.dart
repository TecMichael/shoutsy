import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoutsyTools extends StatelessWidget {
  const ShoutsyTools({
    Key? key,
    required this.text,
    required this.text2,
    required this.color,
    required this.color2,
  }) : super(key: key);
  final String text;
  final String text2;
  final Color color;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 190,
          width: 144,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              colors: [color, color2],
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Color(0xff29B3FE),
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
                        fontSize: 20,
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
                        fontSize: 14,
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
                          'see more',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.black),
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
