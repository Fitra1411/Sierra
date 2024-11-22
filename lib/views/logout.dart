import 'package:flutter/material.dart';
import 'package:testing_aplikasi/NavBar/navbar.dart';
import 'package:testing_aplikasi/utils/colors.dart';
import 'package:testing_aplikasi/views/login01.dart';

class Logout extends StatefulWidget {
  const Logout({super.key});

  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_006,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Image.asset(
                'assets/images/logout_image.png', 
                width: 300,
              )),
          ),
          Text(
            'Apakah Anda Yakin Ingin Keluar?',
            style: TextStyle(
              fontFamily: 'OutfitRegular',
              color: pink_004,
              fontSize: 14
            ),),
          SizedBox(height: 15,),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext) => Navbar()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: pink_002,
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                  child: Text(
                    'Batal', 
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'PoppinsBold',)),
                ),
                              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext) => LoginScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: fontAbu,
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                  child: Text(
                    'Keluar', 
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'PoppinsBold',)),
                )
            
              ],
            ),
          )
        ],
      ),
    );
  }
}