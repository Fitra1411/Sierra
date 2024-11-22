import 'package:flutter/material.dart';
import 'package:testing_aplikasi/penilaian/fill_rating.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class Rating extends StatefulWidget {
  const Rating({super.key});

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_006,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Container(
              width: 390,
              height: 219,
              decoration: BoxDecoration(
                color: pink_004,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 10,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Penilaian2()),
                            );
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new_outlined,
                            color: pink_006,
                            size: 24,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Balik',
                          style: TextStyle(
                            color: pink_006,
                            fontSize: 18,
                            fontFamily: 'PoppinsMedium',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Text(
                      "Rating :",
                      style: TextStyle(
                        color: pink_006,
                        fontSize: 24,
                        fontFamily: 'PoppinsMedium',
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Container(
                        width: 321,
                        height: 61,
                        decoration: BoxDecoration(
                          color: pink_006,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Image.asset(
                            "./images/bintang.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Container(
              width: 321,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Masukkan komentar...",
                        hintStyle: TextStyle(
                          fontFamily: "PoppinsMedium",
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                      ),
                      maxLines: 3,
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            // Aksi tombol Nanti
                          },
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: pink_004),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(
                            "Nanti",
                            style: TextStyle(
                              fontFamily: "PoppinsMedium",
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Aksi tombol Beri Ulasan
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              backgroundColor: pink_001),
                          child: Text(
                            "Beri Ulasan",
                            style: TextStyle(
                              fontFamily: "PoppinsMedium",
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}