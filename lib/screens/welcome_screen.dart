import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 2),
              ),
              child: Image.asset(
                'assets/gambarwelcomescreen.jpg',
                 fit: BoxFit.cover,
                 ),
            ),
            const SizedBox(height: 20),

             const Text(
              'Open Source Coding',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black, 
              ),
            ),
            const SizedBox(height: 10),

             const Text(
              'Selamat datang Kembali Celvin ke course open source coding silahkan pilih cara untuk Login',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            const SizedBox(height: 40),
            
        

