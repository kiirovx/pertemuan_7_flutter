import 'package:flutter/material.dart';

// Fungsi utama untuk menjalankan aplikasi
void main() {
  runApp(const MyApp());
}

// Widget utama aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Halaman utama aplikasi
      home: const HomePage(),
    );
  }
}

// Halaman Home
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Data array untuk ListView.builder dan ListView.separated
  final List<String> data = const [
    "Flutter",
    "Dart",
    "Java",
    "Python",
    "Kotlin"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // AppBar di bagian atas aplikasi
      appBar: AppBar(
        title: const Text("Praktikum Flutter"),
        backgroundColor: Colors.blue,
      ),

      // SingleChildScrollView agar bisa discroll ke bawah
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // ==================================================
              // CONTAINER
              // Widget untuk membuat kotak berwarna
              // ==================================================
              const Text(
                "1. Container",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Container(
                height: 100,
                width: double.infinity,
                alignment: Alignment.center,

                // Margin luar container
                margin: const EdgeInsets.only(top: 10, bottom: 20),

                // Decoration untuk warna dan border radius
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: const Text(
                  "Ini Container",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),

              // ==================================================
              // GRIDVIEW
              // Menampilkan item dalam bentuk grid
              // ==================================================
              const Text(
                "2. GridView",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              GridView.count(

                // Jumlah kolom grid
                crossAxisCount: 3,

                // Agar GridView mengikuti ukuran konten
                shrinkWrap: true,

                // Menonaktifkan scroll bawaan GridView
                physics: const NeverScrollableScrollPhysics(),

                // Generate 6 item grid
                children: List.generate(6, (index) {
                  return Container(
                    margin: const EdgeInsets.all(5),
                    color: Colors.blue,

                    child: Center(
                      child: Text(
                        "Item ${index + 1}",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                }),
              ),

              const SizedBox(height: 20),

              // ==================================================
              // LISTVIEW
              // Menampilkan list sederhana
              // ==================================================
              const Text(
                "3. ListView",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(
                height: 120,

                child: ListView(
                  children: const [

                    // Item list
                    ListTile(title: Text("A")),
                    ListTile(title: Text("B")),
                    ListTile(title: Text("C")),
                  ],
                ),
              ),

              // ==================================================
              // LISTVIEW.BUILDER
              // Membuat list secara dinamis dari array
              // ==================================================
              const Text(
                "4. ListView.builder",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(
                height: 200,

                child: ListView.builder(

                  // Jumlah item sesuai panjang array
                  itemCount: data.length,

                  itemBuilder: (context, index) {
                    return ListTile(

                      // Icon di sebelah kiri
                      leading: const Icon(Icons.code),

                      // Data diambil dari array
                      title: Text(data[index]),
                    );
                  },
                ),
              ),

              // ==================================================
              // LISTVIEW.SEPARATED
              // List dengan garis pembatas
              // ==================================================
              const Text(
                "5. ListView.separated",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(
                height: 200,

                child: ListView.separated(

                  itemCount: data.length,

                  // Garis pemisah antar item
                  separatorBuilder: (context, index) =>
                      const Divider(color: Colors.black),

                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(data[index]),
                    );
                  },
                ),
              ),

              // ==================================================
              // STACK
              // Widget bertumpuk
              // ==================================================
              const Text(
                "6. Stack",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              Center(
                child: Stack(

                  // Posisi widget di tengah
                  alignment: Alignment.center,

                  children: [

                    // Kotak merah
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.red,
                    ),

                    // Kotak kuning di atas kotak merah
                    Container(
                      width: 120,
                      height: 120,
                      color: Colors.yellow,
                    ),

                    // Text di lapisan paling atas
                    const Text(
                      "STACK",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}