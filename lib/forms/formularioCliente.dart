import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FormCliente extends StatelessWidget {
  FormCliente({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController id = TextEditingController();
    final TextEditingController nombre = TextEditingController();
    final TextEditingController numeroTelefonico = TextEditingController();
    final TextEditingController nombreDeLaMascota = TextEditingController();
    final TextEditingController numeroDeRespaldo = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,
        title: const Text(
          "Formulario Cliente",
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
              Text("numero Telefonico"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: numeroTelefonico,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "numero Telefonico"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("nombre De La Mascota"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: nombreDeLaMascota,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "nombre De La Mascota"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("numero De Respaldo"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: numeroDeRespaldo,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "numero De Respaldo"),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    print(id.text);
                    print(nombre.text);
                    print(numeroTelefonico.text);
                    print(nombreDeLaMascota.text);
                    print(numeroDeRespaldo.text);
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
