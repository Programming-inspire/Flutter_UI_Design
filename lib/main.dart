import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 7, 236, 236),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome',
                style: TextStyle(
                    color: Color.fromARGB(179, 0, 0, 0),
                    fontSize: 35,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 20.0),
            Image.asset('images/login.gif'),
            const SizedBox(height: 20.0),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const HomePage();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue,
                    minimumSize: const Size(300, 40)),
                child: const Text('Login')),
            const SizedBox(height: 20.0),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue,
                    minimumSize: const Size(300, 40)),
                child: const Text('Register'))
          ],
        ));
  }
}
