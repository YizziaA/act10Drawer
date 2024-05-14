import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:monje0509/forms/formularioProductos.dart';
import 'package:monje0509/forms/formularioRecetas.dart';
import 'package:monje0509/forms/formularioCliente.dart';
import 'package:monje0509/forms/formularioServicio.dart';
import 'package:monje0509/forms/formulariomascota.dart';

//Tablas
import 'package:monje0509/tablas/tabProductos.dart';
import 'package:monje0509/tablas/tabRecetas.dart';
import 'package:monje0509/tablas/tabServicio.dart';
import 'package:monje0509/tablas/tabCliente.dart';
import 'package:monje0509/tablas/tabMascotas.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'veterinaria Monge 0509',
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'Veterinaria Monge 0509'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Formularios",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Gap(20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FormProductos()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    child: const Text("Form Producto",
                        style: TextStyle(color: Colors.white)),
                  ),
                  const Gap(10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FormRecetas()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    child: const Text("Form Receta",
                        style: TextStyle(color: Colors.white)),
                  ),
                  const Gap(10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FormServicio()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    child: const Text("Form Servicio",
                        style: TextStyle(color: Colors.white)),
                  ),
                  const Gap(10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FormCliente()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    child: const Text("Form Cliente",
                        style: TextStyle(color: Colors.white)),
                  ),
                  const Gap(10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FormMascota()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    child: const Text("Form Mascotas",
                        style: TextStyle(color: Colors.white)),
                  ),
                  const Gap(10),
                ],
              ),
              //Tablas
              Gap(10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Tablas",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Gap(20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TabProductos()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    child: const Text("Tabla Productos",
                        style: TextStyle(color: Colors.white)),
                  ),
                  const Gap(10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TabRecetas()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    child: const Text("Tabla Recetas",
                        style: TextStyle(color: Colors.white)),
                  ),
                  const Gap(10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TabServicio()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    child: const Text("Tabla Servicio",
                        style: TextStyle(color: Colors.white)),
                  ),
                  const Gap(10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TabCliente()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    child: const Text("Tabla Cliente",
                        style: TextStyle(color: Colors.white)),
                  ),
                  const Gap(10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TabMascotas()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    child: const Text("Tabla Mascotas",
                        style: TextStyle(color: Colors.white)),
                  ),
                  const Gap(10),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
