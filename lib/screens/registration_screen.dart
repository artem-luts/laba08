
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Реєстрація'),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),

        child: Column(
          children: [
            Image.asset(
              'assets/images/image.png',
              height: 130,
              width: 130,
            ),

            const SizedBox(height: 20),

            const Text(
              'Створення акаунту',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            const TextField(
              decoration: InputDecoration(
                labelText: 'Ім’я користувача',
                prefixIcon: Icon(Icons.person),
              ),
            ),

            const SizedBox(height: 20),

            const TextField(
              decoration: InputDecoration(
                labelText: 'Логін',
                prefixIcon: Icon(Icons.account_circle),
              ),
            ),

            const SizedBox(height: 20),

            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Пароль',
                prefixIcon: Icon(Icons.lock),
              ),
            ),

            const SizedBox(height: 25),

            ElevatedButton(
              onPressed: () {},
              child: const Text('Зареєструватися'),
            ),

            const SizedBox(height: 15),

            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Повернутися до авторизації',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
