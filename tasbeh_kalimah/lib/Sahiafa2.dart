import 'package:flutter/material.dart';
// import 'package:tasbeh_kalimah/begin.dart';
// import 'package:tasbeh_kalimah/kirishi.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;

class Sahifa2 extends StatefulWidget {
  const Sahifa2({super.key});

  @override
  State<Sahifa2> createState() => _Sahifa2State();
}

class _Sahifa2State extends State<Sahifa2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://i.pinimg.com/564x/54/8a/f3/548af3417f5f93cc707e2fd0583fd4a7.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const BackButton(color: Colors.white),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Калималар",
                        style: GoogleFonts.josefinSans(
                          color: const Color.fromARGB(255, 255, 247, 7),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // Space before the list
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(8.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2.5,
                ),
                itemCount: 7, // Number of items
                itemBuilder: (context, index) {
                  final kalimalar = [
                    "1. Birinchi kalima - Kalima Taiyyab (Imon deklaratsiyasi)",
                    "2. Ikkinchi kalima - Kalima Shahodat (Taslim va dalil bayoni)",
                    "3. Uchinchi kalima - Kalima Tamjid (Allohning izhori)",
                    "4. To'rtinchi kalima - Kalima Tauhid (Allohning yagonaligi)",
                    "5. Beshinchi kalima - Radd-i Kufr (Ateizmni rad etish)",
                    "6. Oltinchi kalima - Imon-i Mujmal (Qisqa e'tiqod)",
                    "7. Ettinchi kalima - Imon-i Mufassal (Mufassal e'tiqod)",
                  ];

                  final routes = [
                    Kalima1(),
                    Kalima2(),
                    Kalima3(),
                    Kalima4(),
                    Kalima5(),
                    Kalima6(),
                    Kalima7(),
                  ];

                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => routes[index],
                        ),
                      );
                    },
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.5,
                          color: const Color.fromARGB(255, 255, 247, 7),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              kalimalar[index],
                              style: GoogleFonts.josefinSans(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
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

class Kalima1 extends StatefulWidget {
  const Kalima1({super.key});

  @override
  State<Kalima1> createState() => _Kalima1State();
}

class _Kalima1State extends State<Kalima1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://i.pinimg.com/564x/42/2c/54/422c54774888b79bb4e063c5958426c4.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 75,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const BackButton(color: Colors.white),
                  Expanded(
                    child: Center(
                      child: Text(
                        "1-Калима",
                        style: GoogleFonts.josefinSans(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 520,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.5,
                      color: Color.fromARGB(255, 255, 247, 7),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "    1.Birinchi kalima - Kalima Taiyyab (Imon   deklaratsiyasi)",
                          style: GoogleFonts.josefinSans(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "    Laa ilaaha illallohu Muhammadur-  Rasululloh",
                          style: GoogleFonts.josefinSans(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "    Manosi: 'Allohdan o'zga iloh yo'q.   Muhammad (sollallohu alayhi vasallam)Allohning rasulidir'.",
                          style: GoogleFonts.josefinSans(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Kalima2 extends StatefulWidget {
  const Kalima2({super.key});

  @override
  State<Kalima2> createState() => _Kalima2State();
}

class _Kalima2State extends State<Kalima2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://i.pinimg.com/564x/42/2c/54/422c54774888b79bb4e063c5958426c4.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const BackButton(color: Colors.white),
                  Expanded(
                    child: Center(
                      child: Text(
                        "2-Калима",
                        style: GoogleFonts.josefinSans(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 650,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.5,
                      color: Color.fromARGB(255, 255, 247, 7),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "    2.Ikkinchi kalima - kalima shahodat (Taslim bo'lish va dalil bayoni)",
                          style: GoogleFonts.josefinSans(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "    Ash-hadu anla-ilaha illa-llaahu, va ash hadu anna Muhammadan abduhu va Rasulu.",
                          style: GoogleFonts.josefinSans(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "    Manosi: “Guvohlik beramanki, Allohdan o‘zga ibodatga loyiq iloh yo‘q va Muhammad (sollallohu alayhi vasallam) Uning bandasi va rasuli ekanligiga guvohlik beraman”.",
                          style: GoogleFonts.josefinSans(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Kalima3 extends StatefulWidget {
  const Kalima3({super.key});

  @override
  State<Kalima3> createState() => _Kalima3State();
}

class _Kalima3State extends State<Kalima3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://i.pinimg.com/564x/42/2c/54/422c54774888b79bb4e063c5958426c4.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const BackButton(color: Colors.white),
                  Expanded(
                    child: Center(
                      child: Text(
                        "3-Калима",
                        style: GoogleFonts.josefinSans(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 650,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.5,
                      color: Color.fromARGB(255, 255, 247, 7),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "    3.Uchinchi kalima - Kalima Tamjid (Alloh taoloning izhori)",
                          style: GoogleFonts.josefinSans(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "    Subhaan-Allohi valhamdu-lillaahi, va la ilaa-ha illa-la illal-lahu vallahu Akbar, vala haula vala quov-vata illa billa hil-Aliyyil-azim.",
                          style: GoogleFonts.josefinSans(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "    Manosi: 'Allohga pok va hamdlar bo'lsin. Allohdan o'zga ibodatga loyiq iloh yo'q. Alloh eng ulug' zotdir. Ulug' va buyuk Allohdan boshqa hech qanday kuch va quvvat yo'q'.",
                          style: GoogleFonts.josefinSans(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Kalima4 extends StatefulWidget {
  const Kalima4({super.key});

  @override
  State<Kalima4> createState() => _Kalima4State();
}

class _Kalima4State extends State<Kalima4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://i.pinimg.com/564x/42/2c/54/422c54774888b79bb4e063c5958426c4.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const BackButton(color: Colors.white),
                  Expanded(
                    child: Center(
                      child: Text(
                        "4-Калима",
                        style: GoogleFonts.josefinSans(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 650,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.5,
                      color: Color.fromARGB(255, 255, 247, 7),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "    4.To'rtinchi kalima - Kalima Tauhid (Allohning yagonaligini e'lon qilish)",
                          style: GoogleFonts.josefinSans(
                            color: Colors.white,
                            fontSize: 22.2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "    Laa ilaaha illal-lahu vahdahu la sharika lahu, lahul-mulku va-lahul hamdu yooh-yi va-yumetu, be yadihil hayru va huva alaa kulli shay in Qadirda.",
                          style: GoogleFonts.josefinSans(
                            color: Colors.white,
                            fontSize: 22.2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "    Manosi :'Allohdan o'zga ibodatga loyiq zot yo'q. U yolg'iz va hech bir sherigi yo'q. Mulk Unikidir va hamd Unikidir. U tiriltirur va o'ldiradi. U zotning qo'lida hamma narsa yaxshidir va U har bir narsaga qodirdir'.",
                          style: GoogleFonts.josefinSans(
                            color: Colors.white,
                            fontSize: 22.2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Kalima5 extends StatefulWidget {
  const Kalima5({super.key});

  @override
  State<Kalima5> createState() => _Kalima5State();
}

class _Kalima5State extends State<Kalima5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://i.pinimg.com/564x/42/2c/54/422c54774888b79bb4e063c5958426c4.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const BackButton(color: Colors.white),
                    Expanded(
                      child: Center(
                        child: Text(
                          "5-Калима",
                          style: GoogleFonts.josefinSans(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 1205,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: Color.fromARGB(255, 255, 247, 7),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            "    5.Beshinchi kalima - Kalima radd-i kufr (ateizmni rad etish)",
                            style: GoogleFonts.josefinSans(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "    Ollohumma inni a uzu bika min an ushrika bika shayan va ana a'lamu bihi, va astag feeru ka limaa la a'lamu bihi, toob-tu anhu va tabarr-ra' tu minal kufri yuvish-shirki val kizbi val-ma 'aasi. kullihaa aslamtu va aamantu va a-quoo-lu la-ila-hah il-lal-lahu Muhammadur Rasul-loul-lah",
                            style: GoogleFonts.josefinSans(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "    Manosi: 'Allohim! O'zingdan panoh so'raymanki, bilib turib senga sherik bo'lmayman. Men bilmaganim uchun mag'firatingga muhtojman. Men uning johilligidan tavba qilaman. Kufrdan va senga sherik bo'lishdan pokman. Yolg'ondan va har qanday gunohdan bo'yinsunaman va Allohdan o'zga iloh yo'q va Muhammad (sollallohu alayhi va sallam) Allohning rasulidir'.",
                            style: GoogleFonts.josefinSans(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Kalima6 extends StatefulWidget {
  const Kalima6({super.key});

  @override
  State<Kalima6> createState() => _Kalima6State();
}

class _Kalima6State extends State<Kalima6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://i.pinimg.com/564x/42/2c/54/422c54774888b79bb4e063c5958426c4.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const BackButton(color: Colors.white),
                  Expanded(
                    child: Center(
                      child: Text(
                        "6-Калима",
                        style: GoogleFonts.josefinSans(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 600,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.5,
                      color: Color.fromARGB(255, 255, 247, 7),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "   6.Oltinchi kalima - Imon- i Mujmal (qisqa e'tiqod)",
                          style: GoogleFonts.josefinSans(
                            color: Colors.white,
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "    Aamantu bil-lahi kama huva bi asmaaihi va sifoa-tihi, va qabiltu jami-a ah-kaamihi.",
                          style: GoogleFonts.josefinSans(
                            color: Colors.white,
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "    “Men Allohga qanday bo‘lsa, ismlari va sifatlari bilan ishondim va barcha amrlarini qabul qildim”.",
                          style: GoogleFonts.josefinSans(
                            color: Colors.white,
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Kalima7 extends StatefulWidget {
  const Kalima7({super.key});

  @override
  State<Kalima7> createState() => _Kalima7State();
}

class _Kalima7State extends State<Kalima7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://i.pinimg.com/564x/42/2c/54/422c54774888b79bb4e063c5958426c4.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const BackButton(color: Colors.white),
                  Expanded(
                    child: Center(
                      child: Text(
                        "7-Калима",
                        style: GoogleFonts.josefinSans(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 650,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.5,
                      color: Color.fromARGB(255, 255, 247, 7),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          "   7.Ettinchi Kalima - Imon-i Mufassal (Mufassal e'tiqod)",
                          style: GoogleFonts.josefinSans(
                            color: Colors.white,
                            fontSize: 22.3,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        Text(
                          "    Aamantu bil-laahi va mala-ikatihi va kutubihi va Rusulihi val yaumil-aakhi-ri val qadri xayrihi va shar-rihi minal-lahi Ta Aala val-ba'Athi ba'adal maut",
                          style: GoogleFonts.josefinSans(
                            color: Colors.white,
                            fontSize: 22.3,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        Text(
                          "    Manosi: “Men Allohga, Uning farishtalariga, kitoblariga, payg‘ambarlariga, oxirat kuniga, dunyodagi barcha yaxshi-yomonlik Alloh taolo tomonidan oldindan belgilab qo‘yilganiga ishonaman va o‘limdan keyin qayta tirilishga ishonaman”.",
                          style: GoogleFonts.josefinSans(
                            color: Colors.white,
                            fontSize: 22.3,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
