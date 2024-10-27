import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoshSahifa extends StatefulWidget {
  @override
  State<BoshSahifa> createState() => _BoshsahifaState();
}

class _BoshsahifaState extends State<BoshSahifa> {
  int number = 0; // Jami bosishlar soni
  int qiymat = 0; // Necha to'liq 33-lik bajarilgan
  int qoldiq = 0; // 33-lik ichidagi qoldiq soni
  int currentIndex = 0; // Zikr navbati ko'rsatkich
  List<String> zikrlar = [
    "1.Subhan Allah",
    "2.Alhamdulillah",
    "3.La ilaha illa Allah",
    "4.Allahu-Akbar",
    "5.Astaghfirullah",
    "6.La Hawla Wala Quwatta ila Billah",
    "7.Subhan Allahi wa bi Hamdihi",
    "8.Subhan Allahil Azim",
  ]; // Zikrlar ro'yxati

  void sanoq() {
    setState(() {
      number++; // Har bosilganda umumiy son oshadi
      qiymat = (number / 33).floor(); // 33-lik to‘liq bajarilganlar soni
      qoldiq = number % 33; // Qoldiq sanash

      // Har 33 ta bosishda zikr navbati o'zgaradi
      if (qoldiq == 0) {
        currentIndex =
            (currentIndex + 1) % zikrlar.length; // Navbatdagi zikrga o'tish
      }
    });
  }

