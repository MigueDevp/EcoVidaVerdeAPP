import 'package:flutter/material.dart';
import 'pages/acerca_page.dart';
import 'pages/jardin_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EcoVidaVerde',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        scaffoldBackgroundColor: Colors
            .white, // Establece el color de fondo predeterminado del scaffold
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.black, // Establece el color de texto predeterminado
            fontFamily: 'Roboto', // Establece la fuente de texto predeterminada
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Establecer el fondo en blanco
      appBar: AppBar(
        backgroundColor: const Color(0xFF8eff95),
        elevation: 0,
        title: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              // Reemplace la pantalla actual por la HomePage
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
          child: Image.asset(
            'assets/titulo.jpg',
            fit: BoxFit.contain,
            height: 200,
          ),
        ),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 230), // Espacio entre el logo y los botones
            Container(
              width: 300,
              height: 60, // Ancho específico para los botones
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TuJardin()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF8eff95), // Color de fondo blanco
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(18), // Bordes redondeados
                    side: const BorderSide(
                        color: Colors.green, width: 1), // Borde verde
                  ),
                ),
                child: Text(
                  'MI JARDíN',
                  style: TextStyle(
                    color: Colors.black,
                    // Color del texto negro
                    fontSize: 14, // Tamaño de la fuente
                  ),
                ),
              ),
            ),
            const SizedBox(height: 23), // Espacio entre los botones
            Container(
              width: 300,
              height: 60, // Ancho específico para los botones
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AcercaDe()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.resolveWith<Color>((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return const Color(
                          0xFF8eff95); // Cambiar color al presionar
                    }
                    return const Color(
                        0xFF8eff95); // Color de fondo blanco por defecto
                  }),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(18), // Bordes redondeados
                      side: const BorderSide(
                          color: Colors.green, width: 1), // Borde verde
                    ),
                  ),
                ),
                child: Text(
                  'ACERCA',
                  style: TextStyle(
                    color: Colors.black, // Color del texto negro
                    fontSize: 14, // Tamaño de la fuente
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white, // Establece el color de fondo del drawer
          child: Column(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: Image.asset(
                  'assets/verde.jpg',
                  fit: BoxFit.contain,
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    ListTile(
                      title: const Text(
                        'Mi Jardín',
                        style: TextStyle(
                            color: Colors.black), // Establece el color de texto
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TuJardin()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text(
                        'Acerca',
                        style: TextStyle(
                            color: Colors.black), // Establece el color de texto
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AcercaDe()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
