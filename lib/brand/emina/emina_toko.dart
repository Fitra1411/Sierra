import 'package:flutter/material.dart';
import 'package:testing_aplikasi/NavBar/navbar.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class EminaStore extends StatefulWidget {
  const EminaStore({super.key});

  @override
  State<EminaStore> createState() => _EminaStoreState();
}

class _EminaStoreState extends State<EminaStore> {
  bool isFollowing = false; // Status apakah pengguna mengikuti toko

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: pink_006,
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              margin: const EdgeInsets.fromLTRB(10, 30, 10, 10),
              decoration: BoxDecoration(
                color: pink_004,
                borderRadius: BorderRadius.circular(20),
              ),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) => Navbar()));
                        },
                        icon: Icon(Icons.arrow_back_ios, color: pink_006),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 40),
                          child: Container(
                            decoration: BoxDecoration(
                              color: pink_006,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 30,
                            width: 80,
                            padding: const EdgeInsets.only(left: 5),
                            child: const TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: 'Cari Barang',
                                hintStyle: TextStyle(
                                  fontFamily: 'OutfitSemiBold',
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                                contentPadding: EdgeInsets.only(
                                    bottom: 15, left: 5, right: 5),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage('assets/images/zikra.png'),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Emina Store',
                                style: TextStyle(
                                  fontFamily: 'OutfitBold',
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Pengikut',
                                    style: TextStyle(
                                      fontFamily: 'InterMedium',
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isFollowing = !isFollowing; // Toggle status
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.5, vertical: 4),
                                decoration: BoxDecoration(
                                  color: isFollowing
                                      ? Colors.transparent
                                      : pink_002,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: pink_002,
                                    width: 1.5,
                                  ),
                                ),
                                child: Text(
                                  isFollowing ? 'Diikuti' : '+Ikuti',
                                  style: TextStyle(
                                    fontFamily: 'OutfitSemiBold',
                                    fontSize: 11,
                                    color: isFollowing ? pink_002 : pink_006, 
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 2),
                            Container(
                              width: 65,
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: pink_002,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  'Chat',
                                  style: TextStyle(
                                    fontFamily: 'OutfitRegular',
                                    fontSize: 11,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            TabBar(
              padding: const EdgeInsets.only(left: 10, right: 10),
              unselectedLabelColor: Colors.grey,
              indicatorColor: pink_002,
              labelColor: pink_002,
              tabs: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Toko',
                    style: TextStyle(fontFamily: 'PoppinsMedium', fontSize: 12),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Produk',
                    style: TextStyle(fontFamily: 'PoppinsMedium', fontSize: 12),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Kategori',
                    style: TextStyle(fontFamily: 'PoppinsMedium', fontSize: 12),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(
                      child: EmptyOrderWidget(
                          message: 'Belum ada Etalase tersedia')),
                  Center(
                      child: EmptyOrderWidget(
                          message: 'Belum ada produk tersedia')),
                  Center(
                      child: EmptyOrderWidget(
                          message: 'Belum ada kategori tersedia')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EmptyOrderWidget extends StatelessWidget {
  final String message;

  const EmptyOrderWidget({required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/keranjang.png', width: 200),
        const SizedBox(height: 16),
        Text(
          message,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}
