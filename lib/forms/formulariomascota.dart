import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FormMascota extends StatelessWidget {
  FormMascota({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController id = TextEditingController();
    final TextEditingController nombre = TextEditingController();
    final TextEditingController especie = TextEditingController();
    final TextEditingController raza = TextEditingController();
    final TextEditingController fechaDeNacimiento = TextEditingController();
    final TextEditingController color = TextEditingController();
    final TextEditingController tamano = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,
        title: const Text(
          "Formulario Mascota",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              Text("Id"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: id,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Id"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("nombre"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: nombre,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "nombre"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("especie"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: especie,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "especie"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("raza"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: raza,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "raza"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Fecha De Nacimiento"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: fechaDeNacimiento,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Fecha De Nacimiento"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("color"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: color,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "color"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Tamaño"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: tamano,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Tamaño"),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    print(id.text);
                    print(nombre.text);
                    print(especie.text);
                    print(raza.text);
                    print(fechaDeNacimiento.text);
                    print(color.text);
                    print(tamano.text);
                  },
                  child: Text(
                    "Registrar",
                    style: TextStyle(fontSize: 20),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
