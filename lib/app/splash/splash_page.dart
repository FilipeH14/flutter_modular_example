import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('splash page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: const Text('Categoria Module'),
              onPressed: () {
                // Navigator.pushNamed(context, '/categoria');
                Modular.to.pushNamed('/categoria', arguments: 'categoria selecionada @@@');
              },
            ),
          ],
        ),
      ),
    );
  }
}
