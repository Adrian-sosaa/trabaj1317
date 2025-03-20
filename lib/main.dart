import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Jan Sosa'),
        ),
        body: Center(
          child: BallCard(
            nombre: 'Balón de Fútbol Profesional',
            perimetro: '68-70 cm',
            marca: 'Adidas',
            calidad: 'Alta',
            precio: '\$49.99',
            color: Colors.blue[100]!,
          ),
        ),
      ),
    );
  }
}

class BallCard extends StatelessWidget {
  final String nombre;
  final String perimetro;
  final String marca;
  final String calidad;
  final String precio;
  final Color color;

  BallCard({
    required this.nombre,
    required this.perimetro,
    required this.marca,
    required this.calidad,
    required this.precio,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Eliminado el margen fijo
      constraints: BoxConstraints(
        // Agregado constraints para controlar el tamaño
        maxWidth: 300.0, // Ancho máximo del recuadro
        maxHeight: 200.0, // Alto máximo del recuadro
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.grey[400]!),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize:
              MainAxisSize.min, // Ajustar el tamaño de la columna al contenido
          children: [
            Text(
              nombre,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Text('Perímetro: '),
                Text(perimetro),
              ],
            ),
            Row(
              children: [
                Text('Marca: '),
                Text(marca),
              ],
            ),
            Row(
              children: [
                Text('Calidad: '),
                Text(calidad),
              ],
            ),
            Row(
              children: [
                Text('Precio: '),
                Text(precio),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