  void reset() {
    setState(() {
      number = 0;
      qiymat = 0;
      qoldiq = 0;
      currentIndex = 0; // Zikrni boshidan boshlash
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(
          0.0,
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(),
              child: Center(
                child: Text(
                  "Tasbeh_Kalimah",
                  style: GoogleFonts.josefinSans(
                    color: Colors.green,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Row(children: [
                SizedBox(width: 40),
                Text(
                  "Alloh-нинг 99 исми",
                  style: GoogleFonts.josefinSans(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
              onTap: () {
                Navigator.pushNamed(context, "Sahifa1");
              },
            ),
            ListTile(
              title: Row(children: [
                SizedBox(width: 40),
                Text(
                  "Калималар",
                  style: GoogleFonts.josefinSans(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
              onTap: () {
                Navigator.pushNamed(context, "Sahifa2");
              },
            ),
            ListTile(
              title: Row(children: [
                SizedBox(width: 40),
                Text(
                  "Дуолар",
                  style: GoogleFonts.josefinSans(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
              onTap: () {
                Navigator.pushNamed(context, "Sahifa3");
              },
            ),
            ListTile(
              title: Row(children: [
                SizedBox(width: 40),
                Text(
                  "Намоз вакталари \n(butun dunyo)",
                  style: GoogleFonts.josefinSans(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
              onTap: () {
                Navigator.pushNamed(context, "Sahifa4");
              },
            ),
            ListTile(
              title: Row(children: [
                SizedBox(width: 40),
                Text(
                  "Намоз вакталари \n(Uzbekiston)",
                  style: GoogleFonts.josefinSans(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
              onTap: () {
                Navigator.pushNamed(context, "Sahifa5");
              },
            ),
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://i.pinimg.com/474x/29/a4/89/29a4892f74d1b21e883f0058606922eb.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 100),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 35),
                  Container(
                    height: 100,
                    width: 320,
                    decoration: BoxDecoration(
                      border: Border.all(width: 4, color: Colors.green),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Text(
                        zikrlar[currentIndex], // Joriy zikrni ko'rsatish
                        style: GoogleFonts.josefinSans(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 50),
                ],
              ),
            ),
            SizedBox(height: 100),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.green),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: reset,
                      icon: Icon(Icons.restart_alt, size: 50),
                    ),
                    Text(
                      qiymat.toString(),
                      style: TextStyle(fontSize: 50, color: Colors.black),
                    ),
                    Text(
                      qoldiq.toString(),
                      style: TextStyle(fontSize: 50, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 400,
                width: 400,
                color: Colors.white.withOpacity(0.0),
                child: Stack(
                  children: [
                    Positioned(
                      top: 65,
                      left: 110,
                      child: Container(
                        height: 170,
                        width: 170,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 8, color: Color.fromARGB(255, 0, 255, 8)),
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.elliptical(
                              50,
                              50,
                            ),
                            topRight: Radius.elliptical(
                              50,
                              50,
                            ),
                            bottomLeft: Radius.circular(
                              50,
                            ),
                            bottomRight: Radius.circular(
                              50,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 190,
                      left: 122.5,
                      child: Container(
                        height: 100,
                        width: 145,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 8, color: Color.fromARGB(255, 0, 255, 8)),
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.elliptical(
                              50,
                              50,
                            ),
                            bottomRight: Radius.elliptical(
                              50,
                              50,
                            ),
                            topLeft: Radius.circular(
                              30,
                            ),
                            topRight: Radius.circular(
                              30,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 185,
                      left: 125,
                      child: Container(
                        height: 40,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.elliptical(
                              15,
                              25,
                            ),
                            bottomRight: Radius.elliptical(
                              15,
                              25,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 172.5,
                      left: 162.5,
                      child: InkWell(
                        autofocus: true,
                        onTap: () {
                          sanoq();
                        },
                        child: Container(
                          height: 80,
                          width: 65,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                25,
                              ),
                              topRight: Radius.circular(
                                25,
                              ),
                              bottomLeft: Radius.circular(
                                25,
                              ),
                              bottomRight: Radius.circular(
                                25,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 85,
                      left: 75,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
                        child: Container(
                          height: 60,
                          width: 140,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Color.fromARGB(255, 0, 255, 8),
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              number.toString(),
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// class BoshSahifa extends StatefulWidget {
//   const BoshSahifa({super.key});

//   @override
//   State<BoshSahifa> createState() => _BoshsahifaState();
// }

// class _BoshsahifaState extends State<BoshSahifa> {
//   CarouselController carusel = CarouselController();
//   int number = 0;
//   int qiymat = 0;
//   int qoldiq = 0;

//   void sanoq() {
//     setState(() {
//       number++;
//       qiymat = (number / 33).floor();
//       qoldiq = number - (qiymat * 33).floor();
//     });
//   }

//   void reset() {
//     setState(() {
//       number = 0;
//       qiymat = 0;
//       qoldiq = 0;
//     });
//   }

//   bool isDarkMode = false;

//   // Function to toggle the theme based on switch state
//   void toggleTheme(bool value) {
//     setState(() {
//       isDarkMode = value;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white.withOpacity(
//           0.0,
//         ),
//         iconTheme: IconThemeData(
//           color: Colors.black,
//         ),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           children: [
//             DrawerHeader(
//               decoration: BoxDecoration(),
//               child: Center(
//                 child: Text(
//                   "Tasbeh_Kalimah",
//                   style: GoogleFonts.josefinSans(
//                     color: Colors.green,
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//             ListTile(
//               title: Row(children: [
//                 SizedBox(width: 40),
//                 Text(
//                   "Alloh-нинг 99 исми",
//                   style: GoogleFonts.josefinSans(
//                     color: Colors.green,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ]),
//               onTap: () {
//                 Navigator.pushNamed(context, "Sahifa1");
//               },
//             ),
//             ListTile(
//               title: Row(children: [
//                 SizedBox(width: 40),
//                 Text(
//                   "Калималар",
//                   style: GoogleFonts.josefinSans(
//                     color: Colors.green,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ]),
//               onTap: () {
//                 Navigator.pushNamed(context, "Sahifa2");
//               },
//             ),
//             ListTile(
//               title: Row(children: [
//                 SizedBox(width: 40),
//                 Text(
//                   "Дуолар",
//                   style: GoogleFonts.josefinSans(
//                     color: Colors.green,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ]),
//               onTap: () {
//                 Navigator.pushNamed(context, "Sahifa3");
//               },
//             ),
//             ListTile(
//               title: Row(children: [
//                 SizedBox(width: 40),
//                 Text(
//                   "Намоз вакталари \n(butun dunyo)",
//                   style: GoogleFonts.josefinSans(
//                     color: Colors.green,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ]),
//               onTap: () {
//                 Navigator.pushNamed(context, "Sahifa4");
//               },
//             ),
//             ListTile(
//               title: Row(children: [
//                 SizedBox(width: 40),
//                 Text(
//                   "Намоз вакталари \n(Uzbekiston)",
//                   style: GoogleFonts.josefinSans(
//                     color: Colors.green,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ]),
//               onTap: () {
//                 Navigator.pushNamed(context, "Sahifa5");
//               },
//             ),
//           ],
//         ),
//       ),
//       extendBodyBehindAppBar: true,
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: NetworkImage(
//               "https://i.pinimg.com/474x/29/a4/89/29a4892f74d1b21e883f0058606922eb.jpg",
//             ),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Column(
//           children: [
//             SizedBox(
//               height: 100,
//             ),
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: [
//                   SizedBox(
//                     width: 50,
//                   ),
//                   Container(
//                     height: 80,
//                     width: 225,
//                     decoration: BoxDecoration(
//                       border: Border.all(width: 4, color: Colors.green),
//                       borderRadius: BorderRadius.circular(25),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Center(
//                         child: Text(
//                           "1-SubhanAllah",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.black,
//                             fontSize: 25,
//                             fontWeight: FontWeight.w900,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 150,
//                   ),
//                   Container(
//                     height: 80,
//                     width: 225,
//                     decoration: BoxDecoration(
//                       border: Border.all(width: 4, color: Colors.green),
//                       borderRadius: BorderRadius.circular(25),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Center(
//                         child: Text(
//                           "2-Alhamdulillah",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.black,
//                             fontSize: 25,
//                             fontWeight: FontWeight.w900,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 150,
//                   ),
//                   Container(
//                     height: 80,
//                     width: 225,
//                     decoration: BoxDecoration(
//                       border: Border.all(width: 4, color: Colors.green),
//                       borderRadius: BorderRadius.circular(25),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Center(
//                         child: Text(
//                           "3-Allahu-Akbar",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.black,
//                             fontSize: 25,
//                             fontWeight: FontWeight.w900,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 50,
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 100,
//             ),
//             Padding(
//               padding: EdgeInsets.all(10),
//               child: Container(
//                 height: 80,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     width: 5,
//                     color: Colors.green,
//                   ),
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     IconButton(
//                       onPressed: () {
//                         reset();
//                       },
//                       icon: Icon(
//                         Icons.restart_alt,
//                         color: Colors.black,
//                         size: 50,
//                       ),
//                     ),
//                     Text(
//                       qiymat.toString(),
//                       style: TextStyle(
//                         fontSize: 50,
//                         color: Colors.black,
//                       ),
//                     ),
//                     Row(
//                       children: [
//                         Text(
//                           qoldiq.toString(),
//                           style: TextStyle(
//                             fontSize: 50,
//                             color: Colors.black,
//                           ),
//                         ),
//                         SizedBox(
//                           width: 30,
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Container(
//               height: 400,
//               width: 400,
//               color: Colors.white.withOpacity(0.0),
//               child: Stack(
//                 children: [
//                   Positioned(
//                     top: 65,
//                     left: 110,
//                     child: Container(
//                       height: 170,
//                       width: 170,
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                             width: 8, color: Color.fromARGB(255, 0, 255, 8)),
//                         color: Colors.green,
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.elliptical(
//                             50,
//                             50,
//                           ),
//                           topRight: Radius.elliptical(
//                             50,
//                             50,
//                           ),
//                           bottomLeft: Radius.circular(
//                             50,
//                           ),
//                           bottomRight: Radius.circular(
//                             50,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     top: 190,
//                     left: 122.5,
//                     child: Container(
//                       height: 100,
//                       width: 145,
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                             width: 8, color: Color.fromARGB(255, 0, 255, 8)),
//                         color: Colors.green,
//                         borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.elliptical(
//                             50,
//                             50,
//                           ),
//                           bottomRight: Radius.elliptical(
//                             50,
//                             50,
//                           ),
//                           topLeft: Radius.circular(
//                             30,
//                           ),
//                           topRight: Radius.circular(
//                             30,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     top: 185,
//                     left: 125,
//                     child: Container(
//                       height: 40,
//                       width: 140,
//                       decoration: BoxDecoration(
//                         color: Colors.green,
//                         borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.elliptical(
//                             15,
//                             25,
//                           ),
//                           bottomRight: Radius.elliptical(
//                             15,
//                             25,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     top: 172.5,
//                     left: 162.5,
//                     child: InkWell(
//                       autofocus: true,
//                       onTap: () {
//                         sanoq();
//                       },
//                       child: Container(
//                         height: 80,
//                         width: 65,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(
//                               25,
//                             ),
//                             topRight: Radius.circular(
//                               25,
//                             ),
//                             bottomLeft: Radius.circular(
//                               25,
//                             ),
//                             bottomRight: Radius.circular(
//                               25,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     top: 85,
//                     left: 75,
//                     child: Padding(
//                       padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
//                       child: Container(
//                         height: 60,
//                         width: 140,
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                             width: 2,
//                             color: Color.fromARGB(255, 0, 255, 8),
//                           ),
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                         child: Center(
//                           child: Text(
//                             number.toString(),
//                             style: TextStyle(
//                               fontSize: 35,
//                               fontWeight: FontWeight.w900,
//                               color: Colors.black,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class BoshSahifa extends StatefulWidget {
//   const BoshSahifa({super.key});

//   @override
//   State<BoshSahifa> createState() => _BoshsahifaState();
// }

// class _BoshsahifaState extends State<BoshSahifa> {
//   bool isDarkMode = false;

//   // Function to toggle the theme based on switch state
//   void toggleTheme(bool value) {
//     setState(() {
//       isDarkMode = value;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // Define background and text colors based on the switch state
//     final backgroundColor = isDarkMode ? Colors.black : Colors.white;
//     final textColor = isDarkMode ? Colors.white : Colors.black;
//     final accentColor = isDarkMode ? Colors.greenAccent : Colors.green;

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: backgroundColor,
//         iconTheme: IconThemeData(
//           color: textColor,
//         ),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           children: [
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: accentColor,
//               ),
//               child: Center(
//                 child: Text(
//                   "Tasbeh_Kalimah",
//                   style: GoogleFonts.josefinSans(
//                     color: textColor,
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//             ListTile(
//               title: Row(children: [
//                 SizedBox(width: 40),
//                 Text(
//                   "Калималар",
//                   style: GoogleFonts.josefinSans(
//                     color: textColor,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ]),
//               onTap: () {
//                 Navigator.pushNamed(context, "Sahifa2");
//               },
//             ),
//             ListTile(
//               title: Row(children: [
//                 SizedBox(width: 40),
//                 Text(
//                   "Дуолар",
//                   style: GoogleFonts.josefinSans(
//                     color: textColor,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ]),
//               onTap: () {
//                 Navigator.pushNamed(context, "Sahifa3");
//               },
//             ),
//             ListTile(
//               title: Row(children: [
//                 SizedBox(width: 40),
//                 Text(
//                   "Намоз вакталари \n(butun dunyo)",
//                   style: GoogleFonts.josefinSans(
//                     color: textColor,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ]),
//               onTap: () {
//                 Navigator.pushNamed(context, "Sahifa4");
//               },
//             ),
//             ListTile(
//               title: Row(children: [
//                 SizedBox(width: 40),
//                 Text(
//                   "Намоз вакталари \n(Uzbekiston)",
//                   style: GoogleFonts.josefinSans(
//                     color: textColor,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ]),
//               onTap: () {
//                 Navigator.pushNamed(context, "Sahifa5");
//               },
//             ),
//             ListTile(
//               title: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "Dark Mode",
//                     style: GoogleFonts.josefinSans(
//                       color: textColor,
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Switch(
//                     value: isDarkMode,
//                     onChanged: toggleTheme,
//                     activeColor: Colors.green,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       extendBodyBehindAppBar: true,
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         color: backgroundColor,
//         child: Center(
//           child: Text(
//             "Tasbeh App",
//             style: TextStyle(
//               color: textColor,
//               fontSize: 30,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }