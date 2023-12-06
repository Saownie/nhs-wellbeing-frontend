import 'package:flutter/material.dart';
import 'package:wellbeingfrontend/models/homeModel.dart';
import 'package:wellbeingfrontend/pages/wellbeingItem.dart';
import 'package:wellbeingfrontend/pages/wellbeingPage.dart';
import 'package:wellbeingfrontend/report%20/reportPage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var height, width;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: height,
              width: width,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: height * 0.045,
                        width: width,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "English",
                              style: TextStyle(
                                  color: const Color(0xff005EB8),
                                  fontSize: width * 0.035,
                                  fontWeight: FontWeight.w500),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              size: height * 0.03,
                              color: const Color(0xff005EB8),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "NHS Wellbeing App",
                            style: TextStyle(
                                color: const Color(0xff005EB8),
                                fontSize: width * 0.045,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: width * 0.15,
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: width * 0.12,
                                height: height * 0.06,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffDDDDDD)),
                                child: Icon(Icons.notifications,
                                    size: height * 0.04,
                                    color: Colors.black.withOpacity(0.54)),
                              ),
                              Positioned(
                                top: height * 0.036,
                                right: width * 0.035,
                                child: Container(
                                  width: width * 0.015,
                                  height: height * 0.02,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff005EB8),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Container(
                        width: width,
                        height: height * 0.18,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: const DecorationImage(
                                image: AssetImage("images/image11.png"),
                                fit: BoxFit.cover)),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color(0x594f4f4f).withOpacity(0.35),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Welcome to the NHS",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.055,
                                      fontWeight: FontWeight.w500,
                                    )),
                                Text("Wellbeing",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.065,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Text("Most popular this week:",
                          style: TextStyle(
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500,
                          )),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WellbeingItem()),
                          );
                        },
                        child: SizedBox(
                          width: width,
                          height: height * 0.16,
                          //  color: Colors.amber,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width: width * 0.23,
                                    height: height * 0.12,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                        image: AssetImage(
                                            "images/e73d11c1c2bd8ddb6aac7e10c6a0cd80.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                                //  color: Colors.blueAccent,

                                SizedBox(
                                  width: width * 0.03,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Tips to reduce stress",
                                        style: TextStyle(
                                          color: const Color(0xff005EB8),
                                          fontSize: width * 0.04,
                                          fontWeight: FontWeight.w500,
                                        )),
                                    Row(
                                      children: [
                                        Container(
                                          //    width: width * 0.12,
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.black.withOpacity(0.1),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(4)),
                                          ),

                                          child: Center(
                                            child: Text(
                                              ' Health ',
                                              style: TextStyle(
                                                  fontSize: width * 0.03,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * 0.03,
                                        ),
                                        Container(
                                          //    width: width * 0.12,
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.black.withOpacity(0.1),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(4)),
                                          ),
                                          child: Center(
                                            child: Text(
                                              ' Stress management ',
                                              style: TextStyle(
                                                  fontSize: width * 0.03,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: width * 0.6,
                                      child: Text(
                                        "Tips and tricks for maintaining a healthy lifestyle",
                                        style: TextStyle(
                                            fontSize: width * 0.03,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: width * 0.03,
                                          backgroundImage: const AssetImage(
                                            'images/c8c6574047e3b599a252a04b03b94fd7.png', // Replace with your image URL
                                          ),
                                        ),
                                        SizedBox(width: width * 0.015),
                                        Text(
                                          'Health Expert',
                                          style: TextStyle(
                                              fontSize: width * 0.03,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ]),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      const Divider(),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      ApptextButton(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WellbeingPage()),
                          );
                        },
                        text: "Health & Wellbeing",
                        bgcolor: const Color(0xff005EB8),
                        txtcolor: Colors.white,
                        bordercolor: null,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      ApptextButton(
                        onTap: () {},
                        text: "Events",
                        bgcolor: const Color(0xff005EB8),
                        txtcolor: Colors.white,
                        bordercolor: null,
                      ),
                      SizedBox(
                        height: height * 0.035,
                      ),
                      Container(
                        height: height * 0.16,
                        width: width,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                            color: Colors.grey.shade300,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(width * 0.035),
                          child: Text(
                            "At NHS, we take the safety of our staff seriously. We believe that hate, harassment and sexual violence are never acceptable.",
                            style: TextStyle(
                                fontSize: width * 0.035,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      ApptextButton(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ReportPage()),
                          );
                        },
                        text: "Report Bullying and Harassment",
                        bgcolor: Colors.black.withOpacity(0.05),
                        txtcolor: Colors.black,
                        bordercolor: Colors.grey,
                      ),
                      SizedBox(
                        height: height * 0.15,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: Container(
            //       height: height * 0.1,
            //       width: width,
            //       decoration: const BoxDecoration(
            //         border: Border(
            //           top: BorderSide(
            //             color: Color(0xff005EB8), // Blue top border color
            //             width: 5, // Top border width
            //           ),
            //         ),
            //         borderRadius: BorderRadius.only(
            //             topRight: Radius.circular(30),
            //             topLeft: Radius.circular(30)),
            //         color: Colors.white,
            //       ),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //         children: [
            //           SizedBox(
            //               height: height,
            //               width: width * 0.09,
            //               child: InkWell(
            //                 onTap: () {
            //                   setState(() {
            //                     index = 0;
            //                   });
            //                 },
            //                 child: Column(
            //                   mainAxisAlignment: MainAxisAlignment.center,
            //                   children: [
            //                     Icon(Icons.home_outlined,
            //                         color: index == 0
            //                             ? const Color(0xff005EB8)
            //                             : Colors.grey,
            //                         size: height * 0.04),
            //                     Text(
            //                       "Home",
            //                       style: TextStyle(
            //                         fontSize: width * 0.03,
            //                         fontWeight: FontWeight.w500,
            //                         color: index == 0
            //                             ? const Color(0xff005EB8)
            //                             : Colors.grey,
            //                       ),
            //                     )
            //                   ],
            //                 ),
            //               )),
            //           InkWell(
            //             onTap: () {
            //               setState(() {
            //                 index = 1;
            //               });
            //             },
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Icon(Icons.description_outlined,
            //                     color: index == 1
            //                         ? const Color(0xff005EB8)
            //                         : Colors.grey,
            //                     size: height * 0.04),
            //                 Text(
            //                   "Report",
            //                   style: TextStyle(
            //                     fontSize: width * 0.03,
            //                     fontWeight: FontWeight.w500,
            //                     color: index == 1
            //                         ? const Color(0xff005EB8)
            //                         : Colors.grey,
            //                   ),
            //                 )
            //               ],
            //             ),
            //           ),
            //           InkWell(
            //             onTap: () {
            //               setState(() {
            //                 index = 2;
            //               });
            //             },
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Icon(Icons.person_outline_sharp,
            //                     color: index == 2
            //                         ? const Color(0xff005EB8)
            //                         : Colors.grey,
            //                     size: height * 0.04),
            //                 Text(
            //                   "Profile",
            //                   style: TextStyle(
            //                     fontSize: width * 0.03,
            //                     fontWeight: FontWeight.w500,
            //                     color: index == 2
            //                         ? const Color(0xff005EB8)
            //                         : Colors.grey,
            //                   ),
            //                 )
            //               ],
            //             ),
            //           ),
            //           InkWell(
            //             onTap: () {
            //               setState(() {
            //                 index = 3;
            //               });
            //             },
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Icon(Icons.settings_outlined,
            //                     color: index == 3
            //                         ? const Color(0xff005EB8)
            //                         : Colors.grey,
            //                     size: height * 0.04),
            //                 Text(
            //                   "Setting",
            //                   style: TextStyle(
            //                     fontSize: width * 0.03,
            //                     fontWeight: FontWeight.w500,
            //                     color: index == 3
            //                         ? const Color(0xff005EB8)
            //                         : Colors.grey,
            //                   ),
            //                 )
            //               ],
            //             ),
            //           ),
            //         ],
            //       )),
            // ),
          ],
        ),
      ),
    );
  }
}
