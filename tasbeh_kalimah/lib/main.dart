import 'package:flutter/material.dart';
import 'begin.dart';
import 'BoshSahifa.dart';
import 'kirishi.dart';
import 'Sahifa1.dart';
import 'Sahiafa2.dart';
import 'Sahifa3.dart';
import 'Sahifa4.dart';
import 'Sahifa5.dart';
import 'Sahifa6.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: "begin",
      routes: {
        "begin": ((context) => Begin()),
        "kirishi": ((context) => Kirishi()),
        "BoshSahifa": ((context) => BoshSahifa()),
        "Sahifa1": ((context) => Sahifa1()),
        "Sahifa2": ((context) => Sahifa2()),
        "Sahifa3": ((context) => Sahifa3()),
        "Sahifa4": ((context) => Sahifa4()),
        "Sahifa5": ((context) => Sahifa5()),
        "Sahifa6": ((context) => Sahifa6()),
      },
    ),
  );
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: '/',
//       routes: {
//         '/': (context) => const Begin(),
//         '/Kirishi': (context) => const Kirishi(),
//         '/BoshSahifa': (context) => const BoshSahifa(),
//       },
//     );
//   }
// }

// class Begin extends StatefulWidget {
//   const Begin({super.key});

//   @override
//   State<Begin> createState() => _BeginState();
// }

