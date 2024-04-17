import 'package:flutter/material.dart';
import 'package:ecovidaverde/main.dart';

class AcercaDe extends StatelessWidget {
  const AcercaDe({Key? key}) : super(key: key);

  // Color constante para los contenedores
  static const Color containerColor = Color.fromARGB(255, 224, 221, 221);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: const Color(0xFF8eff95),
        elevation: 0,
        title: Text(
          'Acerca',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 255, 255, 255),
            ],
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.0),
              _buildColoredContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Acerca de nosotros',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'RobotoMono',
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'En EcoVidaVerde creemos que el futuro de la agricultura radica en la armonía entre la tecnología y el medio ambiente. Nuestra visión es crear un mundo donde la tecnología IoT no solo mejore la eficiencia de la agricultura sino que también proteja y preserve la biodiversidad de nuestro planeta.',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'RobotoMono',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              _buildColoredContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Visión',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'RobotoMono',
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Aspiramos a ser pioneros en la implementación de soluciones tecnológicas avanzadas en el sector agrícola. Nuestro objetivo es expandir nuestro impacto más allá de las fronteras, contribuyendo al desarrollo de comunidades autosuficientes y en armonía con el medio ambiente.',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              _buildColoredContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Objetivos',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'RobotoMono',
                          color: Colors.black,
                          
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Automatización Avanzada: Implementar algoritmos de aprendizaje automático para predecir las necesidades hídricas de las plantas y ajustar el riego automáticamente.\nIntegración de Datos: Asegurar que la plataforma pueda integrarse con otras bases de datos o sistemas para ampliar su funcionalidad.\nSeguridad de Datos: Implementar medidas de seguridad robustas para proteger la información recopilada por los sensores IoT.\nSoporte Técnico: Ofrecer soporte técnico para resolver cualquier problema que surja con el sistema de monitoreo.',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              _buildColoredContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Equipo de Desarrollo',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'RobotoMono',
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Miguel Angel Ramírez Ramírez\nGiovani Alberto Villagran Valdes\nAngel Guillermo Vanegas Bernal\nMarco Antonio Nieto Arellano\nCarlos Bocanegra Trejo',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'RobotoMono',
                        color: Colors.black,
                      ),
                    ),
                    
                  ],
                ),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          ); // Redirige a HomePage()
        },
        backgroundColor: const Color(0xFF8eff95), // Color de fondo del botón
        child: Icon(Icons.arrow_back), // Ícono de flecha hacia atrás
      ),
    );
  }

  // Función para construir un contenedor coloreado con bordes curvos
  Widget _buildColoredContainer({required Widget child}) {
    return Container(
      width: double.infinity, // Ancho máximo
      decoration: BoxDecoration(
        color: containerColor, // Color de fondo
        borderRadius: BorderRadius.circular(14.0), // Bordes curvos
      ),
      padding: EdgeInsets.all(35.0),
      child: child,
    );
  }
}
