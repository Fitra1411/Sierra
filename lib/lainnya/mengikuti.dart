import 'package:flutter/material.dart';
import 'package:testing_aplikasi/NavBar/navbar.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class Mengikuti2 extends StatefulWidget {
  const Mengikuti2({super.key});

  @override
  State<Mengikuti2> createState() => _Mengikuti2State();
}

class _Mengikuti2State extends State<Mengikuti2> {
  // Track the follow state for each item
  bool isFollowing1 = true;
  bool isFollowing2 = true;
  bool isFollowing3 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_006,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Container
          Container(
            width: double.infinity,
            height: 58,
            margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
            decoration: BoxDecoration(
              color: pink_004,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Navbar()));
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                  color: pink_006,
                ),
                Text(
                  'Mengikuti',
                  style: TextStyle(
                    fontFamily: 'OutfitSemiBold',
                    fontSize: 20,
                    color: pink_006,
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          const SizedBox(height: 26),
          // List of followable items
          _buildFollowRow(
            'Grand Make-Up',
            'Muara Satu',
            'assets/images/grand.png',
            isFollowing1,
            () {
              setState(() {
                isFollowing1 = !isFollowing1;
              });
            },
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1.5,
            indent: 20,
            endIndent: 20,
          ),
          _buildFollowRow(
            'Ponco Premium',
            'Muara Satu',
            'assets/images/ponco.png',
            isFollowing2,
            () {
              setState(() {
                isFollowing2 = !isFollowing2;
              });
            },
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1.5,
            indent: 20,
            endIndent: 20,
          ),
          _buildFollowRow(
            "Man U' Make-Up",
            'Muara Dua',
            'assets/images/man-u.png',
            isFollowing3,
            () {
              setState(() {
                isFollowing3 = !isFollowing3;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildFollowRow(String title, String subtitle, String imagePath, bool isFollowing, VoidCallback onPressed) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Profile Image
          Container(
            width: 46,
            height: 47,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey,
                width: 2,
              ),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 12), // Space between image and texts
          // Texts
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontFamily: 'OutfitSemiBold',
                  fontSize: 16,
                  color: Colors.black.withOpacity(0.8),
                ),
              ),
              const SizedBox(height: 4), // Space between title and subtitle
              Text(
                subtitle,
                style: TextStyle(
                  fontFamily: 'OutfitRegular',
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Spacer(),
          // Follow Button
          GestureDetector(
            onTap: onPressed,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                color: isFollowing ? Colors.transparent : pink_002,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: pink_002,
                  width: 1.5,
                ),
              ),
              child: Text(
                isFollowing ? 'Mengikuti' : '+Ikuti',
                style: TextStyle(
                  fontFamily: 'OutfitSemiBold',
                  fontSize: 14,
                  color: isFollowing ? pink_002 : pink_006,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}