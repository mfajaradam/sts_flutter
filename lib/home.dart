import 'package:flutter/material.dart';
import 'chat.dart';
import 'cv.dart';

class HomePage extends StatelessWidget {
  final List<String> myDescription = [
    "1. Pengembangan Perangkat Lunak dan Gim",
    "2. Desain Komunikasi Visual",
    "3. Animasi",
    "4. Akuntansi dan Keuangan Lembaga",
    "5. Bisnis Daring dan Pemasaran",
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: Stack(
        children: <Widget>[
          const Align(
            alignment: Alignment(-0.30, -1),
            child: Image(
              image: AssetImage("images/logo-smk.png"),
              width: 500,
            ),
          ),
          const Align(
            alignment: Alignment(-0.30, -0.65),
            child: Image(
              image: AssetImage("images/halaman-smk.png"),
              width: 500,
            ),
          ),
          const Align(
            alignment: Alignment(-0.80, -0.55),
            child: Text(
              "Profil Sekolah",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ),
          const Align(
            alignment: Alignment(-0.80, 0),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "SMK Bakti Nusantara 666 adalah Sekolah Menengah Kejuruan berbasis Industri kreatif, terletak di Kawasan Bandung timur yang berdiri sejak tahun 2007. Dengan tenaga pengajar yang Profesional dan kompeten dibidangnya. SMK Bakti Nusantara 666 telah terakreditasi A dan memiliki khas tersendiri dalam membentuk karakter siswa melalui program unggulan sehingga menghasilkan lulusan yang berkualitas sehingga langsung dilirik oleh pihak industri.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          const Align(
            alignment: Alignment(-0.80, 0.44),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "SMK Bakti Nusantara 666 memiliki kelompok kompetensi keahlian, diantaranya :",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Align(
            alignment:
                const Alignment(-0.80, 1.65), // Sesuaikan alignment sesuai kebutuhan
            child: SizedBox(
              width: 215, // Sesuaikan lebar sesuai kebutuhan
              height: 349, // Sesuaikan tinggi sesuai kebutuhan
              child: ListView.builder(
                itemCount: myDescription.length,
                itemExtent: 25,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      myDescription[index],
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      drawer: _buildDrawer(context),
    );
  }
}

Widget _buildDrawer(BuildContext context) {
  return Drawer(
    child: Scrollbar(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "images/logo-bn666.png",
                  width: 100,
                ),
                const Text(
                  "SMK Bakti Nusantara 666",
                  style: TextStyle(color: Colors.white),
                ),
                const Text(
                  "ig: @mfajaradam",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Dashboard"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.abc_rounded),
            title: const Text("WhatsApp"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ChatPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text("CV"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CvPage()),
              );
            },
          ),
        ],
      ),
    ),
  );
}

void main() {
  runApp( MaterialApp(
    home: HomePage(),
  ));
}