// class _BeginState extends State<Begin> {
//   @override
//   void initState() {
//     super.initState();
//     // Delayed navigation to ensure context is available
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       Future.delayed(const Duration(seconds: 3), () {
//         Navigator.pushReplacementNamed(context, '/Kirishi');
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 255, 247, 7),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const SizedBox(height: 200),
//           const Text(
//             "Tasbeh_Kalimah",
//             style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 120),
//           const SpinKitCircle(
//             color: Colors.black,
//             size: 50,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Kirishi extends StatelessWidget {
//   const Kirishi({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           image: const DecorationImage(
//             image: NetworkImage(
//               "https://i.pinimg.com/474x/29/a4/89/29a4892f74d1b21e883f0058606922eb.jpg",
//             ),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const SizedBox(height: 150),
//               Text(
//                 "добро пожаловать",
//                 style: GoogleFonts.josefinSans(
//                   color: Colors.green,
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               Text(
//                 "Tasbeh & Kalimah",
//                 style: GoogleFonts.josefinSans(
//                   color: Colors.green,
//                   fontSize: 44,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 110),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       Navigator.pushNamed(context, '/BoshSahifa');
//                     },
//                     child: Container(
//                       height: 50,
//                       width: 250,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                         gradient: const LinearGradient(
//                           colors: [
//                             Colors.green,
//                             Colors.lightGreenAccent,
//                             Colors.green,
//                           ],
//                         ),
//                       ),
//                       child: Center(
//                         child: Row(
//                           children: [
//                             const SizedBox(width: 30),
//                             Text(
//                               "войти",
//                               style: GoogleFonts.josefinSans(
//                                 color: Colors.black,
//                                 fontSize: 25,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             const SizedBox(width: 20),
//                             const Icon(Icons.arrow_forward_outlined),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

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
//                   "Калималар",
//                   style: GoogleFonts.josefinSans(
//                     color: Colors.green,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ]),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => Sahifa2(),
//                   ),
//                 );
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
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => Sahifa3(),
//                   ),
//                 );
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
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => Sahifa4(),
//                   ),
//                 );
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
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => Sahifa5(),
//                   ),
//                 );
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

// class Sahifa2 extends StatefulWidget {
//   const Sahifa2({super.key});

//   @override
//   State<Sahifa2> createState() => _Sahifa2State();
// }

// class _Sahifa2State extends State<Sahifa2> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Калималар",
//           style: GoogleFonts.josefinSans(
//             color: Color.fromARGB(255, 255, 247, 7),
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         backgroundColor: Color.fromARGB(255, 3, 181, 95),
//       ),
//       backgroundColor: Color.fromARGB(255, 3, 181, 95),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: InkWell(
//                 onTap: () {},
//                 child: Container(
//                   height: 520,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       width: 1.5,
//                       color: Color.fromARGB(255, 255, 247, 7),
//                     ),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       children: [
//                         SizedBox(
//                           height: 50,
//                         ),
//                         Text(
//                           "    1.Birinchi kalima - Kalima Taiyyab (Imon   deklaratsiyasi)",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.white,
//                             fontSize: 25,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 50,
//                         ),
//                         Text(
//                           "    Laa ilaaha illallohu Muhammadur-  Rasululloh",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.white,
//                             fontSize: 25,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 50,
//                         ),
//                         Text(
//                           "    Manosi: 'Allohdan o'zga iloh yo'q.   Muhammad (sollallohu alayhi vasallam)Allohning rasulidir'.",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.white,
//                             fontSize: 25,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: InkWell(
//                 onTap: () {},
//                 child: Container(
//                   height: 650,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       width: 1.5,
//                       color: Color.fromARGB(255, 255, 247, 7),
//                     ),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       children: [
//                         SizedBox(
//                           height: 40,
//                         ),
//                         Text(
//                           "    2.Ikkinchi kalima - kalima shahodat (Taslim bo'lish va dalil bayoni)",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.white,
//                             fontSize: 25,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 40,
//                         ),
//                         Text(
//                           "    Ash-hadu anla-ilaha illa-llaahu, va ash hadu anna Muhammadan abduhu va Rasulu.",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.white,
//                             fontSize: 25,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 40,
//                         ),
//                         Text(
//                           "    Manosi: “Guvohlik beramanki, Allohdan o‘zga ibodatga loyiq iloh yo‘q va Muhammad (sollallohu alayhi vasallam) Uning bandasi va rasuli ekanligiga guvohlik beraman”.",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.white,
//                             fontSize: 25,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: InkWell(
//                 onTap: () {},
//                 child: Container(
//                   height: 650,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       width: 1.5,
//                       color: Color.fromARGB(255, 255, 247, 7),
//                     ),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       children: [
//                         SizedBox(
//                           height: 50,
//                         ),
//                         Text(
//                           "    3.Uchinchi kalima - Kalima Tamjid (Alloh taoloning izhori)",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.white,
//                             fontSize: 23,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 50,
//                         ),
//                         Text(
//                           "    Subhaan-Allohi valhamdu-lillaahi, va la ilaa-ha illa-la illal-lahu vallahu Akbar, vala haula vala quov-vata illa billa hil-Aliyyil-azim.",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.white,
//                             fontSize: 23,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 50,
//                         ),
//                         Text(
//                           "    Manosi: 'Allohga pok va hamdlar bo'lsin. Allohdan o'zga ibodatga loyiq iloh yo'q. Alloh eng ulug' zotdir. Ulug' va buyuk Allohdan boshqa hech qanday kuch va quvvat yo'q'.",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.white,
//                             fontSize: 23,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: InkWell(
//                 onTap: () {},
//                 child: Container(
//                   height: 650,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       width: 1.5,
//                       color: Color.fromARGB(255, 255, 247, 7),
//                     ),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       children: [
//                         SizedBox(
//                           height: 40,
//                         ),
//                         Text(
//                           "    4.To'rtinchi kalima - Kalima Tauhid (Allohning yagonaligini e'lon qilish)",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.white,
//                             fontSize: 22.2,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 40,
//                         ),
//                         Text(
//                           "    Laa ilaaha illal-lahu vahdahu la sharika lahu, lahul-mulku va-lahul hamdu yooh-yi va-yumetu, be yadihil hayru va huva alaa kulli shay in Qadirda.",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.white,
//                             fontSize: 22.2,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 40,
//                         ),
//                         Text(
//                           "    Manosi :'Allohdan o'zga ibodatga loyiq zot yo'q. U yolg'iz va hech bir sherigi yo'q. Mulk Unikidir va hamd Unikidir. U tiriltirur va o'ldiradi. U zotning qo'lida hamma narsa yaxshidir va U har bir narsaga qodirdir'.",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.white,
//                             fontSize: 22.2,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: InkWell(
//                 onTap: () {},
//                 child: Container(
//                   height: 730,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       width: 1.5,
//                       color: Color.fromARGB(255, 255, 247, 7),
//                     ),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(10),
//                     child: Column(
//                       children: [
//                         SizedBox(
//                           height: 0,
//                         ),
//                         Text(
//                           "    5.Beshinchi kalima - Kalima radd-i kufr (ateizmni rad etish)",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.white,
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Text(
//                           "    Ollohumma inni a uzu bika min an ushrika bika shayan va ana a'lamu bihi, va astag feeru ka limaa la a'lamu bihi, toob-tu anhu va tabarr-ra' tu minal kufri yuvish-shirki val kizbi val-ma 'aasi. kullihaa aslamtu va aamantu va a-quoo-lu la-ila-hah il-lal-lahu Muhammadur Rasul-loul-lah",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.white,
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Text(
//                           "    Manosi: 'Allohim! O'zingdan panoh so'raymanki, bilib turib senga sherik bo'lmayman. Men bilmaganim uchun mag'firatingga muhtojman. Men uning johilligidan tavba qilaman. Kufrdan va senga sherik bo'lishdan pokman. Yolg'ondan va har qanday gunohdan bo'yinsunaman va Allohdan o'zga iloh yo'q va Muhammad (sollallohu alayhi va sallam) Allohning rasulidir'.",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.white,
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: InkWell(
//                 onTap: () {},
//                 child: Container(
//                   height: 600,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       width: 1.5,
//                       color: Color.fromARGB(255, 255, 247, 7),
//                     ),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(10),
//                     child: Column(
//                       children: [
//                         SizedBox(
//                           height: 50,
//                         ),
//                         Text(
//                           "   6.Oltinchi kalima - Imon- i Mujmal (qisqa e'tiqod)",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.white,
//                             fontSize: 27,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 50,
//                         ),
//                         Text(
//                           "    Aamantu bil-lahi kama huva bi asmaaihi va sifoa-tihi, va qabiltu jami-a ah-kaamihi.",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.white,
//                             fontSize: 27,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 50,
//                         ),
//                         Text(
//                           "    “Men Allohga qanday bo‘lsa, ismlari va sifatlari bilan ishondim va barcha amrlarini qabul qildim”.",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.white,
//                             fontSize: 27,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: InkWell(
//                 onTap: () {},
//                 child: Container(
//                   height: 650,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       width: 1.5,
//                       color: Color.fromARGB(255, 255, 247, 7),
//                     ),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(10),
//                     child: Column(
//                       children: [
//                         Text(
//                           "   7.Ettinchi Kalima - Imon-i Mufassal (Mufassal e'tiqod)",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.white,
//                             fontSize: 22.3,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 45,
//                         ),
//                         Text(
//                           "    Aamantu bil-laahi va mala-ikatihi va kutubihi va Rusulihi val yaumil-aakhi-ri val qadri xayrihi va shar-rihi minal-lahi Ta Aala val-ba'Athi ba'adal maut",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.white,
//                             fontSize: 22.3,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 45,
//                         ),
//                         Text(
//                           "    Manosi: “Men Allohga, Uning farishtalariga, kitoblariga, payg‘ambarlariga, oxirat kuniga, dunyodagi barcha yaxshi-yomonlik Alloh taolo tomonidan oldindan belgilab qo‘yilganiga ishonaman va o‘limdan keyin qayta tirilishga ishonaman”.",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.white,
//                             fontSize: 22.3,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Sahifa3 extends StatefulWidget {
//   const Sahifa3({super.key});

//   @override
//   State<Sahifa3> createState() => _Sahifa3State();
// }

// class _Sahifa3State extends State<Sahifa3> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: IconThemeData(
//           color: Color.fromARGB(255, 255, 247, 7),
//         ),
//         backgroundColor: Colors.green,
//         title: Text(
//           "Дуолар",
//           style: TextStyle(
//             color: Color.fromARGB(255, 255, 247, 7),
//           ),
//         ),
//       ),
//       backgroundColor: Colors.green,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: InkWell(
//                 onTap: () {},
//                 child: Container(
//                   height: 900,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       width: 1.5,
//                       color: Color.fromARGB(255, 255, 247, 7),
//                     ),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(10),
//                     child: Column(
//                       children: [
//                         Text(
//                           "    1.Расулуллоҳ соллаллоҳу алайҳи васаллам тонг отганида:\nاللهُمَّ بِكَ أَصْبَحْنَا وَبِكَ أَمْسَيْنَا وَبِكَ نَحْيَا وَبِكَ نَمُوتُ وَإِلَيْكَ النُّشُورُ ",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.white,
//                             fontSize: 25,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 50,
//                         ),
//                         Text(
//                           "     Аллоҳумма бика асбаҳнаа ва бика амсайнаа ва бика наҳйаа ва бика намууту ва илайкан нушуур»  дер эдилар.",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.white,
//                             fontSize: 25,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 50,
//                         ),
//                         Text(
//                           "    Маъноси: Аллоҳим, Сенинг номинг ила тонг оттирдик, Сенинг номинг ила кеч киргиздик. Сенинг номинг ила тириламиз ва Сенинг номинг ила ўламиз. Ва Сенга қайтажакмиз.",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.white,
//                             fontSize: 25,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 height: 650,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     width: 1.5,
//                     color: Color.fromARGB(255, 255, 247, 7),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(10),
//                   child: Column(
//                     children: [
//                       Text(
//                         "    2.Кеч кирганида эса:\nاللهُمَّ بِكَ أَمْسَيْنَا وَبِكَ أَصْبَحْنَا وَبِكَ نَحْيَا وَبِكَ نَمُوتُ وَإِلَيْكَ الْمَصِير",
//                         style: GoogleFonts.josefinSans(
//                           color: Colors.white,
//                           fontSize: 22,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 30,
//                       ),
//                       Text(
//                         "    «Аллоҳумма бика амсайнаа ва бика наҳйаа ва бика намууту ва илайкал масийр».",
//                         style: GoogleFonts.josefinSans(
//                           color: Colors.white,
//                           fontSize: 22,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 30,
//                       ),
//                       Text(
//                         "    (“Аллоҳим, Сенинг номинг ила кеч киргиздик. Сенинг номинг ила тириламиз ва Сенинг номинг ила вафот этамиз. Ва Сенга қайтажакмиз”), деб айтар эдилар.Абу Довуд, Термизий ва Ибн Можалар ривояти.",
//                         style: GoogleFonts.josefinSans(
//                           color: Colors.white,
//                           fontSize: 22,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 height: 1200,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     width: 1.5,
//                     color: Color.fromARGB(255, 255, 247, 7),
//                   ),
//                 ),
//                 child: Column(
//                   children: [
//                     Text(
//                       "    3.Абдуллоҳ ибн Ғанном розияллоҳу анҳудан ривоят қилинади:\n Расулуллоҳ соллаллоҳу алайҳи васаллам: «Ким тонг отганида:\nاللهُمَّ مَا أَصْبَحَ بِي مِنْ نِعْمَةٍ، فَمِنْكَ وَحْدَكَ لاَ شَرِيكَ لَكَ، فَلَكَ الْحَمْدُ وَلَكَ الشُّكْرُ ",
//                       style: GoogleFonts.josefinSans(
//                           color: Colors.white,
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(
//                       height: 50,
//                     ),
//                     Text(
//                       "    «Аллоҳумма маа асбаҳа бий мин ниъматин фаминка ваҳдака лаа шарийка лак, фалакал ҳамду ва лакаш шукр», деса, кундузнинг шукрини адо қилибди. Ким шу дуони кеч кирганида айтса, кечанинг шукрини адо этибди», дедилар.",
//                       style: GoogleFonts.josefinSans(
//                           color: Colors.white,
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(
//                       height: 50,
//                     ),
//                     Text(
//                       "    Маъноси: Аллоҳим, мен билан тонг оттирган неъматлар Сен томондандир. Сен яккаю ёлғиздирсан, Сенинг шеригинг йўқ. Сенга ҳамд ва шукрлар бўлсин.\nАбу Довуд ривоятлари.",
//                       style: GoogleFonts.josefinSans(
//                           color: Colors.white,
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 height: 2150,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     width: 1.5,
//                     color: Color.fromARGB(255, 255, 247, 7),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(10),
//                   child: Column(
//                     children: [
//                       Text(
//                           "    4.Уммул мўминийн Жувайрия розияллоҳу анҳодан ривоят қилинади: \n«Расулуллоҳ соллаллоҳу алайҳи васаллам эрталаб субҳ намози пайтида унинг ҳузуридан чиқиб кетдилар. У намоз ўқийдиган хонасида эди. Сўнгра зуҳо намозини ўқиб бўлиб қайтиб келсалар, Жувайрия онамиз ҳали ҳам ўтирган эдилар. Шунда Расулуллоҳ соллаллоҳу алайҳи васаллам: «Чиқиб кетганимдан бери шу ҳолатда ўтирибсанми?» деб сўрадилар. Онамиз розияллоҳу анҳо:  «Ҳа», дея жавоб бердилар. «Мен сендан кейин тўртта калимани уч мартадан айтдим, агар улар тарозида ўлчанса, сен бугун айтган нарсалардан оғир келади, – дедилар Расулуллоҳ соллаллоҳу алайҳи васаллам. – Улар:\nسُبْحَانَ اللهِ وَبِحَمْدِهِ عَدَدَ خَلْقِهِ، وَرِضَى نَفْسِهِ، وَزِنَةَ عَرْشِهِ وَمِدَادَ كَلِمَاتِهِ مرات",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.white,
//                             fontSize: 25,
//                             fontWeight: FontWeight.bold,
//                           )),
//                       SizedBox(
//                         height: 60,
//                       ),
//                       Text(
//                           "    «Субҳааналлоҳи ва биҳамдиҳи ъадада холқиҳи ва ридоо нафсиҳи ва зината ъаршиҳи ва мидаада калимаатиҳи».",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.white,
//                             fontSize: 25,
//                             fontWeight: FontWeight.bold,
//                           )),
//                       SizedBox(
//                         height: 60,
//                       ),
//                       Text(
//                           "    Маъноси: “Яратганларининг ададича, нафси рози бўлгунича, аршнинг вазнича, калималарнинг узунлигича Аллоҳга ҳамд айтаман ва Уни поклайман.\nИмом Муслим ривоятлари.",
//                           style: GoogleFonts.josefinSans(
//                             color: Colors.white,
//                             fontSize: 25,
//                             fontWeight: FontWeight.bold,
//                           )),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 height: 1200,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     width: 1.5,
//                     color: Color.fromARGB(255, 255, 247, 7),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(10),
//                   child: Column(
//                     children: [
//                       Text(
//                         "    5.Абу Айюб Ансорий розияллоҳу анҳудан ривоят қилинади:\n«Расулуллоҳ соллаллоҳу алайҳи васаллам: «Ким:\nلاَ إِلَهَ إِلاَّ اللهُ وَحْدَهُ لاَ شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ",
//                         style: GoogleFonts.josefinSans(
//                           color: Colors.white,
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 50,
//                       ),
//                       Text(
//                         "    «Лаа илааҳа иллаллоҳу ваҳдаҳу лаа шарийка лаҳу, лаҳул мулку ва лаҳул ҳамду ва ҳува ъалаа кулли шай`ин қодийр», деб ўн марта айтса, Исмоил зурриётидан тўрт кишини озод қилгандек бўлади», дедилар».",
//                         style: GoogleFonts.josefinSans(
//                           color: Colors.white,
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 50,
//                       ),
//                       Text(
//                         "    Маъноси: “Аллоҳдан бошқа илоҳ йўқ, У ёлғиз, Унинг шериги ҳам йўқ, бутун мулк Уники, ҳамд ҳам Унга хос ва У ҳар бир нарсага қодирдир.\nИмом Бухорий ва Муслим ривоятлари.",
//                         style: GoogleFonts.josefinSans(
//                           color: Colors.white,
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 height: 1100,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     width: 1.5,
//                     color: Color.fromARGB(255, 255, 247, 7),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     children: [
//                       Text(
//                         "    6.Абу Саид Худрий розияллоҳу анҳудан ривоят қилинади:\nРасулуллоҳ соллаллоҳу алайҳи васаллам: «Ким:\nرَضِيتُ بِاللهِ رَبًّا، وَبِالإِسْلاَمِ دِينًا وَبِمُحَمَّدٍ صلى الله عليه وسلم رَسُولاً ",
//                         style: GoogleFonts.josefinSans(
//                           color: Colors.white,
//                           fontSize: 26.7,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 50,
//                       ),
//                       Text(
//                         "    «Родийту биллааҳи роббан ва бил ислаами дийнан ва бимуҳаммадин соллаллооҳу алайҳи васаллама росулаа», деса, унга жаннат вожиб бўлади», дедилар.",
//                         style: GoogleFonts.josefinSans(
//                           color: Colors.white,
//                           fontSize: 26.7,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 50,
//                       ),
//                       Text(
//                         "    Маъноси: “Аллоҳни раббим деб, Исломни диним деб, Муҳаммад алайҳиссаломни расул деб рози бўлдим.\nАбу Довуд ривоят қилганлар.",
//                         style: GoogleFonts.josefinSans(
//                           color: Colors.white,
//                           fontSize: 26.7,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 height: 1200,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     width: 1.5,
//                     color: Color.fromARGB(255, 255, 247, 7),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     children: [
//                       Text(
//                         "    7.Абу Ҳурайра розияллоҳу анҳу айтадилар:\n«Расулуллоҳ соллаллоҳу алайҳи васаллам ҳузурларига бир киши келиб: «Эй Расулуллоҳ, кеча мени чаён чақиб олди», деди. Шунда Набий соллаллоҳу алайҳи васаллам: «Кеч кирганида:\nأَعُوذُ بِكَلِمَاتِ اللهِ التَّامَّاتِ مِنْ شَرِّ مَا خَلَقَ ",
//                         style: GoogleFonts.josefinSans(
//                           color: Colors.white,
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 50,
//                       ),
//                       Text(
//                         "    «Аъузу бикалиматиллаҳит таммати мин шарри ма холақ», десанг, сенга ҳеч нарса зарар бермайди», дедилар.",
//                         style: GoogleFonts.josefinSans(
//                           color: Colors.white,
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 50,
//                       ),
//                       Text(
//                         "    Маъноси: “Аллоҳнинг ҳамма калималари билан У яратган нарсаларнинг ёмонлигидан паноҳ тилайман.\nИмом Муслим ривоятлари.",
//                         style: GoogleFonts.josefinSans(
//                           color: Colors.white,
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 height: 1250,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     width: 1.5,
//                     color: Color.fromARGB(255, 255, 247, 7),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     children: [
//                       Text(
//                         "    8.Усмон ибн Аффон  розияллоҳу анҳудан ривоят қилинади : \nРасулуллоҳ соллаллоҳу алайҳи васаллам: «Бирор бир банда ҳар тонгда ва тунда:\nبِاسْمِ اللهِ الَّذِي لاَ يَضُرُّ مَعَ اسْمِهِ شَيْءٌ فِي الأَرْضِ وَلاَ فِي السَّمَاء وَهُوَ السَّمِيعُ العَلِيمُ",
//                         style: GoogleFonts.josefinSans(
//                           color: Colors.white,
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 50,
//                       ),
//                       Text(
//                         "    «Бисмиллааҳиллазий ла йадурру маъасмиҳии шай`ун фил арди ва лаа фис самаи ва ҳувас самийъул ъалийм», деб уч марта айтса, унга бирор нарса зарар бермайди», дедилар.",
//                         style: GoogleFonts.josefinSans(
//                           color: Colors.white,
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 50,
//                       ),
//                       Text(
//                         "    Маъноси: Шундай Аллоҳнинг исми билан бошлайманки, Унинг исми туфайли еру осмонда бирор нарса зарар бера олмайди. У эшитувчи ва билувчи Зотдир.\nАбу Довуд ва Термизий ривоятлари.",
//                         style: GoogleFonts.josefinSans(
//                           color: Colors.white,
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 height: 1330,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     width: 1.5,
//                     color: Color.fromARGB(255, 255, 247, 7),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     children: [
//                       Text(
//                         "    9.нас розияллоҳу анҳудан ривоят қилинади:\nРасулуллоҳ алайҳиссалом Фотима розияллоҳу анҳога: «Васият қилган нарсамни эшитишдан сени нима тўсади? Ҳар тонг ва кечқурун:\nيَا حَيُّ يَا قَيُّومُ، بِرَحْمَتِكَ أَسْتَغِيثُ، أَصْلِحْ لِي شَأْنِي كُلَّهُ، وَلاَ تَكِلْنِي إِلَى نَفْسِي طَرْفَةَ عَيْنٍ,",
//                         style: GoogleFonts.josefinSans(
//                           color: Colors.white,
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 50,
//                       ),
//                       Text(
//                         "    «Йаа ҳаййу йаа қоййууму бироҳматика астағийсу аслиҳ лий ша`ний куллаҳу ва лаа такилний илаа нафсий торфата ъайн», деб айт», дедилар.",
//                         style: GoogleFonts.josefinSans(
//                           color: Colors.white,
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 50,
//                       ),
//                       Text(
//                         "    Маъноси: Эй ҳай-тирик ва қаййум сифатига эга бўлган Зот, Сендан ёрдам сўрайман. Шаънимни ҳар бир нарсада ислоҳ эт ва кўз юмиб очгунчалик муддат ҳам ўз ҳолимга ташлаб қўйма.\nИбн Сунний ривоятлари.",
//                         style: GoogleFonts.josefinSans(
//                           color: Colors.white,
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 height: 950,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     width: 1.5,
//                     color: Color.fromARGB(255, 255, 247, 7),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     children: [
//                       Text(
//                         "    10.Расулуллоҳ соллаллоҳу алайҳи васаллам тонг отса:\nاللَّهُمَّ إنِّي اسْأَلُكَ عِلْمًا نَافِعًا وَرِزْقًا طَيِّبًا وَعَمَلاً مُتَقَبَّلاً",
//                         style: GoogleFonts.josefinSans(
//                           color: Colors.white,
//                           fontSize: 30,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 50,
//                       ),
//                       Text(
//                         "    «Аллоҳумма инний ас`алука ъилман нафиъан ва ризқон тоййибан ва ъамалан мутақоббала», деб айтар эдилар.",
//                         style: GoogleFonts.josefinSans(
//                           color: Colors.white,
//                           fontSize: 30,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 50,
//                       ),
//                       Text(
//                         "    Маъноси: “Аллоҳим, Сендан фойдали илм, покиза ризқ, қабул бўладиган амал сўрайман.",
//                         style: GoogleFonts.josefinSans(
//                           color: Colors.white,
//                           fontSize: 30,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Sahifa4 extends StatefulWidget {
//   const Sahifa4({super.key});

//   @override
//   State<Sahifa4> createState() => _Sahifa4State();
// }

// class _Sahifa4State extends State<Sahifa4> {
//   String kun = "";
//   String quyosh = "";
//   String bomdod = "";
//   String peshin = "";
//   String asr = "";
//   String shom = "";
//   String hufton = "";
//   String city = "Uzbekistan"; // Default city corrected
//   String sana = "";
//   String errorMessage = ""; // To store error messages

//   // Function to get prayer times from API
//   Future<void> getData(String city) async {
//     try {
//       String apiUrl =
//           "https://api.aladhan.com/v1/timingsByAddress?address=$city";
//       http.Response response = await http.get(Uri.parse(apiUrl));

//       if (response.statusCode == 200) {
//         var data = jsonDecode(response.body);

//         setState(() {
//           kun = data['data']['date']['gregorian']['weekday']['en'] ?? "Unknown";
//           bomdod = data['data']['timings']['Fajr'] ?? "N/A";
//           quyosh = data['data']['timings']['Sunrise'] ?? "N/A";
//           peshin = data['data']['timings']['Dhuhr'] ?? "N/A";
//           asr = data['data']['timings']['Asr'] ?? "N/A";
//           shom = data['data']['timings']['Maghrib'] ?? "N/A";
//           hufton = data['data']['timings']['Isha'] ?? "N/A";
//           sana = data['data']['date']['hijri']['month']['en'] ?? "Unknown";
//           errorMessage = ""; // Clear error message on success
//         });
//       } else {
//         // If the response is not 200, show an error message
//         setState(() {
//           errorMessage =
//               "Ma'lumotlarni olishda xatolik! Yaroqli joyni kiriting.";
//           resetTimes(); // Reset prayer times to N/A
//         });
//       }
//     } catch (e) {
//       // Handle JSON decoding or network errors
//       setState(() {
//         errorMessage = "Xatolik yuz berdi: ${e.toString()}";
//         resetTimes();
//       });
//     }
//   }

//   // Helper function to reset all prayer times to "N/A"
//   void resetTimes() {
//     kun = sana = "Erroor";
//     bomdod = quyosh = peshin = asr = shom = hufton = "Error";
//   }

//   @override
//   void initState() {
//     super.initState();
//     getData(city); // Get initial data for Uzbekistan
//   }

//   TextEditingController cityController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         iconTheme: const IconThemeData(color: Colors.white),
//         toolbarHeight: 105,
//         title: const Column(
//           children: [
//             SizedBox(height: 0),
//             Text(
//               "Namoz vaqtlari \n(butun dunyo)",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 26,
//                 fontWeight: FontWeight.w900,
//               ),
//             ),
//           ],
//         ),
//         backgroundColor: Colors.white.withOpacity(0.0),
//         centerTitle: true,
//       ),
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: NetworkImage(
//               "https://i.pinimg.com/736x/9d/fe/1e/9dfe1eeaf083fc7b992b442e2a6ffe7e.jpg",
//             ),
//             fit: BoxFit.fill,
//           ),
//         ),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 const SizedBox(height: 60),
//                 Padding(
//                   padding: const EdgeInsets.all(20),
//                   child: TextField(
//                     controller: cityController,
//                     decoration: InputDecoration(
//                       suffixIcon: IconButton(
//                         onPressed: () {
//                           setState(() {
//                             city = cityController.text;
//                             getData(city); // Fetch data for entered location
//                           });
//                         },
//                         icon: const Icon(Icons.search, color: Colors.white),
//                       ),
//                       border: const OutlineInputBorder(),
//                       labelText: 'Joylashuvni kiriting',
//                       labelStyle: const TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//                 if (errorMessage.isNotEmpty) ...[
//                   Text(
//                     errorMessage,
//                     style: const TextStyle(color: Colors.red, fontSize: 18),
//                   ),
//                   const SizedBox(height: 10),
//                 ],
//                 buildPrayerRow("     City:  ", city),
//                 const SizedBox(height: 15),
//                 buildPrayerRow("     Day: ", kun),
//                 const SizedBox(height: 15),
//                 buildPrayerRow("     Data:  ", sana),
//                 const SizedBox(height: 15),
//                 buildPrayerRow("     Bomdod:  ", bomdod),
//                 const SizedBox(height: 15),
//                 buildPrayerRow("     Sun:  ", quyosh),
//                 const SizedBox(height: 15),
//                 buildPrayerRow("     Peshin:  ", peshin),
//                 const SizedBox(height: 15),
//                 buildPrayerRow("     Asr: ", asr),
//                 const SizedBox(height: 15),
//                 buildPrayerRow("     Shom:  ", shom),
//                 const SizedBox(height: 15),
//                 buildPrayerRow("     Hufton:  ", hufton),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   // Helper function to display prayer times
//   Widget buildPrayerRow(String title, String time) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
//       child: Row(
//         children: [
//           Text(
//             "$title ",
//             style: const TextStyle(
//               fontSize: 25,
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           Text(
//             time,
//             style: const TextStyle(color: Colors.white, fontSize: 28),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Sahifa5 extends StatefulWidget {
//   const Sahifa5({super.key});

//   @override
//   State<Sahifa5> createState() => _Sahifa5State();
// }

// class _Sahifa5State extends State<Sahifa5> {
//   String kun = "";
//   String quyosh = "";
//   String bomdod = "";
//   String peshin = "";
//   String asr = "";
//   String shom = "";
//   String hufton = "";
//   String city = "Qo'qon"; // Default city
//   String sana = "";

//   void getData(String city) async {
//     // Fixing the URL by correctly inserting the city variable
//     String apiUrl =
//         "https://islomapi.uz/api/present/day?region=$city"; // Viloyat nomini URL ga qo'shish
//     http.Response response = await http.get(Uri.parse(apiUrl));

//     // Check if the response is valid
//     if (response.statusCode == 200) {
//       Map<String, dynamic> timeData = jsonDecode(response.body);

//       setState(() {
//         kun = timeData["weekday"] ?? "Noma'lum";
//         bomdod = timeData['times']['tong_saharlik'] ?? "Noma'lum";
//         quyosh = timeData['times']['quyosh'] ?? "Noma'lum";
//         peshin = timeData['times']['peshin'] ?? "Noma'lum";
//         asr = timeData['times']['asr'] ?? "Noma'lum";
//         shom = timeData['times']['shom_iftor'] ?? "Noma'lum";
//         hufton = timeData['times']['hufton'] ?? "Noma'lum";
//         sana = timeData['date'] ?? "Noma'lum"; // Assuming 'date' is a string
//       });
//     } else {
//       // Error handling
//       setState(() {
//         kun = "Xatolik!";
//         bomdod = quyosh = peshin = asr = shom = hufton = "Xatolik!";
//         sana = "Xatolik!";
//       });
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     getData(city); // Initial data fetch for the default city
//   }

//   TextEditingController cityController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         iconTheme: IconThemeData(
//           color: Colors.white,
//         ),
//         toolbarHeight: 55,
//         backgroundColor: Colors.white.withOpacity(0.0),
//         title: Text(
//           "Namoz vaqtlari \n(O'zbekiston)",
//           style: TextStyle(
//               color: Colors.white, fontWeight: FontWeight.w900, fontSize: 25),
//         ),
//         centerTitle: true,
//       ),
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: NetworkImage(
//               "https://i.pinimg.com/736x/9d/fe/1e/9dfe1eeaf083fc7b992b442e2a6ffe7e.jpg",
//             ),
//             fit: BoxFit.fill,
//           ),
//         ),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 SizedBox(
//                   height: 50,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(20),
//                   child: TextField(
//                     cursorColor: Colors.white,
//                     controller: cityController,
//                     decoration: InputDecoration(
//                       suffixIcon: IconButton(
//                         onPressed: () {
//                           setState(() {
//                             city = cityController.text;
//                             getData(city); // Fetch data for the new city
//                           });
//                         },
//                         icon: Icon(
//                           Icons.search,
//                           color: Colors.white,
//                         ),
//                       ),
//                       border: OutlineInputBorder(),
//                       labelStyle: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w900,
//                       ),
//                       labelText: 'Joylashuvni kiriting',
//                     ),
//                   ),
//                 ),
//                 buildPrayerRow("       Joylashuvi:  ", city),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 buildPrayerRow("       Kun: ", kun),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 buildPrayerRow("       Hijri sana:  ", sana),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 buildPrayerRow("       Bomdod:  ", bomdod),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 buildPrayerRow("       Quyosh:  ", quyosh),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 buildPrayerRow("       Peshin:  ", peshin),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 buildPrayerRow("       Asr:  ", asr),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 buildPrayerRow("       Shom:  ", shom),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 buildPrayerRow("       Hufton:  ", hufton),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   // Helper function to create rows for each prayer time
//   Widget buildPrayerRow(String title, String time) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
//       child: Row(
//         children: [
//           Text(
//             "$title ",
//             style: TextStyle(
//               fontSize: 25,
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           Text(
//             time,
//             style: TextStyle(
//               fontSize: 28,
//               color: Colors.white,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }