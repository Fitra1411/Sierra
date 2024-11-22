import 'package:flutter/material.dart';
import 'package:testing_aplikasi/NavBar/navbar.dart';
import 'package:testing_aplikasi/homepage.dart';

class SeeAll extends StatefulWidget {
  const SeeAll({super.key});

  @override
  State<SeeAll> createState() => _SeeAllState();
}

class _SeeAllState extends State<SeeAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF0C7D4),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Container(
              width: double.infinity,
              height: 57,
              margin: const EdgeInsets.only(left: 10, right: 10, top: 10 ,bottom: 18),
              decoration: BoxDecoration(
                color: const Color(0xFFFF7C9C),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children:[
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Navbar()));//Homepage
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                  ),
                  const Text(
                    'Semua Toko',
                    style: TextStyle(
                      fontFamily: 'OutfitSemiBold',
                      fontSize: 20,
                      color: Colors.white,   
                    ),
                  ),
                  const Spacer(),
                  IconButton(onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Homepage()));//Message
                  },
        
                    icon: Image(image: AssetImage('assets/images/Messaging.png'), width: 30, height: 30)),
                  IconButton(
                    onPressed: () {
        
                    },
                    icon: Image.asset('assets/images/Search.png',width: 30,height: 30,),
                  )
                ],
              ),
            ),
           const Center(
              child: Image(
                image: AssetImage("assets/images/brand/wardah.png", ),
                width: 310,
                height: 121,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            const Center(
              child: Image(
                image: AssetImage("assets/images/brand/emina.png"),
                width: 310,
                height: 121,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            const Center(
              child: Image(
                image: AssetImage("assets/images/brand/focallure.png"),
                width: 310,
                height: 121,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            const Center(
              child: Image(
                image: AssetImage("assets/images/brand/somethinc.png"),
                width: 310,
                height: 121,
              ),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      )
    );
  }
}