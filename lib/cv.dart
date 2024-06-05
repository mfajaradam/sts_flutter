import 'package:flutter/material.dart';

class CvPage extends StatelessWidget {
  const CvPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> myKontak = [
      "• WhatsApp  : 087847054357",
      "• Instagram : mfajaradam",
      "• Facebook  : M.fajar",
    ];
    final List<String> myDataDiri = [
      "• Tempat, Tanggal Lahir : Kuningan, 04 September 2006",
      "• Alamat           : Cicaheum, Padasuka",
      "• Jenis Kelamin     : Laki-Laki",
      "• Agama                  : Islam",
      "• Kewarga Negara  : Indonesia",
      "• Status                    : Pelajar",
    ];
    final List<String> myPendidikan = [
      "SDN 2 Purwawinangun (2013 - 2019)",
      "SMPN 1 Kuningan (2019 - 2022)",
      "SMK Bakti Nusantara 666 (2022 - 2025)",
    ];
    final List<String> myPengalaman = [
      "Juara 1 Lomba Kosidah",
      "Juara 3 Lomba Tenis Meja",
      "Bakti Nusantara Character Camp",
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Curriculum Vitae',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 120, top: 10),
                child: ClipOval(
                  child: Image(
                    image: AssetImage("images/FOTO ADAM1.png"),
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 57, top: 30),
                child: Text(
                  "Muhammad Fajar Adammullah",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 140, top: 3),
                child: Text(
                  "Student PPLG",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 17,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 13, top: 70),
                child: Card(
                  clipBehavior: Clip.hardEdge,
                  child: SizedBox(
                    width: 360,
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'KEAHLIAN',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Tenis Meja, Badminton & Coding",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 13, top: 10),
                child: Card(
                  clipBehavior: Clip.hardEdge,
                  child: SizedBox(
                    width: 360,
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'KONTAK',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 0, top: 0),
                            child: ListView.builder(
                              itemCount: myKontak.length,
                              itemExtent: 25,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  title: Text(
                                    myKontak[index],
                                    style: TextStyle(
                                      fontSize: 17,
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
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 13, top: 15),
                child: Card(
                  clipBehavior: Clip.hardEdge,
                  child: SizedBox(
                    width: 360,
                    height: 230,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'DATA PRIBADI',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 0, top: 0),
                            child: ListView.builder(
                              itemCount: myDataDiri.length,
                              itemExtent: 25,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  title: Text(
                                    myDataDiri[index],
                                    style: TextStyle(
                                      fontSize: 17,
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
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 13, top: 20),
                child: Card(
                  clipBehavior: Clip.hardEdge,
                  child: SizedBox(
                    width: 360,
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'PENDIDIKAN',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 0, top: 0),
                            child: ListView.builder(
                              itemCount: myPendidikan.length,
                              itemExtent: 25,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  title: Text(
                                    myPendidikan[index],
                                    style: TextStyle(
                                      fontSize: 17,
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
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 13, top: 25),
                child: Card(
                  clipBehavior: Clip.hardEdge,
                  child: SizedBox(
                    width: 360,
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'PENGALAMAN',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 0, top: 0),
                            child: ListView.builder(
                              itemCount: myPengalaman.length,
                              itemExtent: 25,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  title: Text(
                                    myPengalaman[index],
                                    style: TextStyle(
                                      fontSize: 17,
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
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 13, top: 25),
                child: Card(
                  clipBehavior: Clip.hardEdge,
                  child: SizedBox(
                    width: 360,
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'HOBI',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Tenis Meja, Badminton & Coding",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
