import 'package:flutter/material.dart';
import 'package:testing_aplikasi/NavBar/navbar.dart';
import 'package:testing_aplikasi/checkout/checkout.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class FillCart extends StatefulWidget {
  const FillCart({super.key});

  @override
  State<FillCart> createState() => _FillCartState();
}

class Product {
  String storeName;
  String name;
  int price;
  String image;
  bool isSelected;
  int quantity;

  Product({
    required this.storeName,
    required this.name,
    required this.price,
    required this.image,
    this.isSelected = false,
    this.quantity = 1,
  });
}


class _FillCartState extends State<FillCart> {
  bool _selectAll = false;
  List<Product> _products = [
    Product(
      storeName: 'Toko Zikra',
      name: 'Micellar',
      price: 150000,
      image: 'assets/images/produk/emina/emina bbcream.jpg',
    ),
    Product(
      storeName: 'Toko Zikra',
      name: 'LipBalm Emina',
      price: 60000,
      image: 'assets/images/produk/emina/emina lip.jpg',
    )
    // Add more products here if needed
  ];

  int _calculateTotalPrice() {
    int total = 0;
    for (var product in _products) {
      if (product.isSelected) {
        total += product.price * product.quantity;
      }
    }
    return total;
  }

  void _toggleSelectAll(bool? value) {
    setState(() {
      _selectAll = value ?? false;
      for (var product in _products) {
        product.isSelected = _selectAll;
      }
    });
  }

  void _increaseQuantity(int index) {
    setState(() {
      _products[index].quantity++;
    });
  }

  void _decreaseQuantity(int index) {
    setState(() {
      if (_products[index].quantity > 1) {
        _products[index].quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_006,
      body: Column(
        children: [
          Container(
            height: 70,
            margin: EdgeInsets.only(top: 30, left: 10, right: 10),
            decoration: BoxDecoration(
              color: pink_004,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 2),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (BuildContext) => Navbar(),
                        ),
                      );
                    },
                    icon: Icon(Icons.arrow_back_ios, color: pink_006),
                  ),
                  Expanded(
                    child: Text(
                      'Keranjang Saya',
                      style: TextStyle(
                        fontSize: 20,
                        color: pink_006,
                        fontFamily: 'OutfitSemiBold',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: _products.length,
              itemBuilder: (context, index) {
                return _ProdukKeranjang(
                  product: _products[index],
                  onSelected: (value) {
                    setState(() {
                      _products[index].isSelected = value!;
                      _selectAll = _products.every((p) => p.isSelected);
                    });
                  },
                  onIncrease: () => _increaseQuantity(index),
                  onDecrease: () => _decreaseQuantity(index),
                );
              },
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        height: 70,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: _selectAll,
                      onChanged: _toggleSelectAll,
                    ),
                    Text(
                      'Select All',
                      style: TextStyle(fontFamily: 'OutfitSemiBold', fontSize: 12),
                    ),
                  ],
                ),
                Text(
              'Total Harga: ${_calculateTotalPrice()}',
              style: TextStyle(fontFamily: 'OutfitSemiBold', fontSize: 12),
            ),

              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CheckoutConfirm()));
              },
              child: Text(
                'Checkout',
                style: TextStyle(
                  color: pink_006
                ),),
              style: ElevatedButton.styleFrom(
                backgroundColor: pink_001,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _ProdukKeranjang({
  required Product product,
  required Function(bool?) onSelected,
  required VoidCallback onIncrease,
  required VoidCallback onDecrease,
}) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: pink_002),
      color: Colors.white,
    ),
    child: Column(
      children: [
        Row(
          children: [
            Checkbox(value: product.isSelected, onChanged: onSelected),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                product.storeName,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'OutfitBold',
                ),
              ),
            ),
          ],
        ),
        Divider(color: pink_004),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    product.image,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    product.name,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'OutfitBold',
                    ),
                  ),
                  Text(
                    'Rp ${product.price * product.quantity}',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'OutfitSemiBold',
                      color: pink_002,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 2),
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: pink_001),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove, size: 14),
                            onPressed: onDecrease,
                          ),
                          Text(
                            '${product.quantity}',
                            style: TextStyle(fontSize: 14),
                          ),
                          IconButton(
                            icon: Icon(Icons.add, size: 14),
                            onPressed: onIncrease,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

