import 'package:flutter/material.dart';
// import 'package:tasbeh_kalimah/begin.dart';
// import 'package:tasbeh_kalimah/kirishi.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;

class Sahifa3 extends StatefulWidget {
  const Sahifa3({super.key});

  @override
  State<Sahifa3> createState() => _Sahifa2State();
}

class _Sahifa2State extends State<Sahifa3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://i.pinimg.com/564x/7f/3a/7f/7f3a7fb9022733fb4751d9f6f5449f98.jpg",
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
                        "Дуолар",
                        style: GoogleFonts.josefinSans(
                          color:Colors.white,
                          fontSize: 20,
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
            const SizedBox(height: 20), // Space before the list
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(8.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 20,
                  childAspectRatio: 2.5,
                ),
                itemCount: 10, // Number of items
                itemBuilder: (context, index) {
                  final kalimalar = [
                    "1.Расулуллох соллаллоху алайхи васаллам тонг отганида",
                    "2.Кеч кирганида эса",
                    "3.Абдуллох ибн Ганном розияллоху анхудан ривоят килинади",
                    "4.Уммул муминийн Жувайрия розияллоху анходан ривоят килинади",
                    "5.Абу Айюб Ансорий розияллоху анхудан ривоят килинади",
                    "6.Абу Саид Худрий розияллоху анхудан ривоят килинади",
                    "7.Абу хурайра розияллоху анху айтадилар",
                    "8.Усмон ибн Аффон  розияллоху анхудан ривоят килинади",
                    "9.Нас розияллоху анхудан ривоят килинади",
                    "10.Расулуллох соллаллоху алайхи васаллам тонг отса",
                  ];

                  final routes = [
                    duolar1(),
                    duolar2(),
                    duolar3(),
                    duolar4(),
                    duolar5(),
                    duolar6(),
                    duolar7(),
                    duolar8(),
                    duolar9(),
                    duolar01(),
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

class duolar1 extends StatefulWidget {
  const duolar1({super.key});

  @override
  State<duolar1> createState() => _duolar1State();
}

class _duolar1State extends State<duolar1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://i.pinimg.com/564x/62/3c/49/623c496ec1b5e9d4da5e296b2558dfdb.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
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
                            "1-дуо",
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
                      height: 900,
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
                              "    1.Расулуллох соллаллоху алайхи васаллам тонг отганида:\nاللهُمَّ بِكَ أَصْبَحْنَا وَبِكَ أَمْسَيْنَا وَبِكَ نَحْيَا وَبِكَ نَمُوتُ وَإِلَيْكَ النُّشُورُ ",
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
                              "     Аллохумма бика асбахнаа ва бика амсайнаа ва бика нахйаа ва бика намууту ва илайкан нушуур»  дер эдилар.",
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
                              "    Маъноси: Аллохим, Сенинг номинг ила тонг оттирдик, Сенинг номинг ила кеч киргиздик. Сенинг номинг ила тириламиз ва Сенинг номинг ила уламиз. Ва Сенга кайтажакмиз.",
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
      ),
    );
  }
}

class duolar2 extends StatefulWidget {
  const duolar2({super.key});

  @override
  State<duolar2> createState() => _duolar2State();
}

