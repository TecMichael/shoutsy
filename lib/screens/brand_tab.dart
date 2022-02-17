import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roomies_app/screens/shoutsy_tools.dart';

import 'featured_shouters.dart';

class BrandOverview extends StatelessWidget {
  const BrandOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final List<IconData> _icons = [
      Icons.home_outlined,
      Icons.food_bank_rounded,
      Icons.search_off_sharp,
      Icons.cases,
      Icons.wallet_travel,
    ];
    int _currentIndex = 0;

    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(14),
              topRight: Radius.circular(14),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                5,
                (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22, vertical: 10),
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: _currentIndex == index
                          ? const Color(0xff00C9FF)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      _icons[index],
                      size: 26,
                      color: _currentIndex == index
                          ? Colors.white
                          : const Color(0xff4F4F4F),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: Image.asset(
                  'assets/back.jpg',
                  fit: BoxFit.cover,
                  height: 190,
                  width: double.infinity,
                ),
              ),
            ),
            SizedBox(
              height: size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 130,
                      bottom: 1,
                      left: 25,
                    ),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(22),
                          topRight: Radius.circular(22),
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 21),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'HELLO',
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 30),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    'Nike,',
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 30),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'let’s find influencers to shout your brand out and grow!',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: const Color(0xffB5B5B5),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 30),
                          Row(
                            children: [
                              Text(
                                'Overview',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Colors.black),
                              ),
                              const SizedBox(width: 19),
                              Text(
                                'Profile',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: const Color(0xff757575),
                                ),
                              ),
                              const SizedBox(width: 22),
                              Text(
                                'Workspaces',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: const Color(0xff757575),
                                ),
                              ),
                              const SizedBox(width: 22),
                              Text(
                                'Campaigns',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: const Color(0xff757575),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(12),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 62,
                                          // width: 360,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.4),
                                                blurRadius: 9.5,
                                                offset: const Offset(3, 5),
                                              ),
                                            ],
                                          ),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 20, top: 10),
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Color(0xff1AD598),
                                                    ),
                                                  ),
                                                  const SizedBox(width: 10),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 5),
                                                    child: Text(
                                                      '\$23,345.06',
                                                      style: GoogleFonts.roboto(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 40,
                                                                top: 10),
                                                        child: CircleAvatar(
                                                          backgroundColor:
                                                              Color(0xff29B3FE),
                                                        ),
                                                      ),
                                                      const SizedBox(width: 10),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                top: 5,
                                                                right: 20),
                                                        child: Text(
                                                          '450',
                                                          style: GoogleFonts
                                                              .roboto(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  fontSize: 20),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Text(
                                        'Featured Shouters',
                                        style: GoogleFonts.roboto(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: const [
                                        FeaturedShouters(
                                          text: 'Island boys',
                                          img: 'assets/island.jpg',
                                        ),
                                        SizedBox(width: 20),
                                        FeaturedShouters(
                                          text: 'Sommer Ray',
                                          img: 'assets/ray.jpg',
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Text(
                                        'Shoutsy Tools',
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: const [
                                        ShoutsyTools(
                                          text: 'Campaign\nManagement',
                                          text2:
                                              'Let our team find\ninfluencers for you!',
                                          color2: Color(0xff29B3FE),
                                          color: Color(0xffB83FFA),
                                        ),
                                        SizedBox(width: 10),
                                        ShoutsyTools(
                                            color2: Color(0xff893EF6),
                                            color: Color(0xffB83FFA),
                                            text: 'Brand Referal',
                                            text2:
                                                'Refer brands and \nget 10% of their first\npurchase!'),
                                        SizedBox(width: 10),
                                        ShoutsyTools(
                                            color2: Color(0xff00FFF0),
                                            color: Color(0xff0083FE),
                                            text: 'Get Featured',
                                            text2:
                                                'Be discovered at the\ntop of the\nmarketplace!')
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          // const SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                'Text Boxes',
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void setState(Null Function() param0) {}
