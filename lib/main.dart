import 'package:flutter/material.dart';

void main() {
  runApp(PetsApp());
}

class PetsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PerrApp',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Pet> pets = [
    Pet(
      name: 'Bobby',
      species: 'Perro',
      age: 3,
      image: 'assets/macota1.jpeg',
      description: 'Bobby es un perro amigable y juguetón.',
    ),
    Pet(
      name: 'Rocky',
      species: 'Perro',
      age: 4,
      image: 'assets/macota1.jpeg',
      description: 'Rocky es un perro enérgico y protector.',
    ),
    Pet(
      name: 'Max',
      species: 'Perro',
      age: 5,
      image: 'assets/macota1.jpeg',
      description: 'Max es un perro leal y obediente.',
    ),
    Pet(
      name: 'Charlie',
      species: 'Perro',
      age: 2,
      image: 'assets/macota1.jpeg',
      description: 'Charlie es un perro cariñoso y amigable.',
    ),
    Pet(
      name: 'Duke',
      species: 'Perro',
      age: 6,
      image: 'assets/macota1.jpeg',
      description: 'Duke es un perro valiente y enérgico.',
    ),
    Pet(
      name: 'Coco',
      species: 'Perro',
      age: 3,
      image: 'assets/macota1.jpeg',
      description: 'Coco es un perro inteligente y leal.',
    ),
    Pet(
      name: 'Lola',
      species: 'Perro',
      age: 1,
      image: 'assets/macota1.jpeg',
      description: 'Lola es una cachorra juguetona y curiosa.',
    ),
    Pet(
      name: 'Rocko',
      species: 'Perro',
      age: 4,
      image: 'assets/macota1.jpeg',
      description: 'Rocko es un perro activo y cariñoso.',
    ),
    Pet(
      name: 'Milo',
      species: 'Perro',
      age: 2,
      image: 'assets/macota1.jpeg',
      description: 'Milo es un perro amigable y sociable.',
    ),
    Pet(
      name: 'Luna',
      species: 'Perro',
      age: 3,
      image: 'assets/macota1.jpeg',
      description: 'Luna es una perrita inteligente y juguetona.',
    ),
  ];

  void _showAlert(BuildContext context, Pet pet) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Detalles de ${pet.name}'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(pet.image),
              SizedBox(height: 10),
              Text('Especie: ${pet.species}'),
              SizedBox(height: 10),
              Text('Edad: ${pet.age} años'),
              SizedBox(height: 10),
              Text('Descripción:'),
              Text(pet.description),
            ],
                      ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cerrar'),
            ),
            TextButton(
              onPressed: () {
                // Lógica para aceptar la alerta
                Navigator.of(context).pop();
                // Realizar acciones adicionales aquí
              },
              child: Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PerrApp'),
      ),
      body: ListView.builder(
        itemCount: pets.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(pets[index].image),
            ),
            title: Text(pets[index].name),
            subtitle: Text(pets[index].species),
            onTap: () {
              _showAlert(context, pets[index]);
            },
          );
        },
      ),
    );
  }
}

class Pet {
  final String name;
  final String species;
  final int age;
  final String image;
  final String description;

  Pet({
    required this.name,
    required this.species,
    required this.age,
    required this.image,
    required this.description,
  });
}

