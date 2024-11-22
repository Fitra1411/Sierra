import 'package:flutter/material.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_006,
      body: Center(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.only(top: 5, left: 6),
              child: Container(
                width: 400,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.pink.shade200),
                child: Padding(
                  padding: const EdgeInsets.only(top: 18, left: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text('Edit Profile Anda',
                          style: TextStyle(color: Colors.white, fontSize: 20))
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                  ),
                  child: Text('User Name*'),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
          Container(
            width: 350,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.person_sharp),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('User Name*'),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                  ),
                  child: Text('Email Address*'),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
          Container(
            width: 350,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.mail_rounded),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('zik**********@gmail.com'),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                  ),
                  child: Text('Confirm Email Address*'),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
          Container(
            width: 350,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.mail_rounded),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('zikramultazam@gmail.com'),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                  ),
                  child: Text('Phone Number Address*'),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
          Container(
            width: 350,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.local_phone_rounded),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('+628126*****'),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                  ),
                  child: Text('Confirm Phone Number Address*'),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
          Container(
            width: 350,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.local_phone_rounded),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('+628126*****'),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                  ),
                  child: Text('Alamat Address*'),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
          Container(
            width: 350,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.location_on),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                      'Batuphat Timur, Kec. Muara Satu, Kota\nLhokseumawe, Aceh'),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                  ),
                  child: Text('Password Address*'),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
          Container(
            width: 350,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.lock),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('******'),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                  ),
                  child: Text('Confirm Password Address*'),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
          Container(
            width: 350,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.lock),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('******'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 192, 41, 99),
              ),
              child: Center(
                  child: Text(
                "Enter",
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),
        ]),
      ),
    );
  }
}
