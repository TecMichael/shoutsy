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
            Stack(
                children: [

            Container(
            height: 250,
            decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
              'assets/back.jpg',
            ),
              fit: BoxFit.cover
      )
    ),),
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF00C9FF).withOpacity(0.4), Colors.white.withOpacity(0.0),Color(0xFF00C9FF).withOpacity(0.3),Colors.white.withOpacity(0.5)],
                      ),
                    ),),
              Container(
                margin: EdgeInsets.only(top:220),
                child: SizedBox(
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
                            color: Color(0xFFFAFAFA),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(35),
                              topRight: Radius.circular(35),
                            ),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(height: 10),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Hello',
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 24),
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        'Nike,',
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 24),
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
                                        fontSize: 12.5,
                                        color: const Color(0xffB5B5B5),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                              Padding(
                                padding: const EdgeInsets.only(left: 50,bottom: 3),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff00E2C2),
                                          borderRadius: BorderRadius.circular(8)),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'New!',
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 8,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Overview',
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Colors.black),
                                  ),
                                  const SizedBox(width: 19),
                                  Text(
                                    'Profile',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: const Color(0xff757575),
                                    ),
                                  ),
                                  const SizedBox(width: 22),
                                  Text(
                                    'Workspaces',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: const Color(0xff757575),
                                    ),
                                  ),
                                  const SizedBox(width: 22),
                                  Text(
                                    'Campaigns',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: const Color(0xff757575),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                              Divider(height: 20,thickness: 1.3,),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Container(
                                      height: 62,
                                      // width: 360,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.1),
                                            blurRadius: 4,
                                            spreadRadius: 5,
                                            offset: const Offset(3, 5),
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                               Padding(
                                                padding: EdgeInsets.only(
                                                    left: 18, top: 10),
                                                child: CircleAvatar(
                                                  backgroundColor:
                                                      Color(0xff1AD598),
                                                  child:Image.asset("assets/wallet.png",height: 20,)
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.only(top: 5),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      '\$23,345.06',
                                                      style: GoogleFonts.roboto(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 18),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 20, top: 3),
                                                      child: Text(
                                                        'Wallet Balance',
                                                        style: GoogleFonts.roboto(
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            color: Colors.black,
                                                            fontSize: 10),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                   Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 20, top: 10),
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Color(0xff29B3FE),
                                                        child:Image.asset("assets/loud.png",height: 23,)

                                                    ),
                                                  ),
                                                  const SizedBox(width: 10),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 8, right: 20),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                          '450',
                                                          style:
                                                              GoogleFonts.roboto(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  fontSize: 18),
                                                        ),
                                                        Text(
                                                          'Shoutsy Coins',
                                                          style:
                                                              GoogleFonts.roboto(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 10),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Text(
                                        'Featured Shouters',
                                        style: GoogleFonts.roboto(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
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
                                          image: 'assets/loud.png',
                                        ),
                                        SizedBox(width: 10),
                                        ShoutsyTools(
                                            color2: Color(0xff893EF6),
                                            color: Color(0xffB83FFA),
                                            text: 'Brand Referal',
                                            image: "assets/diamond.png",
                                            text2:
                                                'Refer brands and \nget 10% of their first\npurchase!'),
                                        SizedBox(width: 10),
                                        ShoutsyTools(
                                            color2: Color(0xff00FFF0),
                                            color: Color(0xff0083FE),
                                            text: 'Get Featured',
                                            image:"assets/subtract.png",
                                            text2:
                                                'Be discovered at the\ntop of the\nmarketplace!')
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Text(
                                    'Text Boxes',
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500, fontSize: 18),
                                  )
                                ],
                              ),
                              

                            ],
                          ),
                        ),
                        // const SizedBox(height: 10),
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

void setState(Null Function() param0) {}
