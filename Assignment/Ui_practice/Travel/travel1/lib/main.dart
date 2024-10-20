import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Travel();
  }
}

class Travel extends StatefulWidget {
  const Travel({super.key});

  @override
  State<Travel> createState() => _TravelState();
}

class _TravelState extends State<Travel> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Where do you want to travel?",
            style: GoogleFonts.inter(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          toolbarHeight: 90,
          backgroundColor: Color.fromRGBO(27, 48, 101, 1),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 41,
                      width: 253,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromRGBO(233, 237, 248, 1)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Select Destination",
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(53, 111, 249, 1),
                            ),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Color.fromRGBO(53, 111, 249, 1),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 45,
                      width: 45,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(53, 111, 249, 1),
                      ),
                      child: const Icon(
                        Icons.search_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 34,
                  width: 140,
                  child: Text(
                    "Best Deals",
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "Sorted by lower price",
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(179, 182, 187, 1),
                        ),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Color.fromRGBO(53, 111, 249, 1),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      //EI Cairo container
                      Container(
                        padding: EdgeInsets.all(15),
                        height: 155,
                        width: 155,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(233, 237, 248, 1),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "EI Cairo",
                                  style: GoogleFonts.inter(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromRGBO(228, 161, 2, 1),
                                      size: 20,
                                    ),
                                    Text(
                                      "4.6",
                                      style: TextStyle(
                                        color: Color.fromRGBO(228, 161, 2, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text("Egypt",
                                  style: GoogleFonts.inter(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 163, 166, 171),
                                  )),
                            ),
                            Image.asset('assets/Vector.jpg'),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 32,
                                  width: 52,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Text(
                                    "More",
                                    style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(52, 111, 249, 1),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height: 32,
                                  width: 52,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromRGBO(52, 111, 249, 1),
                                  ),
                                  child: Text(
                                    "\$260",
                                    style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      //London container
                      Container(
                        padding: EdgeInsets.all(15),
                        height: 155,
                        width: 155,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(233, 237, 248, 1),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "London",
                                  style: GoogleFonts.inter(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromRGBO(228, 161, 2, 1),
                                      size: 20,
                                    ),
                                    Text(
                                      "4.6",
                                      style: TextStyle(
                                        color: Color.fromRGBO(228, 161, 2, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text("England",
                                  style: GoogleFonts.inter(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 163, 166, 171),
                                  )),
                            ),
                            Image.asset('assets/Vector.jpg'),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 32,
                                  width: 52,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Text(
                                    "More",
                                    style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(52, 111, 249, 1),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height: 32,
                                  width: 52,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromRGBO(52, 111, 249, 1),
                                  ),
                                  child: Text(
                                    "\$330",
                                    style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      //container 3
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        height: 155,
                        width: 155,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(233, 237, 248, 1),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "EI Cairo",
                                  style: GoogleFonts.inter(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromRGBO(228, 161, 2, 1),
                                      size: 20,
                                    ),
                                    Text(
                                      "4.6",
                                      style: TextStyle(
                                        color: Color.fromRGBO(228, 161, 2, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text("Egypt",
                                  style: GoogleFonts.inter(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 163, 166, 171),
                                  )),
                            ),
                            Image.asset('assets/Vector.jpg'),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 32,
                                  width: 52,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Text(
                                    "More",
                                    style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(52, 111, 249, 1),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height: 32,
                                  width: 52,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromRGBO(52, 111, 249, 1),
                                  ),
                                  child: Text(
                                    "\$260",
                                    style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            
                //2 row
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Text(
                    "Popular Destinations",
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "Sorted by higher rating",
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(179, 182, 187, 1),
                        ),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Color.fromRGBO(53, 111, 249, 1),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          //EI Cairo container
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(15),
                                height: 155,
                                width: 155,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(233, 237, 248, 1),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Image.asset('assets/Vector.jpg'),
                              ),
                              //row1
                              Row(
                                children: [
                                  Text(
                                    "Cancum",
                                    style: GoogleFonts.inter(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 35,
                                  ),
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Color.fromRGBO(228, 161, 2, 1),
                                        size: 20,
                                      ),
                                      Text(
                                        "4.6",
                                        style: TextStyle(
                                          color: Color.fromRGBO(228, 161, 2, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              //row2
            
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Maxico",
                                        style: GoogleFonts.inter(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color:
                                              Color.fromARGB(255, 163, 166, 171),
                                        )),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("848 Reviews",
                                      style: GoogleFonts.inter(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromARGB(255, 163, 166, 171),
                                      )),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //London container
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(15),
                                height: 155,
                                width: 155,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(233, 237, 248, 1),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Image.asset('assets/Vector.jpg'),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Santorini",
                                    style: GoogleFonts.inter(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 35,
                                  ),
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Color.fromRGBO(228, 161, 2, 1),
                                        size: 20,
                                      ),
                                      Text(
                                        "4.6",
                                        style: TextStyle(
                                          color: Color.fromRGBO(228, 161, 2, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              //row2
            
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Greece",
                                        style: GoogleFonts.inter(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color:
                                              Color.fromARGB(255, 163, 166, 171),
                                        )),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("848 Reviews",
                                      style: GoogleFonts.inter(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromARGB(255, 163, 166, 171),
                                      )),
                                ],
                              ),
                            ],
                          ),
                          //container 3
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(15),
                                height: 155,
                                width: 155,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(233, 237, 248, 1),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Image.asset('assets/Vector.jpg'),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "EI Cairo",
                                    style: GoogleFonts.inter(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 35,
                                  ),
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Color.fromRGBO(228, 161, 2, 1),
                                        size: 20,
                                      ),
                                      Text(
                                        "4.6",
                                        style: TextStyle(
                                          color: Color.fromRGBO(228, 161, 2, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              //row2
            
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Maxico",
                                        style: GoogleFonts.inter(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color:
                                              Color.fromARGB(255, 163, 166, 171),
                                        )),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("848 Reviews",
                                      style: GoogleFonts.inter(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromARGB(255, 163, 166, 171),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //2 row
              ],
            ),
          ),
        ),
      ),
    );
  }
}
