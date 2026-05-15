import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      appBar: AppBar(
        title: const Text("Praktikum Flutter"),
        backgroundColor: Colors.blue,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

             
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
                margin: const EdgeInsets.only(top: 10, bottom: 20),
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

              
              const Text(
                "2. GridView",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
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
                    ListTile(title: Text("A")),
                    ListTile(title: Text("B")),
                    ListTile(title: Text("C")),
                  ],
                ),
              ),

              
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
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(Icons.code),
                      title: Text(data[index]),
                    );
                  },
                ),
              ),

              
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
                  separatorBuilder: (context, index) =>
                      const Divider(color: Colors.black),

                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(data[index]),
                    );
                  },
                ),
              ),

             
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
                  alignment: Alignment.center,
                  children: [

                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.red,
                    ),

                    Container(
                      width: 120,
                      height: 120,
                      color: Colors.yellow,
                    ),

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