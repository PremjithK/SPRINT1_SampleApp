import 'package:flutter/material.dart';

class PorscheDetails extends StatefulWidget {
  const PorscheDetails({super.key});

  @override
  State<PorscheDetails> createState() => _PorscheDetailsState();
}

class _PorscheDetailsState extends State<PorscheDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Nissan",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://stimg.cardekho.com/images/car-images/large/Porsche/Porsche-911/776/White_eeeeee..jpg?impolicy=resize&imwidth=420',
            width: 400,
            height: 400,
          ),
          const Text(
            "Porsche 911 Turbo",
            style: TextStyle(fontSize: 35),
          ),
          const Text(
            "Price: Rs.4,800,000",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Engine: V12 Twin 42L",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Seat: 2 Seat, Leather, Hand Stitched",
            style: TextStyle(fontSize: 20),
          ),
        ],
      )),
    );
  }
}
