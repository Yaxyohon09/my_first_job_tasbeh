import 'package:flutter/material.dart';


class Sahifa6 extends StatefulWidget {
  const Sahifa6({super.key});

  @override
  State<Sahifa6> createState() => _Sahifa6State();
}

class _Sahifa6State extends State<Sahifa6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alloh-нинг 99 исми"),
        centerTitle: true,
      ),
      body: Column(
        children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage("https://i.pinimg.com/564x/c1/32/68/c13268a775e1f0e04d33dd20c11a06c9.jpg",),),
          ),
        )
        ],
      ),
    );
  }
}