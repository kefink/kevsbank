import 'package:flutter/material.dart';

void main() {
  runApp(const KevsBankApp());
}

class KevsBankApp extends StatelessWidget {
  const KevsBankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KevsBank',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.blueGrey[900],
      ),
      home: const KevsBankHomePage(),
    );
  }
}

class KevsBankHomePage extends StatelessWidget {
  const KevsBankHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KevsBank'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to KevsBank!',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Welcome to KevsBank!')),
                );
              },
              child: const Text('Click Me'),
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png',
              width: 200,
              height: 200,
              errorBuilder: (context, error, stackTrace) {
                return const Text('your banking haven',
                    style: TextStyle(color: Colors.white));
              },
            ),
          ],cle
        ),
      ),
    );
  }
}
