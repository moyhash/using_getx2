import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key,}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String imgName = "fatiha11.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('USING GETX'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'LE CORAN',
            style:  TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(
              'images/$imgName',
              width: 400,
              height: 340,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
           ElevatedButton(
            onPressed: () {
              setState(() {});
              imgName = "kursii.png";
              // Getx page Navigator
              //Get.to(() => const Homecreen());
            },
            child: const Text('change image'),
          ), 
        ],
      ),
    );
  }
}
