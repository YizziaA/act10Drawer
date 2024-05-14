import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FormServicio extends StatelessWidget {
  FormServicio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController idMascota = TextEditingController();
    final TextEditingController tipoDeServicio = TextEditingController();
    final TextEditingController descripcion = TextEditingController();
    final TextEditingController precio = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,
        title: const Text(
          "Formulario Servicio",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              Text("idMascota"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: idMascota,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "idMascota"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("tipoDeServicio"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: tipoDeServicio,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "tipoDeServicio"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("descripcion"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: descripcion,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "descripcion"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Precio"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: precio,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Precio"),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    print(idMascota.text);
                    print(tipoDeServicio.text);
                    print(descripcion.text);

                    print(precio.text);
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
