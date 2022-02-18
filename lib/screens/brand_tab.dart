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
      // bottomNavigationBar: Container(
      //   height: 80,
      //   margin: EdgeInsets.symmetric(horizontal: 15,vertical: 30),
      //   child: ClipRRect(
      //     borderRadius: BorderRadius.circular(15),
      //     child: BottomNavigationBar(
      //       type: BottomNavigationBarType.fixed,
      //       selectedItemColor: Colors.blue[700],
      //       selectedFontSize: 0.0,
      //       unselectedFontSize: 0.0,
      //       showSelectedLabels: false,
      //       showUnselectedLabels: false,
      //       iconSize: 25,
      //       items: [
      //         BottomNavigationBarItem(
      //           label: "Home",
      //           icon: Icon(Icons.home),
      //         ),
      //         BottomNavigationBarItem(
      //           label: "Search",
      //           icon: Icon(Icons.search),
      //         ),
      //         BottomNavigationBarItem(
      //           label: "Categories",
      //           icon: Icon(Icons.grid_view),
      //         ),
      //         BottomNavigationBarItem(
      //           label: "My Account",
      //           icon: Icon(Icons.account_circle_outlined),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topRight,

          children: [
            Stack(
              alignment: Alignment.topCenter,
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
                              const SizedBox(height: 40),
                              Row(
                                children: [
                                  Text(
                                    'Text Boxes',
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500, fontSize: 18),
                                  )
                                ],
                              ),

                              Container(
                                margin:EdgeInsets.symmetric(horizontal:15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height:30),
                                    Text(
                                      'Average Brand Deals Per Month',
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w700, fontSize: 15),
                                    ),
                                    SizedBox(height:10),
                                    Container(
                                      width: double.infinity,
                                      height: 50.0,
                                      padding:EdgeInsets.symmetric(horizontal:20),

                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(7.0),
                                          border: Border.all(color: Colors.grey.shade300)),
                                      child: DropdownButton<String>(
                                        underline: Container(),
                                        isExpanded: true,
                                        hint: Text("Select amount",style:TextStyle(color:Colors.grey.shade400)),
                                        items: <String>['\$100', '\$200', '\$300', '\$500'].map((String value) {
                                          return new DropdownMenuItem<String>(
                                            value: value,
                                            child: new Text(value),
                                          );
                                        }).toList(),
                                        onChanged: (_) {},
                                      ),
                                    ),
                                    SizedBox(height:20),
                                    Text(
                                      'What’s your main social media?',
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w700, fontSize: 15),
                                    ),
                                    SizedBox(height:10),
                                    Container(
                                      width: double.infinity,
                                      height: 50.0,
                                      padding:EdgeInsets.symmetric(horizontal:20),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(7.0),
                                          border: Border.all(color: Colors.grey.shade300)),
                                      child: DropdownButton<String>(
                                        underline: Container(),
                                        isExpanded: true,
                                        hint: Text("Select network",style:TextStyle(color:Colors.grey.shade400)),
                                        items: <String>['Messaging', 'Facebook', 'Tick tok', 'Other'].map((String value) {
                                          return new DropdownMenuItem<String>(
                                            value: value,
                                            child: new Text(value),
                                          );
                                        }).toList(),
                                        onChanged: (_) {},
                                      ),
                                    ),
                                    SizedBox(height:20),
                                    Text(
                                      'Would you want your inquiries handled?',
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w700, fontSize: 15),
                                    ),
                                    SizedBox(height:10),
                                    Container(
                                      width: double.infinity,
                                      height: 50.0,
                                      padding:EdgeInsets.symmetric(horizontal:20,vertical: 15),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(7.0),
                                          border: Border.all(color: Colors.grey.shade300)),
                                      child: Text('Text',style:TextStyle(color:Colors.grey.shade400)),
                                    ),
                                    SizedBox(height:30),


                                  ],
                                ),
                              )

                              

                            ],
                          ),
                        ),
                        // const SizedBox(height: 10),
                      )
                    ],
                  ),
                ),
              ),
                  Container(
                    height: 250,

                   child:Padding(
                     padding: const EdgeInsets.all(70.0),
                     child: Image.asset('assets/logo.png'),
                   )),

            ]),
            Container(
              height: 35,
                margin: EdgeInsets.only(right: 20,top: 50),
                child: Image.asset('assets/menu.png',))
          ],
        ),
      ),
    );
  }
}

void setState(Null Function() param0) {}
