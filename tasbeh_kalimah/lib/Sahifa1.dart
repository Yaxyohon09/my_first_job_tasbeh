// import 'package:flutter/material.dart';

// class Sahifa1 extends StatefulWidget {
//   const Sahifa1({super.key});

//   @override
//   State<Sahifa1> createState() => _Sahifa1State();
// }

// class _Sahifa1State extends State<Sahifa1> {
// List nom = [
//   "Ar-Rahmon (Mehribon)",
//   "Ar-Rahim (Rahmli)",
//   "Al-Malik (Podshoh, Hukmron)",
//   "Al-Quddus (Mutlaq Pok)",
//   "As-Salom (Tinchlik va Omonlik Manbai)",
//   "Al-Mu’min (Iymon Baxsh Etuvchi)",
//   "Al-Muhaymin (Himoyachi va Kuzatuvchi)",
//   "Al-Aziz (Qudratli)",
//   "Al-Jabbor (Majburlovchi va Tuzatuvchi)",
//   "Al-Mutakabbir (Buyuk va Mag‘rur)",
//   "Al-Xoliq (Yaratuvchi)",
//   "Al-Bariy (Niqobchi, Ijodkor)",
//   "Al-Musavvir (Shakllantiruvchi)",
//   "Al-G‘affor (Kechiruvchi)",
//   "Al-Qahhor (G‘olib)",
//   "Al-Vahhob (In’om Beruvchi)",
//   "Ar-Razzoq (Rizq Beruvchi)",
//   "Al-Fattoh (Ochuvchi, Yechim Beruvchi)",
//   "Al-Alim (Hamma narsani Biluvchi)",
//   "Al-Qobid (Siqib turuvchi)",
//   "Al-Bosit (Kenglik Beruvchi)",
//   "Al-Xofid (Tushiruvchi)",
//   "Ar-Rofe‘ (Ko‘taruvchi)",
//   "Al-Mu‘izz (Hurmat Baxsh Etuvchi)",
//   "Al-Muzill (Xorlovchi)",
//   "As-Sami‘ (Eshituvchi)",
//   "Al-Basir (Ko‘ruvchi)",
//   "Al-Hakam (Adolatli Hakim)",
//   "Al-Adl (Mutlaq Adolatli)",
//   "Al-Latif (Nozik va Yaxshi Biluvchi)",
//   "Al-Xabir (Xabardor)",
//   "Al-Halim (Halol va Halim)",
//   "Al-Azim (Buyuk va Ulug‘vor)",
//   "Al-G‘afur (Kechiruvchi)",
//   "Ash-Shakur (Shukrni Qabul Qiluvchi)",
//   "Al-Aliyy (Yuksak va Ulug‘)",
//   "Al-Kabir (Buyuk)",
//   "Al-Hafiz (Saqlovchi)",
//   "Al-Muqit (Rizqni Yetkazuvchi)",
//   "Al-Hasib (Hisobga Oluvchi)",
//   "Al-Jalil (Ulug‘)",
//   "Al-Karim (Saxovatli va Sharafli)",
//   "Ar-Raqib (Nazorat qiluvchi)",
//   "Al-Mujib (Duo Qabul Qiluvchi)",
//   "Al-Vasi‘ (Keng Qamrovli)",
//   "Al-Hakim (Donishmand va Aqlli)",
//   "Al-Vadud (Mehribon va Sevuvchi)",
//   "Al-Majid (Sharafli va Buyuk)",
//   "Al-Ba‘is (O‘liklarni Tiriklovchi)",
//   "Ash-Shahid (Guvoh)",
//   "Al-Haqq (Haqiqiy va Haqiqatli)",
//   "Al-Vakil (Ishonchli Vakil)",
//   "Al-Qaviy (Kuchli)",
//   "Al-Matin (Mustahkam)",
//   "Al-Valiy (Do‘st va Homiy)",
//   "Al-Hamid (Maxtovga Loyiq)",
//   "Al-Muhsi (Hisobchi)",
//   "Al-Mubdi‘ (Ibtido Beruvchi)",
//   "Al-Mu‘id (Qayta Tiklovchi)",
//   "Al-Muhyi (Hayot Beruvchi)",
//   "Al-Mumit (O‘lim Beruvchi)",
//   "Al-Hayy (Tirik)",
//   "Al-Qayyum (O‘zi Turgan va Boshqaruvchi)",
//   "Al-Vojid (Topuvchi)",
//   "Al-Majid (Sharafli va Ulug‘vor)",
//   "Al-Vahid (Yagona)",
//   "Al-Ahad (Tengsiz va Yakkayu Yagona)",
//   "As-Somad (Har Narsadan Mustaqil)",
//   "Al-Qodir (Qodir va Qudratli)",
//   "Al-Muqtadir (Hammani Bosharuvchi)",
//   "Al-Muqaddim (Oldinga Suruvchi)",
//   "Al-Mu’axxir (Orqaga Qoldiruvchi)",
//   "Al-Avval (Birinchi)",
//   "Al-Oxir (Oxirgi)",
//   "Az-Zohir (Zohir va Ko‘rinuvchi)",
//   "Al-Botin (Yashirin va Ichki)",
//   "Al-Valiy (Boshqaruvchi va Do‘st)",
//   "Al-Muta‘ali (Yuksak va Ulug‘vor)",
//   "Al-Barr (Yaxshi va Mehribon)",
//   "At-Tavvob (Tavbalarni Qabul Qiluvchi)",
//   "Al-Muntaqim (Jazo Beruvchi)",
//   "Al-Afuvv (Kechiruvchi)",
//   "Ar-Ra'uf (Mehribon va Yumshoq Muomala Qiluvchi)",
//   "Malik-ul-Mulk (Mulk Sohibi)",
//   "Dhul-Jalali Wal-Ikrom (Shon-sharaf va Saxovat So‘hibi)",
//   "Al-Muqsit (Adolatli)",
//   "Al-Jomi‘ (Yig‘uvchi va Birlashtiruvchi)",
//   "Al-G‘aniy (Boy va Mustaqil)",
//   "Al-Mug‘niy (Boyituvchi)",
//   "Al-Mani‘ (To‘sguvchi)",
//   "Ad-Dhorr (Zarar Beruvchi)",
//   "An-Nafi‘ (Foyda Beruvchi)",
//   "An-Nur (Nur Taratuvchi)",
//   "Al-Hadi (Yo‘l Ko‘rsatuvchi)",
//   "Al-Badi (O‘xshashi Yo‘q Yaratuvchi)",
//   "Al-Baqiy (Doimiy va Abadiy)",
//   "Al-Varis (Merosxo‘r)",
//   "Ar-Rashid (To‘g‘ri Yo‘lga Yetaklovchi)",
//   "As-Sabur (Sabrli)",
// ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: NetworkImage(
//               "https://i.pinimg.com/564x/f4/24/e1/f424e1afbb689e3204c4a924e1897ec7.jpg",
//             ),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Column(
//           children: [
//             Container(
//               height: 100,
//               width: 500,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   BackButton(
//                     color: Colors.black,
//                   ),
//                   Text(
//                     "Allah нинг 99-исми",
//                     style: TextStyle(
//                       fontSize: 25,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             GridView(
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 mainAxisSpacing: 10,
//                 crossAxisSpacing: 10,
//               ),
//               children: nom.map(
//                 (item) {
//                   return Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       height: 100,
//                       width: 400,
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                           width: 2,
//                           color: Colors.black,
//                         ),
//                       ),
//                       child: Center(
//                         child: Text(item),
//                       ),
//                     ),
//                   );
//                 },
//               ).toList(),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class Sahifa1 extends StatefulWidget {
  const Sahifa1({super.key});

  @override
  State<Sahifa1> createState() => _Sahifa1State();
}

