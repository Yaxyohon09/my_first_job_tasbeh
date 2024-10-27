import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Sahifa4 extends StatefulWidget {
  const Sahifa4({super.key});

  @override
  State<Sahifa4> createState() => _Sahifa4State();
}

class _Sahifa4State extends State<Sahifa4> {
  String kun = "";
  String quyosh = "";
  String bomdod = "";
  String peshin = "";
  String asr = "";
  String shom = "";
  String hufton = "";
  String city = "Uzbekistan"; // Default city corrected
  String sana = "";
  String errorMessage = ""; // To store error messages

  // Function to get prayer times from API
  Future<void> getData(String city) async {
    try {
      String apiUrl =
          "https://api.aladhan.com/v1/timingsByAddress?address=$city";
      http.Response response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);

        setState(() {
          kun = data['data']['date']['gregorian']['weekday']['en'] ?? "Unknown";
          bomdod = data['data']['timings']['Fajr'] ?? "N/A";
          quyosh = data['data']['timings']['Sunrise'] ?? "N/A";
          peshin = data['data']['timings']['Dhuhr'] ?? "N/A";
          asr = data['data']['timings']['Asr'] ?? "N/A";
          shom = data['data']['timings']['Maghrib'] ?? "N/A";
          hufton = data['data']['timings']['Isha'] ?? "N/A";
          sana = data['data']['date']['hijri']['month']['en'] ?? "Unknown";
          errorMessage = ""; // Clear error message on success
        });
      } else {
        // If the response is not 200, show an error message
        setState(() {
          errorMessage = "Ma'lumotlarni olishda xatolik! Yaroqli joyni kiriting.";
          resetTimes(); // Reset prayer times to N/A
        });
      }
    } catch (e) {
      // Handle JSON decoding or network errors
      setState(() {
        errorMessage = "Xatolik yuz berdi: ${e.toString()}";
        resetTimes();
      });
    }
  }

  // Helper function to reset all prayer times to "N/A"
  void resetTimes() {
    kun = sana = "Erroor";
    bomdod = quyosh = peshin = asr = shom = hufton = "Error";
  }

  @override
  void initState() {
    super.initState();
    getData(city); // Get initial data for Uzbekistan
  }

  TextEditingController cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        toolbarHeight: 105,
        title: const Column(
          children: [
            SizedBox(height: 0),
            Text(
              "Namoz vaqtlari \n(butun dunyo)",
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white.withOpacity(0.0),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
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
                const SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    controller: cityController,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            city = cityController.text;
                            getData(city); // Fetch data for entered location
                          });
                        },
                        icon: const Icon(Icons.search, color: Colors.white),
                      ),
                      border: const OutlineInputBorder(),
                      labelText: 'Joylashuvni kiriting',
                      labelStyle: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                if (errorMessage.isNotEmpty) ...[
                  Text(
                    errorMessage,
                    style: const TextStyle(color: Colors.red, fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                ],
                buildPrayerRow("     City:  ", city),
                const SizedBox(height: 15),
                buildPrayerRow("     Day: ", kun),
                const SizedBox(height: 15),
                buildPrayerRow("     Data:  ", sana),
                const SizedBox(height: 15),
                buildPrayerRow("     Bomdod:  ", bomdod),
                const SizedBox(height: 15),
                buildPrayerRow("     Sun:  ", quyosh),
                const SizedBox(height: 15),
                buildPrayerRow("     Peshin:  ", peshin),
                const SizedBox(height: 15),
                buildPrayerRow("     Asr: ", asr),
                const SizedBox(height: 15),
                buildPrayerRow("     Shom:  ", shom),
                const SizedBox(height: 15),
                buildPrayerRow("     Hufton:  ", hufton),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper function to display prayer times
  Widget buildPrayerRow(String title, String time) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
      child: Row(
        children: [
          Text(
            "$title ",
            style: const TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            time,
            style: const TextStyle(color: Colors.white, fontSize: 28),
          ),
        ],
      ),
    );
  }
}


// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

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
//   String city = "Uzbekiston"; // Default city
//   String sana = "";

//   void getData(String city) async {
//     // Inputga kiritilgan davlat yoki viloyat uchun API so'rovini yuboradi
//     String apiUrl = "https://api.aladhan.com/v1/timingsByAddress?address=$city";
//     http.Response response = await http.get(Uri.parse(apiUrl));

//     if (response.body.isNotEmpty) {
//       var data = jsonDecode(response.body);
//       setState(() {
//         kun = data['data']['date']['gregorian']['weekday']['en'] ?? "Unknown";
//         bomdod = data['data']['timings']['Fajr'] ?? "N/A";
//         quyosh = data['data']['timings']['Sunrise'] ?? "N/A";
//         peshin = data['data']['timings']['Dhuhr'] ?? "N/A";
//         asr = data['data']['timings']['Asr'] ?? "N/A";
//         shom = data['data']['timings']['Maghrib'] ?? "N/A";
//         hufton = data['data']['timings']['Isha'] ?? "N/A";
//         sana = data['data']['date']['hijri']['month']['en'] ?? "Unknown";
//       });
//     } else {
//       print('Response is empty');
//       setState(() {
//         kun = "Xatolik!";
//         bomdod = quyosh = peshin = asr = shom = hufton = "N/A";
//         sana = "Xatolik!";
//       });
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     getData(city); // Dastlab Qo'qon viloyati uchun ma'lumotlarni olish
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
//         toolbarHeight: 105,
//         title: Column(
//           children: [
//             SizedBox(
//               height: 0,
//             ),
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
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: NetworkImage(
//               "https://i.pinimg.com/736x/9d/fe/1e/9dfe1eeaf083fc7b992b442e2a6ffe7e.jpg",
//             ),
//             fit: BoxFit.fill,
//           ),
//         ),
//         child: Center(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               SizedBox(
//                 height: 100,
//               ),
//               Padding(
//                 padding: EdgeInsets.all(20),
//                 child: TextField(
//                   controller: cityController,
//                   decoration: InputDecoration(
//                     suffixIcon: IconButton(
//                       onPressed: () {
//                         setState(() {
//                           city = cityController.text;
//                           getData(
//                               city); // Kiritilgan shahar yoki viloyat uchun ma'lumotlarni olish
//                         });
//                       },
//                       icon: Icon(Icons.search, color: Colors.white),
//                     ),
//                     border: OutlineInputBorder(),
//                     labelText: 'Joylashuvni kiriting',
//                     labelStyle: TextStyle(
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//               buildPrayerRow("     City:  ", city),
//               SizedBox(
//                 height: 15,
//               ),
//               buildPrayerRow("     Day: ", kun),
//               SizedBox(
//                 height: 15,
//               ),
//               buildPrayerRow("     Data:  ", sana),
//               SizedBox(
//                 height: 15,
//               ),
//               buildPrayerRow("     Bomdod:  ", bomdod),
//               SizedBox(
//                 height: 15,
//               ),
//               buildPrayerRow("     Sun:  ", quyosh),
//               SizedBox(
//                 height: 15,
//               ),
//               buildPrayerRow("     Peshin:  ", peshin),
//               SizedBox(
//                 height: 15,
//               ),
//               buildPrayerRow("     Asr: ", asr),
//               SizedBox(
//                 height: 15,
//               ),
//               buildPrayerRow("     Shom:  ", shom),
//               SizedBox(
//                 height: 15,
//               ),
//               buildPrayerRow("     Hufton:  ", hufton),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Namoz vaqtlarini ko'rsatish uchun yordamchi funksiya
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
//             style: TextStyle(color: Colors.white, fontSize: 28),
//           ),
//         ],
//       ),
//     );
//   }
// }