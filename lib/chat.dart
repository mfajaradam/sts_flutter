import 'package:flutter/material.dart';
import 'package:sts_flutter/cv.dart';
import 'package:sts_flutter/home.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: <Tab>[
                Tab(
                  icon: Text(
                    "Chat",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                Tab(
                  icon: Text(
                    "Pembaruan",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                Tab(
                  icon: Text(
                    "Panggilan",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ],
              // indicator
              indicator: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 3,
                  ),
                ),
              ),
            ),
            // appbar / title
            title: const Text(
              'WhatsApp',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: const Color(0xFF128C7E),
          ),
          // untuk menampilkan layar utama
          body: TabBarView(
            children: [
              SizedBox(
                // scrollbar
                child: Scrollbar(
                  thumbVisibility:
                      true, //true untuk menampilkan penanda scrollbar kalo false tidak menampilan
                  child: ListView.builder(
                    // ada berapa item di scrollbar
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return const Padding(
                        padding: EdgeInsets.all(10.0), //ukuran full scrollbar
                        child: Stack(
                          //biar bisa di timpa sama widget yang lain
                          children: <Widget>[
                            Row(
                              //biar sejajar sama img dan text
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 10, top: 15),
                                  child: ClipOval(
                                    child: Image(
                                      image: AssetImage("images/profil.jpg"),
                                      width: 70,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: Text(
                                    "M.fajar",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              left: 80,
                              top: 53,
                              child: Text(
                                "Anda : waluh",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 25),
                child: Stack(
                  children: [
                    const Text(
                      "Status",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10, top: 15),
                            child: Stack(
                              children: [
                                const ClipOval(
                                  child: Image(
                                    image: AssetImage("images/profil.jpg"),
                                    width: 70,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 43, top: 43),
                                  child: Container(
                                    width: 27,
                                    height: 27,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF128C7E),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "+",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Text(
                              "Status Saya",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 75, left: 80),
                      child: Text(
                        "Ketuk Untuk Memperbarui Status",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 25),
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10, top: 15),
                          child: Stack(
                            children: [
                              Container(
                                width: 65,
                                height: 65,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF128C7E),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.attachment_outlined,
                                    size: 28,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Text(
                            "Buat Tautan Panggilan",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 45, left: 75, right: 30),
                      child: Text(
                        "Bagikan Tautan Untuk Panggilan WhatsApp Anda",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color(0xFF128C7E),
            child: const Icon(
              Icons.chat,
              color: Colors.white,
            ),
          ),
          drawer: _buildDrawer(context),
        ),
      ),
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
