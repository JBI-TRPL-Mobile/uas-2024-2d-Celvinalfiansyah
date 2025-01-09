import 'package:flutter/material.dart';
import 'sign_in_screen.dart';
import 'sign_up_screen.dart';

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

             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Tombol Sign In
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignInScreen()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.grey[300], 
                    side: const BorderSide(color: Colors.black, width: 2), 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, 
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                  ),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(color: Colors.black), 
                  ),
                ),
                const SizedBox(width: 16),

                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUpScreen()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.grey[300], 
                    side: const BorderSide(color: Colors.black, width: 2), 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, 
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.black), 
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


            
        