class _Sahifa1State extends State<Sahifa1> {
  List nom = [
    "   Allah   "
    "1.Ar-Rahmon (Mehribon)",
    "2.Ar-Rahim (Rahmli)",
    "3.Al-Malik (Podshoh, Hukmron)",
    "4.Al-Quddus (Mutlaq Pok)",
    "5.As-Salom (Tinchlik va Omonlik Manbai)",
    "6.Al-Mu’min (Iymon Baxsh Etuvchi)",
    "7.Al-Muhaymin (Himoyachi va Kuzatuvchi)",
    "8.Al-Aziz (Qudratli)",
    "9.Al-Jabbor (Majburlovchi va Tuzatuvchi)",
    "10.Al-Mutakabbir (Buyuk va Mag‘rur)",
    "11.Al-Xoliq (Yaratuvchi)",
    "12.Al-Bariy (Niqobchi, Ijodkor)",
    "13.Al-Musavvir (Shakllantiruvchi)",
    "14.Al-G‘affor (Kechiruvchi)",
    "15.Al-Qahhor (G‘olib)",
    "16.Al-Vahhob (In’om Beruvchi)",
    "17-Razzoq (Rizq Beruvchi)",
    "18.Al-Fattoh (Ochuvchi, Yechim Beruvchi)",
    "19.Al-Alim (Hamma narsani Biluvchi)",
    "20.Al-Qobid (Siqib turuvchi)",
    "21.Al-Bosit (Kenglik Beruvchi)",
    "22.Al-Xofid (Tushiruvchi)",
    "23.Ar-Rofe‘ (Ko‘taruvchi)",
    "24.Al-Mu‘izz (Hurmat Baxsh Etuvchi)",
    "25.Al-Muzill (Xorlovchi)",
    "26.As-Sami‘ (Eshituvchi)",
    "27.Al-Basir (Ko‘ruvchi)",
    "28.Al-Hakam (Adolatli Hakim)",
    "29.Al-Adl (Mutlaq Adolatli)",
    "30.Al-Latif (Nozik va Yaxshi Biluvchi)",
    "31.Al-Xabir (Xabardor)",
    "32.Al-Halim (Halol va Halim)",
    "33.Al-Azim (Buyuk va Ulug‘vor)",
    "34.Al-G‘afur (Kechiruvchi)",
    "35.Ash-Shakur (Shukrni Qabul Qiluvchi)",
    "36.Al-Aliyy (Yuksak va Ulug‘)",
    "37.Al-Kabir (Buyuk)",
    "38.Al-Hafiz (Saqlovchi)",
    "39.Al-Muqit (Rizqni Yetkazuvchi)",
    "40.Al-Hasib (Hisobga Oluvchi)",
    "41.Al-Jalil (Ulug‘)",
    "42.Al-Karim (Saxovatli va Sharafli)",
    "43.Ar-Raqib (Nazorat qiluvchi)",
    "44.Al-Mujib (Duo Qabul Qiluvchi)",
    "45.Al-Vasi‘ (Keng Qamrovli)",
    "46.Al-Hakim (Donishmand va Aqlli)",
    "47.Al-Vadud (Mehribon va Sevuvchi)",
    "48.Al-Majid (Sharafli va Buyuk)",
    "49.Al-Ba‘is (O‘liklarni Tiriklovchi)",
    "50.Ash-Shahid (Guvoh)",
    "51.Al-Haqq (Haqiqiy va Haqiqatli)",
    "52.Al-Vakil (Ishonchli Vakil)",
    "53.Al-Qaviy (Kuchli)",
    "54.Al-Matin (Mustahkam)",
    "55.Al-Valiy (Do‘st va Homiy)",
    "56.Al-Hamid (Maxtovga Loyiq)",
    "57.Al-Muhsi (Hisobchi)",
    "58.Al-Mubdi‘ (Ibtido Beruvchi)",
    "59.Al-Mu‘id (Qayta Tiklovchi)",
    "60.Al-Muhyi (Hayot Beruvchi)",
    "61.Al-Mumit (O‘lim Beruvchi)",
    "62.Al-Hayy (Tirik)",
    "63.Al-Qayyum (O‘zi Turgan va Boshqaruvchi)",
    "64.Al-Vojid (Topuvchi)",
    "65.Al-Majid (Sharafli va Ulug‘vor)",
    "66.Al-Vahid (Yagona)",
    "67.Al-Ahad (Tengsiz va Yakkayu Yagona)",
    "68.As-Somad (Har Narsadan Mustaqil)",
    "69.Al-Qodir (Qodir va Qudratli)",
    "70.Al-Muqtadir (Hammani Bosharuvchi)",
    "71.Al-Muqaddim (Oldinga Suruvchi)",
    "72.Al-Mu’axxir (Orqaga Qoldiruvchi)",
    "73.Al-Avval (Birinchi)",
    "74.Al-Oxir (Oxirgi)",
    "75.Az-Zohir (Zohir va Ko‘rinuvchi)",
    "76.Al-Botin (Yashirin va Ichki)",
    "77.Al-Valiy (Boshqaruvchi va Do‘st)",
    "78.Al-Muta‘ali (Yuksak va Ulug‘vor)",
    "79.Al-Barr (Yaxshi va Mehribon)",
    "80.At-Tavvob (Tavbalarni Qabul Qiluvchi)",
    "81.Al-Muntaqim (Jazo Beruvchi)",
    "82.Al-Afuvv (Kechiruvchi)",
    "83.Ar-Ra'uf (Mehribon va Yumshoq Muomala Qiluvchi)",
    "84.Malik-ul-Mulk (Mulk Sohibi)",
    "85.Dhul-Jalali Wal-Ikrom (Shon-sharaf va Saxovat So‘hibi)",
    "86.Al-Muqsit (Adolatli)",
    "87.Al-Jomi‘ (Yig‘uvchi va Birlashtiruvchi)",
    "88.Al-G‘aniy (Boy va Mustaqil)",
    "89.Al-Mug‘niy (Boyituvchi)",
    "90.Al-Mani‘ (To‘sguvchi)",
    "91.Ad-Dhorr (Zarar Beruvchi)",
    "92.An-Nafi‘ (Foyda Beruvchi)",
    "93.An-Nur (Nur Taratuvchi)",
    "94.Al-Hadi (Yo‘l Ko‘rsatuvchi)",
    "95.Al-Badi (O‘xshashi Yo‘q Yaratuvchi)",
    "96.Al-Baqiy (Doimiy va Abadiy)",
    "97.Al-Varis (Merosxo‘r)",
    "98.Ar-Rashid (To‘g‘ri Yo‘lga Yetaklovchi)",
    "99.As-Sabur (Sabrli)",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://i.pinimg.com/564x/d5/c0/a2/d5c0a235411159d42474aba868776f5b.jpg",
            ),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Column(
          children: [
            // Header
            Container(
              height: 100,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BackButton(color: Colors.black),
                  Center(
                    child: Text(
                      "Allah нинг 99-исми    ",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // GridView inside Expanded to avoid overflow
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(10.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 2.5,
                ),
                itemCount: nom.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Text(
                        nom[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
