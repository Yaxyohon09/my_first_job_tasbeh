// import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// // import 'package:getwidget/getwidget.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'dart:convert';
// // import 'package:http/http.dart' as http;

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: begin(),
//   ));
// }

// class begin extends StatefulWidget {
//   const begin({super.key});

//   @override
//   State<begin> createState() => _beginState();
// }

// class _beginState extends State<begin> {
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(Duration(seconds: 3)).then((value) {
//       Navigator.pushNamed(context, "Kirishi");
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Color.fromARGB(255, 255, 247, 7),
//         body: Column(
//           children: [
//             SizedBox(
//               height: 200,
//             ),
//             Text(
//               "Tasbeh_Kalimah",
//               style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(
//               height: 120,
//             ),
//             Center(
//               child: SpinKitCircle(
//                 color: Colors.black,
//                 size: 50,
//               ),
//             ),
//           ],
//         ));
//   }
// }

// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';

class Begin extends StatefulWidget {
  const Begin({super.key});

  @override
  State<Begin> createState() => _BeginState();
}

class _BeginState extends State<Begin> {
  @override
  void initState() {
    super.initState();
    // Delayed navigation to ensure context is available
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.pushNamed(context, "kirishi");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 247, 7),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 200),
          const Text(
            "Tasbeh_Kalimah",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 120),
          const SpinKitCircle(
            color: Colors.black,
            size: 50,
          ),
        ],
      ),
    );
  }
}
