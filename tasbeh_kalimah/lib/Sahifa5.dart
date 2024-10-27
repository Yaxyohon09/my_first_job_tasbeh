// import 'dart:convert';

// import 'package:flutter/material.dart';
// // import 'package:tasbeh_kalimah/begin.dart';
// // import 'package:tasbeh_kalimah/kirishi.dart';
// // import 'package:flutter_spinkit/flutter_spinkit.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'dart:convert';
// import 'package:http/http.dart' as http;




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
//   String city = "qo'qon"; // Default city
//   String sana = "";

//   void getData(String city) async {
//     // Fixing the URL by correctly inserting the city variable
//     String apiUrl = "https://islomapi.uz/api/present/day?region=qo%27qon$city";
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
//           "Namoz vaqtlari \n(Uzbekiston)",
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

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Sahifa5 extends StatefulWidget {
  const Sahifa5({super.key});

  @override
  State<Sahifa5> createState() => _Sahifa5State();
}

class _Sahifa5State extends State<Sahifa5> {
  String kun = "";
  String quyosh = "";
  String bomdod = "";
  String peshin = "";
  String asr = "";
  String shom = "";
  String hufton = "";
  String city = "Qo'qon"; // Default city
  String sana = "";

  void getData(String city) async {
    // Fixing the URL by correctly inserting the city variable
    String apiUrl = "https://islomapi.uz/api/present/day?region=$city"; // Viloyat nomini URL ga qo'shish
    http.Response response = await http.get(Uri.parse(apiUrl));

    // Check if the response is valid
    if (response.statusCode == 200) {
      Map<String, dynamic> timeData = jsonDecode(response.body);

      setState(() {
        kun = timeData["weekday"] ?? "Noma'lum";
        bomdod = timeData['times']['tong_saharlik'] ?? "Noma'lum";
        quyosh = timeData['times']['quyosh'] ?? "Noma'lum";
        peshin = timeData['times']['peshin'] ?? "Noma'lum";
        asr = timeData['times']['asr'] ?? "Noma'lum";
        shom = timeData['times']['shom_iftor'] ?? "Noma'lum";
        hufton = timeData['times']['hufton'] ?? "Noma'lum";
        sana = timeData['date'] ?? "Noma'lum"; // Assuming 'date' is a string
      });
    } else {
      // Error handling
      setState(() {
        kun = "Xatolik!";
        bomdod = quyosh = peshin = asr = shom = hufton = "Xatolik!";
        sana = "Xatolik!";
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getData(city); // Initial data fetch for the default city
  }

  TextEditingController cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        toolbarHeight: 55,
        backgroundColor: Colors.white.withOpacity(0.0),
        title: Text(
          "Namoz vaqtlari \n(O'zbekiston)",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w900, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://i.pinimg.com/736x/9d/fe/1e/9dfe1eeaf083fc7b992b442e2a6ffe7e.jpg",
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    cursorColor: Colors.white,
                    controller: cityController,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            city = cityController.text;
                            getData(city); // Fetch data for the new city
                          });
                        },
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                      labelText: 'Joylashuvni kiriting',
                    ),
                  ),
                ),
                buildPrayerRow("       Joylashuvi:  ", city),
                SizedBox(
                  height: 15,
                ),
                buildPrayerRow("       Kun: ", kun),
                SizedBox(
                  height: 15,
                ),
                buildPrayerRow("       Hijri sana:  ", sana),
                SizedBox(
                  height: 15,
                ),
                buildPrayerRow("       Bomdod:  ", bomdod),
                SizedBox(
                  height: 15,
                ),
                buildPrayerRow("       Quyosh:  ", quyosh),
                SizedBox(
                  height: 15,
                ),
                buildPrayerRow("       Peshin:  ", peshin),
                SizedBox(
                  height: 15,
                ),
                buildPrayerRow("       Asr:  ", asr),
                SizedBox(
                  height: 15,
                ),
                buildPrayerRow("       Shom:  ", shom),
                SizedBox(
                  height: 15,
                ),
                buildPrayerRow("       Hufton:  ", hufton),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper function to create rows for each prayer time
  Widget buildPrayerRow(String title, String time) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
      child: Row(
        children: [
          Text(
            "$title ",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            time,
            style: TextStyle(
              fontSize: 28,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}