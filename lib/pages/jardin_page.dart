import 'package:flutter/material.dart';
import 'package:ecovidaverde/main.dart';

class TuJardin extends StatelessWidget {
  const TuJardin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8eff95),
      appBar: AppBar(
        title: Text(
          'Monitoreo en tiempo real',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            fontSize: 30
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF8eff95),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 50.0,
          mainAxisSpacing: 50.0,
          children: [
            _buildBox('Humedad en planta:', 'ALTO', _getColor('ALTO')),
            _buildBox('Humedad en planta:', 'ALTO', _getColor('ALTO')),
            _buildBox('Humedad en planta:', 'ALTO', _getColor('ALTO')),
            _buildBox('Humedad en planta:', 'MEDIO', _getColor('MEDIO')),
            _buildBox('Humedad en planta:', 'BAJO', _getColor('BAJO')),
            _buildBox('Humedad en planta:', 'ALTO', _getColor('ALTO')),
          ],
          
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        },
        backgroundColor: Colors.green,
        child: Icon(Icons.arrow_back),
      ),
    );
  }

  Color _getColor(String humidityLevel) {
    switch (humidityLevel) {
      case 'BAJO':
        return Color.fromARGB(255, 255, 17, 0);
      case 'MEDIO':
        return Color.fromARGB(255, 242, 255, 0);
      case 'ALTO':
        return const Color.fromARGB(255, 0, 255, 8);
      default:
        return Colors.grey;
    }
  }

  Widget _buildBox(String title, String value, Color color) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontFamily: 'Roboto',
              ),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontFamily: 'Roboto',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: TuJardin(),
    theme: ThemeData(
      primarySwatch: Colors.green,
      scaffoldBackgroundColor: const Color(0xFF8eff95),
      appBarTheme: AppBarTheme(
        backgroundColor: const Color(0xFF8eff95),
        iconTheme: IconThemeData(color: Colors.black),
      ),
    ),
  ));
}