import 'package:flutter/material.dart';
import 'package:testing_aplikasi/NavBar/navbar.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class HomeChatPembeli extends StatefulWidget {
  const HomeChatPembeli({super.key});

  @override
  State<HomeChatPembeli> createState() => _HomeChatPembeliState();
}

class _HomeChatPembeliState extends State<HomeChatPembeli> {
  // Create a TextEditingController to manage the search input
  final TextEditingController _searchController = TextEditingController();
  
  List<Map<String, String>> chats = [
    {'image': 'assets/images/brand/emina_logo.png',
     'title': 'Emina Shop', 
     'data': 'Whatever happens, I still choose you'
     },
  ];

  List<Map<String, String>> filteredChats = [];

  @override
  void initState() {
    super.initState();
    // Initially, all chats are visible
    filteredChats = chats;
    _searchController.addListener(_filterChats);
  }

  void _filterChats() {
    setState(() {
      // Filter chat items based on search query
      String query = _searchController.text.toLowerCase();
      filteredChats = chats.where((chat) {
        return chat['title']!.toLowerCase().contains(query) || chat['data']!.toLowerCase().contains(query);
      }).toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_006,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              decoration: BoxDecoration(
                color: pink_004,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Navbar()));
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                    color: pink_006,
                  ),
                  Text(
                    'Chat',
                    style: TextStyle(fontSize: 20, color: pink_006, fontFamily: 'OutfitSemiBold'),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 5),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Cari toko, penjual, dan pesan',
                  hintStyle: TextStyle(
                    color: fontAbu,
                    fontFamily: 'Outfits',
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                  prefixIcon: Icon(Icons.search, color: fontAbu),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredChats.length,
              itemBuilder: (context, index) {
                final chat = filteredChats[index];
                return _Chatlist(chat['image']!, chat['title']!, chat['data']!);
              },
            ),
          ),
        ],
      ),
    );
  }
}

Widget _Chatlist(String image, String title, String data) {
  return Column(
    children: [
      Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey,),
                  shape: BoxShape.circle, // Set the shape to circle
                  color: Colors.white,
                ),
                child: ClipOval(
                  child: Image.asset(image)),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 14, color: Colors.black, fontFamily: 'OutfitBold'),
                ),
                Text(
                  data,
                  style: TextStyle(fontSize: 12, color: fontAbu, fontFamily: 'OutfitRegular'),
                ),
              ],
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        child: Container(
          width: double.infinity,
          height: 1,
          margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
          color: fontAbu,
        ),
      )
    ],
  );
}
