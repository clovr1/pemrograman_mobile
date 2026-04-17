import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laporan Praktikum',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const CombinedHomePage(),
    );
  }
}

class CombinedHomePage extends StatelessWidget {
  const CombinedHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Praktikum Dasar Widget"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),

            const Text(
              "--- MyImageWidget ---",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const MyImageWidget(),

            const Divider(),

            const Text(
              "--- MyTextWidget ---",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const MyTextWidget(),

            const Divider(),

            const Text(
              "--- LoadingCupertino ---",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  CupertinoButton(
                    child: const Text("Contoh button"),
                    onPressed: () {},
                  ),
                  const CupertinoActivityIndicator(),
                ],
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: const Icon(Icons.thumb_up),
      ),
    );
  }
}

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 150,
      child: Image(image: AssetImage("logo_polinema.jpg")),
    );
  }
}

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        "Nama saya Keenan Aryasatya, sedang belajar Pemrograman Mobile",
        style: TextStyle(color: Colors.red, fontSize: 14),
        textAlign: TextAlign.center,
      ),
    );
  }
}
