import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:testing_aplikasi/utils/colors.dart';
import 'package:testing_aplikasi/views/login01.dart';
import 'package:testing_aplikasi/views/registerdone.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  bool isChecked = false;

  Future<void> _register() async {
    if (_passwordController.text == _confirmPasswordController.text) {
      try {
        UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );

        // Jika registrasi berhasil, navigasi ke halaman "RegisterDone"
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => RegisterDone())
        );
      } catch (e) {
        // Tampilkan pesan kesalahan jika registrasi gagal
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Registrasi gagal: ${e.toString()}')),
        );
      }
    } else {
      // Tampilkan pesan jika password tidak cocok
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Password tidak cocok')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF0C7D4),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Silahkan Daftar",
            style: TextStyle(fontFamily: 'OpenSansBold', fontSize: 21, fontWeight: FontWeight.bold),
          ),
          const Center(
            child: Image(
              image: AssetImage('assets/images/logo2.png'),
              width: 150,
              height: 150,
            ),
          ),
          _buildTextField(_emailController, 'Email', Icons.email),
          _buildTextField(_usernameController, 'Username', Icons.person),
          _buildPasswordField(_passwordController, 'Password'),
          _buildPasswordField(_confirmPasswordController, 'Confirm Password'),
          _buildTextField(_phoneController, 'No.Handphone', Icons.call),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
                activeColor: const Color(0xFF921A40),
              ),
              const Text(
                "Saya menyetujui Syarat Ketentuan\n dan Kebijakan Privasi",
                style: TextStyle(fontFamily: 'OpenSansRegular', fontSize: 11),
              ),
            ],
          ),
          GestureDetector(
            onTap: isChecked ? _register : null,
            child: Container(
              width: 140,
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xFF921A40),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Center(
                child: Text(
                  'Daftar',
                  style: TextStyle(fontFamily: 'InterBold', fontSize: 17, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.005),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Sudah punya Akun?", style: TextStyle(fontFamily: 'InterBold', fontSize: 14)),
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontFamily: 'InterBold',
                      fontSize: 14,
                      color: pink_002,
                      decoration: TextDecoration.underline,
                      decorationColor: pink_002,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String hintText, IconData icon) {
    return Container(
      width: double.infinity,
      height: 35,
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
      decoration: BoxDecoration(
        color: const Color(0xFFFFEFEF),
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(50),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(fontFamily: 'InterBold', fontSize: 12),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(left: 30, bottom: 5),
          suffixIcon: Icon(icon, color: const Color(0xFF343434)),
        ),
      ),
    );
  }

  Widget _buildPasswordField(TextEditingController controller, String hintText) {
    return Container(
      width: double.infinity,
      height: 35,
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
      decoration: BoxDecoration(
        color: const Color(0xFFFFEFEF),
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(50),
      ),
      child: TextField(
        controller: controller,
        obscureText: true,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(fontFamily: 'InterBold', fontSize: 12),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(left: 30, bottom: 5),
          suffixIcon: const Icon(Icons.remove_red_eye, color: Color(0xFF343434)),
        ),
      ),
    );
  }
}
