import 'package:flutter/material.dart';
import 'package:testing_aplikasi/lupa_password/konfirmasipassword.dart';
import 'package:testing_aplikasi/views/login01.dart';

class VerifikasiLupaPassword extends StatefulWidget {
  const VerifikasiLupaPassword({super.key});

  @override
  State<VerifikasiLupaPassword> createState() => _VerifikasiLupaPasswordState();
}

class _VerifikasiLupaPasswordState extends State<VerifikasiLupaPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF0C7D4),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(padding: EdgeInsets.only(top: 61,left: 44),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context,MaterialPageRoute(builder: (BuildContext)=>LoginScreen()));
                },
                child: Icon(Icons.arrow_back_ios,
                color: Color(0xFF343434),),
              ),
              Text('Login',style: TextStyle(fontFamily: 'OpenSansBold', fontSize: 15),)
            ],
          ),
          ),

          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(left: 44, right: 58,top: 50),
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text(
                'Link pengubahan password sudah di\n kirim ulang ke email xxx@gmail.com',
                style: TextStyle(
                  fontFamily: 'OpenSansBold',
                  fontSize: 10,
                  color: Color(0xFF343434),
                ),
              )
              ),
          ),

          Expanded(
            child: Container(
              width: double.infinity,
              height: 628,
              margin: const EdgeInsets.only(left: 3.75, right: 3.75, top: 40),
              decoration: BoxDecoration(
                color: const Color(0XFFFFEFEF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 26, left:40, bottom: 53),
                    child: Text(
                      "Lupa Password",
                      style: TextStyle(fontFamily: 'OpenSansBold', fontSize: 21),
                    ),
                  ),
            
                  const SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text(
                          "Mohon cek email anda :",
                          style: TextStyle(fontFamily: 'InterBold', fontSize: 14.16),
                        )
                      ],
                    ),
                  ),
                  
                  const Padding(
                    padding: EdgeInsets.only(top: 26, left:40, bottom: 53,right: 20),
                    child: Text(
                      "Link perubahan password telah dikirikmkan ke email anda",
                      style: TextStyle(fontFamily: 'OpenSansBold', fontSize: 11.16),
                    ),
                  ),
            
                  GestureDetector.new(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>ConfirmPass()));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 26, bottom: 53),
                      child: Center(
                        child: Text(
                          "Kirim Ulang",
                          style: TextStyle(fontFamily: 'OpenSansBold', fontSize: 13.16, color: Color(0xFF921A40)),
                          
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}