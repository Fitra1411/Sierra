import 'package:flutter/material.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class CheckoutConfirm extends StatefulWidget {
  const CheckoutConfirm({super.key});

  @override
  State<CheckoutConfirm> createState() => _CheckoutConfirmState();
}

class _CheckoutConfirmState extends State<CheckoutConfirm> {
  final List<Product> products = [
    Product(
      namaToko: 'Toko Zikra',
      images: 'assets/images/produk/emina/emina bbcream.jpg',
      namaProduk: 'Lipstik Matte',
      hargaProduk: 50000,
      jumlahProduk: 1,
    ),
    Product(
      namaToko: 'Toko Zikra',
      images: 'assets/images/produk/emina/emina lip.jpg',
      namaProduk: 'LipBalm Emina',
      hargaProduk: 120000,
      jumlahProduk: 2,
    ),
  ];

  String selectedDelivery = "Gojek";
  int deliveryFee = 15000;

  void updateDelivery(String option) {
    setState(() {
      selectedDelivery = option;
      deliveryFee = (option == "Gojek") ? 15000 : 12000; // Example fees
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_006,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // Header Container
            Container(
              height: 60,
              margin: EdgeInsets.only(top: 30, left: 10, right: 10),
              decoration: BoxDecoration(
                color: pink_004,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: pink_006),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    'Konfirmasi Pesanan',
                    style: TextStyle(
                      color: pink_006,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            // ALAMAT PENGIRIMAN
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              margin: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: pink_002),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/icon more/UI/Location.png',
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Alamat Pengiriman',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'PoppinsMedium',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Ubah',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'PoppinsMedium',
                              color: Colors.grey,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(color: pink_005),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: _buildAlamatPengiriman(
                        'Zikra Multazam', '018011231', 'Jl. Kedungmundu Raya No. 1, Semarang'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),

            // Produk Checkout
            ...products.map((product) {
              return _buildProdukCheckout(
                product.namaToko,
                product.images,
                product.namaProduk,
                product.hargaProduk,
                product.jumlahProduk,
              );
            }).toList(),

            // Delivery Options
            Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: pink_002),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/icon more/UI/Delivery.png',
                        width: 15,
                        height: 15,
                        color: Colors.black,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Metode Pengiriman',
                        style: TextStyle(
                          fontFamily: 'PoppinsMedium',
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Divider(color: pink_005),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildDeliveryOption(
                        'Gojek',
                        'assets/images/icon more/UI/GOJEK.png',
                        "Tiba: 1-2 hari",
                        15000,
                      ),
                      buildDeliveryOption(
                        'Maxim',
                        'assets/images/icon more/UI/MAXIM.png',
                        "Tiba: 1-2 hari",
                        12000,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Rincian Pembayaran
            Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: pink_002),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Ongkos Kirim', style: TextStyle(fontFamily: 'PoppinsMedium', fontSize: 12)),
                      Text('Rp. $deliveryFee', style: TextStyle(fontFamily: 'PoppinsMedium', fontSize: 12)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDeliveryOption(String title, String asset, String time, int fee) {
    bool isSelected = selectedDelivery == title;
    return GestureDetector(
      onTap: () => updateDelivery(title),
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: isSelected ? pink_002 : Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: pink_002),
        ),
        child: Column(
          children: [
            Radio<String>(
              value: title,
              groupValue: selectedDelivery,
              onChanged: (value) => updateDelivery(value!),
              activeColor: Colors.white,
            ),
            Image.asset(
              asset,
              width: 50,
              height: 35,
            ),
            Text(
              time,
              style: TextStyle(
                fontFamily: 'OpenSansBold',
                fontSize: 8,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
            Text(
              "Rp. $fee",
              style: TextStyle(
                fontFamily: 'OpenSansBold',
                fontSize: 10,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAlamatPengiriman(String nama, String handphone, String alamat) {
    return Container(
      padding: EdgeInsets.all(5),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                nama,
                style: TextStyle(
                  fontFamily: 'OutfitLight',
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 5),
              Text('( $handphone )'),
            ],
          ),
          Text(
            alamat,
            style: TextStyle(
              color: fontAbu,
              fontFamily: 'OutfitLight',
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProdukCheckout(
      String namaToko, String images, String namaProduk, int hargaProduk, int jumlahProduk) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: pink_002),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            namaToko,
            style: TextStyle(
              fontFamily: 'OpenSansBold',
            ),
          ),
          Divider(color: pink_005),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: pink_002),
                  image: DecorationImage(
                    image: AssetImage(images),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    namaProduk,
                    style: TextStyle(fontFamily: 'PoppinsBold', fontSize: 14),
                  ),
                  Text(
                    'Rp. $hargaProduk',
                    style: TextStyle(
                      fontFamily: 'PoppinsRegular',
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'Jumlah: $jumlahProduk',
                    style: TextStyle(
                      fontFamily: 'PoppinsRegular',
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Product {
  final String namaToko;
  final String images;
  final String namaProduk;
  final int hargaProduk;
  final int jumlahProduk;

  Product({
    required this.namaToko,
    required this.images,
    required this.namaProduk,
    required this.hargaProduk,
    required this.jumlahProduk,
  });
}
