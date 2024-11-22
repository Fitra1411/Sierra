import 'package:flutter/material.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class Pindahkan extends StatefulWidget {
  const Pindahkan({super.key});

  @override
  State<Pindahkan> createState() => _PindahkanState();
}

class _PindahkanState extends State<Pindahkan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_006,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
            child: Container(
              width: 340,
              height: 57,
              padding: const EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0),
              decoration: BoxDecoration(
                color: pink_004,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  const Text(
                    'Pindahkan',
                    style: TextStyle(
                      fontFamily: 'OutfitBold',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 47.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 122,
                  height: 44,
                  decoration: BoxDecoration(
                    color: pink_006,
                    borderRadius: BorderRadius.circular(8.8),
                    border: Border.all(color: pink_004, width: 1.5),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Dompet Saya',
                    style: TextStyle(
                      fontFamily: 'PoppinsBold',
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                      color: pink_004,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.arrow_forward,
                    color: pink_004,
                  ),
                ),
                Container(
                  width: 118.8,
                  height: 44,
                  decoration: BoxDecoration(
                    color: pink_006,
                    borderRadius: BorderRadius.circular(8.8),
                    border: Border.all(color: pink_004, width: 1.5),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Saldo',
                    style: TextStyle(
                      fontFamily: 'PoppinsBold',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                      color: pink_004,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: Container(
              width: 310,
              height: 137,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                    child: Text(
                      'Masukkan nominal transfer',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(0.49),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                    child: Container(
                      width: 273,
                      height: 2,
                      color: pink_004,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        const Text(
                          'Rp',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: '100.000.000.000,00',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                  color: pink_004,
                                  width: 1,
                                ),
                              ),
                              contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            ),
                            keyboardType: TextInputType.number,
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90.0),
            child: SizedBox(
              width: 135,
              height: 38,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: pink_002,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Transfer',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}