class _duolar2State extends State<duolar2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://i.pinimg.com/564x/62/3c/49/623c496ec1b5e9d4da5e296b2558dfdb.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
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
                            "2-дуо",
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
                            "    2.Кеч кирганида эса:\nاللهُمَّ بِكَ أَمْسَيْنَا وَبِكَ أَصْبَحْنَا وَبِكَ نَحْيَا وَبِكَ نَمُوتُ وَإِلَيْكَ الْمَصِير",
                            style: GoogleFonts.josefinSans(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "    «Аллохумма бика амсайнаа ва бика нахйаа ва бика намууту ва илайкал масийр».",
                            style: GoogleFonts.josefinSans(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "    (“Аллохим, Сенинг номинг ила кеч киргиздик. Сенинг номинг ила тириламиз ва Сенинг номинг ила вафот этамиз. Ва Сенга кайтажакмиз”), деб айтар эдилар.Абу Довуд, Термизий ва Ибн Можалар ривояти.",
                            style: GoogleFonts.josefinSans(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class duolar3 extends StatefulWidget {
  const duolar3({super.key});

  @override
  State<duolar3> createState() => _duolar3State();
}

class _duolar3State extends State<duolar3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://i.pinimg.com/564x/62/3c/49/623c496ec1b5e9d4da5e296b2558dfdb.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
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
                            "3-дуо",
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
                  child: Container(
                    height: 1200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: Color.fromARGB(255, 255, 247, 7),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "    3.Абдуллох ибн Ганном розияллоху анхудан ривоят килинади:\n Расулуллох соллаллоху алайхи васаллам: «Ким тонг отганида:\nاللهُمَّ مَا أَصْبَحَ بِي مِنْ نِعْمَةٍ، فَمِنْكَ وَحْدَكَ لاَ شَرِيكَ لَكَ، فَلَكَ الْحَمْدُ وَلَكَ الشُّكْرُ ",
                          style: GoogleFonts.josefinSans(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "    «Аллохумма маа асбаха бий мин ниъматин фаминка вахдака лаа шарийка лак, фалакал хамду ва лакаш шукр», деса, кундузнинг шукрини адо килибди. Ким шу дуони кеч кирганида айтса, кечанинг шукрини адо этибди», дедилар.",
                          style: GoogleFonts.josefinSans(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "    Маъноси: Аллохим, мен билан тонг оттирган неъматлар Сен томондандир. Сен яккаю ёлГиздирсан, Сенинг шеригинг йук. Сенга хамд ва шукрлар булсин.\nАбу Довуд ривоятлари.",
                          style: GoogleFonts.josefinSans(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class duolar4 extends StatefulWidget {
  const duolar4({super.key});

  @override
  State<duolar4> createState() => _duolar4State();
}

class _duolar4State extends State<duolar4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://i.pinimg.com/564x/62/3c/49/623c496ec1b5e9d4da5e296b2558dfdb.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
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
                            "4-дуо",
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
                  child: Container(
                    height: 2200,
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
                              "    4.Уммул муминийн Жувайрия розияллоху анходан ривоят килинади: \n«Расулуллох соллаллоху алайхи васаллам эрталаб субх намози пайтида унинг хузуридан чикиб кетдилар. У намоз укийдиган хонасида эди. Сунгра зухо намозини укиб булиб кайтиб келсалар, Жувайрия онамиз хали хам утирган эдилар. Шунда Расулуллох соллаллоху алайхи васаллам: «Чикиб кетганимдан бери шу холатда утирибсанми?» деб сурадилар. Онамиз розияллоху анхо:  «ха», дея жавоб бердилар. «Мен сендан кейин туртта калимани уч мартадан айтдим, агар улар тарозида улчанса, сен бугун айтган нарсалардан оГир келади, – дедилар Расулуллох соллаллоху алайхи васаллам. – Улар:\nسُبْحَانَ اللهِ وَبِحَمْدِهِ عَدَدَ خَلْقِهِ، وَرِضَى نَفْسِهِ، وَزِنَةَ عَرْشِهِ وَمِدَادَ كَلِمَاتِهِ مرات",
                              style: GoogleFonts.josefinSans(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(
                            height: 60,
                          ),
                          Text(
                              "    «Субхааналлохи ва бихамдихи ъадада холкихи ва ридоо нафсихи ва зината ъаршихи ва мидаада калимаатихи».",
                              style: GoogleFonts.josefinSans(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(
                            height: 60,
                          ),
                          Text(
                              "    Маъноси: “Яратганларининг ададича, нафси рози булгунича, аршнинг вазнича, калималарнинг узунлигича Аллохга хамд айтаман ва Уни поклайман.\nИмом Муслим ривоятлари.",
                              style: GoogleFonts.josefinSans(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class duolar5 extends StatefulWidget {
  const duolar5({super.key});

  @override
  State<duolar5> createState() => _duolar5State();
}

class _duolar5State extends State<duolar5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://i.pinimg.com/564x/62/3c/49/623c496ec1b5e9d4da5e296b2558dfdb.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
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
                            "5-дуо",
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
                  child: Container(
                    height: 1200,
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
                            "    5.Абу Айюб Ансорий розияллоху анхудан ривоят килинади:\n«Расулуллох соллаллоху алайхи васаллам: «Ким:\nلاَ إِلَهَ إِلاَّ اللهُ وَحْدَهُ لاَ شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ",
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
                            "    «Лаа илааха иллаллоху вахдаху лаа шарийка лаху, лахул мулку ва лахул хамду ва хува ъалаа кулли шай`ин кодийр», деб ун марта айтса, Исмоил зурриётидан турт кишини озод килгандек булади», дедилар».",
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
                            "    Маъноси: “Аллохдан бошка илох йук, У ёлГиз, Унинг шериги хам йук, бутун мулк Уники, хамд хам Унга хос ва У хар бир нарсага кодирдир.\nИмом Бухорий ва Муслим ривоятлари.",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class duolar6 extends StatefulWidget {
  const duolar6({super.key});

  @override
  State<duolar6> createState() => _duolar6State();
}

class _duolar6State extends State<duolar6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://i.pinimg.com/564x/62/3c/49/623c496ec1b5e9d4da5e296b2558dfdb.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
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
                            "6-дуо",
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
                  child: Container(
                    height: 1200,
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
                          Text(
                            "    6.Абу Саид Худрий розияллоху анхудан ривоят килинади:\nРасулуллох соллаллоху алайхи васаллам: «Ким:\nرَضِيتُ بِاللهِ رَبًّا، وَبِالإِسْلاَمِ دِينًا وَبِمُحَمَّدٍ صلى الله عليه وسلم رَسُولاً ",
                            style: GoogleFonts.josefinSans(
                              color: Colors.white,
                              fontSize: 26.7,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            "    «Родийту биллаахи роббан ва бил ислаами дийнан ва бимухаммадин соллаллооху алайхи васаллама росулаа», деса, унга жаннат вожиб булади», дедилар.",
                            style: GoogleFonts.josefinSans(
                              color: Colors.white,
                              fontSize: 26.7,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            "    Маъноси: “Аллохни раббим деб, Исломни диним деб, Мухаммад алайхиссаломни расул деб рози булдим.\nАбу Довуд ривоят килганлар.",
                            style: GoogleFonts.josefinSans(
                              color: Colors.white,
                              fontSize: 26.7,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class duolar7 extends StatefulWidget {
  const duolar7({super.key});

  @override
  State<duolar7> createState() => _duolar7State();
}

class _duolar7State extends State<duolar7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://i.pinimg.com/564x/62/3c/49/623c496ec1b5e9d4da5e296b2558dfdb.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
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
                            "7-дуо",
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
                  child: Container(
                    height: 1200,
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
                          Text(
                            "    7.Абу хурайра розияллоху анху айтадилар:\n«Расулуллох соллаллоху алайхи васаллам хузурларига бир киши келиб: «Эй Расулуллох, кеча мени чаён чакиб олди», деди. Шунда Набий соллаллоху алайхи васаллам: «Кеч кирганида:\nأَعُوذُ بِكَلِمَاتِ اللهِ التَّامَّاتِ مِنْ شَرِّ مَا خَلَقَ ",
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
                            "    «Аъузу бикалиматиллахит таммати мин шарри ма холак», десанг, сенга хеч нарса зарар бермайди», дедилар.",
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
                            "    Маъноси: “Аллохнинг хамма калималари билан У яратган нарсаларнинг ёмонлигидан панох тилайман.\nИмом Муслим ривоятлари.",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class duolar8 extends StatefulWidget {
  const duolar8({super.key});

  @override
  State<duolar8> createState() => _duolar8State();
}

class _duolar8State extends State<duolar8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://i.pinimg.com/564x/62/3c/49/623c496ec1b5e9d4da5e296b2558dfdb.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
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
                            "8-дуо",
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
                  child: Container(
                    height: 1250,
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
                          Text(
                            "    8.Усмон ибн Аффон  розияллоху анхудан ривоят килинади : \nРасулуллох соллаллоху алайхи васаллам: «Бирор бир банда хар тонгда ва тунда:\nبِاسْمِ اللهِ الَّذِي لاَ يَضُرُّ مَعَ اسْمِهِ شَيْءٌ فِي الأَرْضِ وَلاَ فِي السَّمَاء وَهُوَ السَّمِيعُ العَلِيمُ",
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
                            "    «Бисмиллаахиллазий ла йадурру маъасмихии шай`ун фил арди ва лаа фис самаи ва хувас самийъул ъалийм», деб уч марта айтса, унга бирор нарса зарар бермайди», дедилар.",
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
                            "    Маъноси: Шундай Аллохнинг исми билан бошлайманки, Унинг исми туфайли еру осмонда бирор нарса зарар бера олмайди. У эшитувчи ва билувчи Зотдир.\nАбу Довуд ва Термизий ривоятлари.",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class duolar9 extends StatefulWidget {
  const duolar9({super.key});

  @override
  State<duolar9> createState() => _duolar9State();
}

class _duolar9State extends State<duolar9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://i.pinimg.com/564x/62/3c/49/623c496ec1b5e9d4da5e296b2558dfdb.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
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
                            "9-дуо",
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
                  child: Container(
                    height: 1330,
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
                          Text(
                            "    9.нас розияллоху анхудан ривоят килинади:\nРасулуллох алайхиссалом Фотима розияллоху анхога: «Васият килган нарсамни эшитишдан сени нима тусади? хар тонг ва кечкурун:\nيَا حَيُّ يَا قَيُّومُ، بِرَحْمَتِكَ أَسْتَغِيثُ، أَصْلِحْ لِي شَأْنِي كُلَّهُ، وَلاَ تَكِلْنِي إِلَى نَفْسِي طَرْفَةَ عَيْنٍ,",
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
                            "    «Йаа хаййу йаа коййууму бирохматика астаГийсу аслих лий ша`ний куллаху ва лаа такилний илаа нафсий торфата ъайн», деб айт», дедилар.",
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
                            "    Маъноси: Эй хай-тирик ва каййум сифатига эга булган Зот, Сендан ёрдам сурайман. Шаънимни хар бир нарсада ислох эт ва куз юмиб очгунчалик муддат хам уз холимга ташлаб куйма.\nИбн Сунний ривоятлари.",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class duolar01 extends StatefulWidget {
  const duolar01({super.key});

  @override
  State<duolar01> createState() => _duolar1Stat0e();
}

class _duolar1Stat0e extends State<duolar01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://i.pinimg.com/564x/62/3c/49/623c496ec1b5e9d4da5e296b2558dfdb.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
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
                            "10-дуо",
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
                  child: Container(
                    height: 1000,
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
                          Text(
                            "    10.Расулуллох соллаллоху алайхи васаллам тонг отса:\nاللَّهُمَّ إنِّي اسْأَلُكَ عِلْمًا نَافِعًا وَرِزْقًا طَيِّبًا وَعَمَلاً مُتَقَبَّلاً",
                            style: GoogleFonts.josefinSans(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            "    «Аллохумма инний ас`алука ъилман нафиъан ва ризкон тоййибан ва ъамалан мутакоббала», деб айтар эдилар.",
                            style: GoogleFonts.josefinSans(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            "    Маъноси: “Аллохим, Сендан фойдали илм, покиза ризк, кабул буладиган амал сурайман.",
                            style: GoogleFonts.josefinSans(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
