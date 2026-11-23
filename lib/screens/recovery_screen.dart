
import 'package:flutter/material.dart';

class RecoveryScreen extends StatelessWidget {
  const RecoveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Відновлення пароля'),
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
              ),

              const SizedBox(height: 25),

              const Text(
                'Забули пароль?',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                'Введіть свою електронну пошту, '
                    'щоб розпочати процедуру відновлення пароля.',
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Електронна пошта',
                  prefixIcon: Icon(Icons.email),
                ),
              ),

              const SizedBox(height: 25),

              ElevatedButton(
                onPressed: () {},
                child: const Text('Відновити пароль'),
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
      ),
    );
  }
}
