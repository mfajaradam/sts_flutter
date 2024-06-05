import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sts_flutter/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(
          seconds: 6), // Ganti 3 dengan durasi splash screen yang diinginkan
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => const LoginPage()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 91, 177, 248),
      // Ganti warna background splash screen sesuai keinginan
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo-bn666.png', // Ganti path gambar logo sesuai keinginan
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 20),
            const CircularProgressIndicator(), // Tambahkan indicator loading jika diperlukan
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 65, left: 25),
            child: Image(
              image: AssetImage("images/burung.jpg"),
              width: 125,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25, left: 30),
            child: Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 33),
            child: Container(
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey[200],
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: "  Username", border: InputBorder.none),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 33),
            child: Container(
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey[200],
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: "  Password", border: InputBorder.none),
                obscureText: true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 33),
            child: SizedBox(
              width: 350,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(69, 130, 195, 1)),
                child: const Text(
                  "LOGIN",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
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
