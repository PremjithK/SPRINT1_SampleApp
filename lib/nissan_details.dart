import 'package:flutter/material.dart';

class NissasnDetails extends StatefulWidget {
  const NissasnDetails({super.key});

  @override
  State<NissasnDetails> createState() => _NissasnDetailsState();
}

class _NissasnDetailsState extends State<NissasnDetails> {
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
            'https://stimg.cardekho.com/images/carexteriorimages/930x620/Nissan/Nissan-370Z/741/front-left-side-47.jpg',
            width: 400,
            height: 400,
          ),
          const Text(
            "Nissan 370Z",
            style: TextStyle(fontSize: 35),
          ),
          const Text(
            "Price: Rs.1,800,000",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Engine: V8 Twin 40L",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Seat: 2 Seat, Leather",
            style: TextStyle(fontSize: 20),
          ),
        ],
      )),
    );
  }
}
