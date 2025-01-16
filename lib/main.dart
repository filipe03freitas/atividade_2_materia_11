/*import 'package:flutter/material.dart';

void main() {
  runApp(const MinhaClasse());
}

class MinhaClasse extends StatelessWidget {
  const MinhaClasse({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MinhaPrimeiraPagina(titulo: 'Meu Primeiro Programa'),
    );
  }
}

class MinhaPrimeiraPagina extends StatefulWidget {
  final String titulo;

  const MinhaPrimeiraPagina({super.key, required this.titulo});

  @override
  State<MinhaPrimeiraPagina> createState() => _MinhaPrimeiraPaginaState();
}

class _MinhaPrimeiraPaginaState extends State<MinhaPrimeiraPagina> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.titulo),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

*/
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Responsivo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ResponsiveHomePage(),
    );
  }
}

class ResponsiveHomePage extends StatefulWidget {
  @override
  _ResponsiveHomePageState createState() => _ResponsiveHomePageState();
}

class _ResponsiveHomePageState extends State<ResponsiveHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Responsividade: Ajusta layout com base no tamanho da tela
    final isMobile = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Web Responsivo'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Contador:',
                style: TextStyle(fontSize: isMobile ? 20 : 28),
              ),
              Text(
                '$_counter',
                style: TextStyle(
                  fontSize: isMobile ? 40 : 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              // Botões organizados responsivamente
              Flex(
                direction: isMobile ? Axis.vertical : Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _incrementCounter,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 32),
                      backgroundColor: Colors.green, // Cor verde
                      foregroundColor: Colors.black, // Texto preto
                    ),
                    child: Text(
                      '+ Incrementar',
                      style: TextStyle(fontSize: isMobile ? 16 : 20),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _decrementCounter,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 32),
                      backgroundColor: Colors.red, // Cor vermelha
                      foregroundColor: Colors.black, // Texto preto
                    ),
                    child: Text(
                      '- Decrementar',
                      style: TextStyle(fontSize: isMobile ? 16 : 20),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
