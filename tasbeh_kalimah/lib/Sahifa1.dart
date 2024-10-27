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
    "Ar-Rahmon (Mehribon)",
    "Ar-Rahim (Rahmli)",
    "Al-Malik (Podshoh, Hukmron)",
    "Al-Quddus (Mutlaq Pok)",
    "As-Salom (Tinchlik va Omonlik Manbai)",
    "Al-Mu’min (Iymon Baxsh Etuvchi)",
    "Al-Muhaymin (Himoyachi va Kuzatuvchi)",
    "Al-Aziz (Qudratli)",
    "Al-Jabbor (Majburlovchi va Tuzatuvchi)",
    "Al-Mutakabbir (Buyuk va Mag‘rur)",
    "Al-Xoliq (Yaratuvchi)",
    "Al-Bariy (Niqobchi, Ijodkor)",
    "Al-Musavvir (Shakllantiruvchi)",
    "Al-G‘affor (Kechiruvchi)",
    "Al-Qahhor (G‘olib)",
    "Al-Vahhob (In’om Beruvchi)",
    "Ar-Razzoq (Rizq Beruvchi)",
    "Al-Fattoh (Ochuvchi, Yechim Beruvchi)",
    "Al-Alim (Hamma narsani Biluvchi)",
    "Al-Qobid (Siqib turuvchi)",
    "Al-Bosit (Kenglik Beruvchi)",
    "Al-Xofid (Tushiruvchi)",
    "Ar-Rofe‘ (Ko‘taruvchi)",
    "Al-Mu‘izz (Hurmat Baxsh Etuvchi)",
    "Al-Muzill (Xorlovchi)",
    "As-Sami‘ (Eshituvchi)",
    "Al-Basir (Ko‘ruvchi)",
    "Al-Hakam (Adolatli Hakim)",
    "Al-Adl (Mutlaq Adolatli)",
    "Al-Latif (Nozik va Yaxshi Biluvchi)",
    "Al-Xabir (Xabardor)",
    "Al-Halim (Halol va Halim)",
    "Al-Azim (Buyuk va Ulug‘vor)",
    "Al-G‘afur (Kechiruvchi)",
    "Ash-Shakur (Shukrni Qabul Qiluvchi)",
    "Al-Aliyy (Yuksak va Ulug‘)",
    "Al-Kabir (Buyuk)",
    "Al-Hafiz (Saqlovchi)",
    "Al-Muqit (Rizqni Yetkazuvchi)",
    "Al-Hasib (Hisobga Oluvchi)",
    "Al-Jalil (Ulug‘)",
    "Al-Karim (Saxovatli va Sharafli)",
    "Ar-Raqib (Nazorat qiluvchi)",
    "Al-Mujib (Duo Qabul Qiluvchi)",
    "Al-Vasi‘ (Keng Qamrovli)",
    "Al-Hakim (Donishmand va Aqlli)",
    "Al-Vadud (Mehribon va Sevuvchi)",
    "Al-Majid (Sharafli va Buyuk)",
    "Al-Ba‘is (O‘liklarni Tiriklovchi)",
    "Ash-Shahid (Guvoh)",
    "Al-Haqq (Haqiqiy va Haqiqatli)",
    "Al-Vakil (Ishonchli Vakil)",
    "Al-Qaviy (Kuchli)",
    "Al-Matin (Mustahkam)",
    "Al-Valiy (Do‘st va Homiy)",
    "Al-Hamid (Maxtovga Loyiq)",
    "Al-Muhsi (Hisobchi)",
    "Al-Mubdi‘ (Ibtido Beruvchi)",
    "Al-Mu‘id (Qayta Tiklovchi)",
    "Al-Muhyi (Hayot Beruvchi)",
    "Al-Mumit (O‘lim Beruvchi)",
    "Al-Hayy (Tirik)",
    "Al-Qayyum (O‘zi Turgan va Boshqaruvchi)",
    "Al-Vojid (Topuvchi)",
    "Al-Majid (Sharafli va Ulug‘vor)",
    "Al-Vahid (Yagona)",
    "Al-Ahad (Tengsiz va Yakkayu Yagona)",
    "As-Somad (Har Narsadan Mustaqil)",
    "Al-Qodir (Qodir va Qudratli)",
    "Al-Muqtadir (Hammani Bosharuvchi)",
    "Al-Muqaddim (Oldinga Suruvchi)",
    "Al-Mu’axxir (Orqaga Qoldiruvchi)",
    "Al-Avval (Birinchi)",
    "Al-Oxir (Oxirgi)",
    "Az-Zohir (Zohir va Ko‘rinuvchi)",
    "Al-Botin (Yashirin va Ichki)",
    "Al-Valiy (Boshqaruvchi va Do‘st)",
    "Al-Muta‘ali (Yuksak va Ulug‘vor)",
    "Al-Barr (Yaxshi va Mehribon)",
    "At-Tavvob (Tavbalarni Qabul Qiluvchi)",
    "Al-Muntaqim (Jazo Beruvchi)",
    "Al-Afuvv (Kechiruvchi)",
    "Ar-Ra'uf (Mehribon va Yumshoq Muomala Qiluvchi)",
    "Malik-ul-Mulk (Mulk Sohibi)",
    "Dhul-Jalali Wal-Ikrom (Shon-sharaf va Saxovat So‘hibi)",
    "Al-Muqsit (Adolatli)",
    "Al-Jomi‘ (Yig‘uvchi va Birlashtiruvchi)",
    "Al-G‘aniy (Boy va Mustaqil)",
    "Al-Mug‘niy (Boyituvchi)",
    "Al-Mani‘ (To‘sguvchi)",
    "Ad-Dhorr (Zarar Beruvchi)",
    "An-Nafi‘ (Foyda Beruvchi)",
    "An-Nur (Nur Taratuvchi)",
    "Al-Hadi (Yo‘l Ko‘rsatuvchi)",
    "Al-Badi (O‘xshashi Yo‘q Yaratuvchi)",
    "Al-Baqiy (Doimiy va Abadiy)",
    "Al-Varis (Merosxo‘r)",
    "Ar-Rashid (To‘g‘ri Yo‘lga Yetaklovchi)",
    "As-Sabur (Sabrli)",
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
