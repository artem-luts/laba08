
import 'package:flutter/material.dart';
import 'registration_screen.dart';
import 'recovery_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Авторизація'),
      ),

      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),

          child: Column(
            children: [
              Image.asset(
                'assets/images/image.png',
                height: 150,
                width: 150,
                fit: BoxFit.contain,
              ),

              const SizedBox(height: 25),

              const Text(
                'Вітаємо!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Увійдіть до свого облікового запису',
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              const TextField(
                decoration: InputDecoration(
                  labelText: 'Логін',
                  prefixIcon: Icon(Icons.person),
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
                child: const Text('Увійти'),
              ),

              const SizedBox(height: 10),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const RecoveryScreen(),
                    ),
                  );
                },
                child: const Text('Забули пароль?'),
              ),

              const SizedBox(height: 10),

              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const RegistrationScreen(),
                    ),
                  );
                },
                child: const Text('Створити обліковий запис'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
