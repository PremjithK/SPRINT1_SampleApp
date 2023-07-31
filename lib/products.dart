import 'package:flutter/material.dart';
import 'package:myapp/home.dart';
import 'package:myapp/nissan_details.dart';
import 'package:myapp/porsche_details.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cars",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 180,
                width: 150,
                color: Colors.teal,
                child: Column(children: [
                  Image.network(
                    'https://cdni.autocarindia.com/utils/imageresizer.ashx?n=https://cms.haymarketindia.net/model/uploads/modelimages/Hyundai-Grand-i10-Nios-200120231541.jpg&w=872&h=578&q=75&c=1',
                    width: 80,
                    height: 80,
                  ),
                  Text(
                    "BMW",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text("Rs.3400,000"),
                  ElevatedButton(onPressed: () {}, child: Text("Details..."))
                ]),
              ),
              Container(
                height: 180,
                width: 150,
                color: Colors.teal,
                child: Column(children: [
                  Image.network(
                    'https://cdni.autocarindia.com/utils/imageresizer.ashx?n=https://cms.haymarketindia.net/model/uploads/modelimages/Hyundai-Grand-i10-Nios-200120231541.jpg&w=872&h=578&q=75&c=1',
                    width: 80,
                    height: 80,
                  ),
                  Text(
                    "Hyundai",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text("Rs.400,000"),
                  ElevatedButton(onPressed: () {}, child: Text("Details..."))
                ]),
              ),
              Container(
                height: 180,
                width: 150,
                color: Colors.teal,
                child: Column(children: [
                  Image.network(
                    'https://carsales.pxcrush.net/car/spec/S00056FN.jpg?pxc_method=gravityfill&pxc_bgtype=self&pxc_size=720,480&watermark=1230602142',
                    width: 80,
                    height: 80,
                  ),
                  Text(
                    "Benz",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text("Rs.6,300,000"),
                  ElevatedButton(onPressed: () {}, child: Text("Details..."))
                ]),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 180,
                width: 150,
                color: Colors.cyan,
                child: Column(children: [
                  Image.network(
                    'https://carsales.pxcrush.net/car/spec/S00056FN.jpg?pxc_method=gravityfill&pxc_bgtype=self&pxc_size=720,480&watermark=1230602142',
                    width: 80,
                    height: 80,
                  ),
                  Text(
                    "Porsche",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text("Rs.4,800,000"),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PorscheDetails(),
                            ));
                      },
                      child: Text("Details..."))
                ]),
              ),
              Container(
                height: 180,
                width: 150,
                color: Colors.cyan,
                child: Column(children: [
                  Image.network(
                    'https://stimg.cardekho.com/images/carexteriorimages/930x620/Nissan/Nissan-370Z/741/front-left-side-47.jpg',
                    width: 80,
                    height: 80,
                  ),
                  Text(
                    "Nissan",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text("Rs.1,800,000"),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NissasnDetails(),
                            ));
                      },
                      child: Text("Details..."))
                ]),
              ),
              Container(
                height: 180,
                width: 150,
                color: Colors.cyan,
                child: Column(children: [
                  Image.network(
                    'https://carsales.pxcrush.net/car/spec/S00056FN.jpg?pxc_method=gravityfill&pxc_bgtype=self&pxc_size=720,480&watermark=1230602142',
                    width: 80,
                    height: 80,
                  ),
                  Text(
                    "Toyota",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text("Rs.1,150,000"),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ));
                      },
                      child: Text("Details..."))
                ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
