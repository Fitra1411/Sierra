import 'package:flutter/material.dart';
import 'package:testing_aplikasi/homepage.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class Profil01 extends StatelessWidget {
  const Profil01({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: Container(
          margin: EdgeInsets.fromLTRB(10,30,10,10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: AppBar(
                backgroundColor: pink_004,
                flexibleSpace: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  child: Column(
                    children: [
                      Expanded(
               child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Expanded(child: Image.asset('assets/images/sierrastore2.png',height: 120,width: 100,)),
                   SizedBox(width: 20,),
                   Padding(
                     padding: const EdgeInsets.only(top: 20,right: 10),
                     child: Container(
                      
                      child: Row(
                        
                        children: [
                          //Pesan.......................
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Homepage()//Pesan
                              ));
                            },
                            child: Image.asset('assets/images/Messaging.png',height: 30,width: 30,)),
                          SizedBox(width: 10,),
                          //Keranjang...................
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Homepage()//Keranjang
                              ));
                            },
                            child: Image.asset('assets/images/Add Basket.png',height: 30,width: 30,)),
                          SizedBox(width: 10,),
                          //Search......................
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => Homepage(),//Search
                              ));
                            },
                            child: Image.asset('assets/images/Search.png',height: 30,width: 30,)),
                          SizedBox(width: 10,),
                        ],
                      ),
                     ),
                   )
                 ],
                 
               ),
             ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),



        bottomSheet: Container(
  height: 60,
  width: double.infinity,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
    color: pink_004,
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: ElevatedButton(onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Homepage()));
        },
        style: ElevatedButton.styleFrom(backgroundColor: pink_006),
          child: Image.asset('assets/images/Home Page Used.png',width: 25,height: 35,)),
      ),
      Expanded(child: SizedBox(width: 10,)),
      ElevatedButton(onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Homepage()));
        },
        style: ElevatedButton.styleFrom(backgroundColor: pink_004),
        child: Image.asset('assets/images/Banknotes.png', color: pink_006,width:25,height: 35,)),
      Expanded(child: SizedBox(width: 10,)),
      ElevatedButton(onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Homepage()));
        },
        style: ElevatedButton.styleFrom(backgroundColor: pink_004),
        child: Image.asset('assets/images/Lip Gloss.png', color: pink_006,width: 25,height: 35,)),
      Expanded(child: SizedBox(width: 10,)),
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: ElevatedButton(onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Homepage()));
        },
        style: ElevatedButton.styleFrom(backgroundColor: pink_004),
          child: Image.asset('assets/images/More.png', color: pink_006,width: 25,height: 35,)),
      ),
    ],
  ),
),

      ),
    );
  }
}