import 'package:flutter/material.dart';
import 'package:testing_aplikasi/lupa_password/verifikasipassword.dart';
import 'package:testing_aplikasi/views/login01.dart';
// import 'package:testing_aplikasi/lupa_password/lupa_password.dart';

class Lupapassword extends StatefulWidget {
  const Lupapassword({super.key});

  @override
  State<Lupapassword> createState() => _LupapasswordState();
}

class _LupapasswordState extends State<Lupapassword> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0XFFF0C7D4),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(padding: EdgeInsets.only(top: 61, left: 44),
            child: Row(
              children: [
                GestureDetector(
                  onTap:() {
                    Navigator.pop(context,MaterialPageRoute(builder: (BuildContext)=>LoginScreen()));
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xFF343434),
                  ),
                ),
                Text(
                  "Login",
                  style: TextStyle(fontFamily: 'OpenSansBold', fontSize: 15),
                ),
              ],
            ),
          ),
          SizedBox(height: 140,),

          // ignore: sized_box_for_whitespace
          Expanded(
            child: Container(
              width: double.infinity,
              height: 400,
              margin: const EdgeInsets.only(left: 3.75, right: 3.75),
              decoration: BoxDecoration(
                color: const Color(0XFFFFEFEF),
                borderRadius: BorderRadius.circular(10),
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding:  EdgeInsets.only(top: 26, left:40, bottom: 53),
                    child:  Text(
                      "Lupa Password",
                      style: TextStyle(fontFamily: 'OpenSansBold', fontSize: 21),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        const Text(
                          "Masukkan alamat email anda:",
                          style: TextStyle(fontFamily: 'OpenSansBold', fontSize: 15.16),
                        ),
                        Container(
                          width: double.infinity,
                          height: 38,
                          margin: const EdgeInsets.symmetric(horizontal: 40),
                          decoration: BoxDecoration(
                            color: Colors.white,                          
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: const Color(0xFF343434),
                            ),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle: TextStyle(fontFamily: 'InterBold', fontSize: 12),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(left: 30,bottom: 10),
                              
                            ),
                          ),
                        ),
            
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>const VerifikasiLupaPassword()));
                          },
                          child: Container(
                            width: double.infinity,
                            height: 50.38,
                            margin: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                            decoration: BoxDecoration(
                              color: const Color(0XFFB1004B),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Center(
                              child: Text(
                                "Kirim Email",
                                style: TextStyle(fontFamily: 'InterBold', fontSize: 14, color: Color(0xFFFFFFFF)),
                              ),
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
        ],
      ),
    );
  }
}