import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FormRecetas extends StatelessWidget {
  FormRecetas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController idReceta = TextEditingController();
    final TextEditingController idMascota = TextEditingController();
    final TextEditingController idCliente = TextEditingController();
    final TextEditingController fecha = TextEditingController();
    final TextEditingController medicamento = TextEditingController();
    final TextEditingController doctor = TextEditingController();

    final TextEditingController alergias = TextEditingController();
    final TextEditingController antecedentes = TextEditingController();
    final TextEditingController vacunas = TextEditingController();
    final TextEditingController precio = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,
        title: const Text(
          "Formulario Producto",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              Text("idReceta"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: idReceta,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "idReceta"),
              ),
              SizedBox(
                height: 10,
              ),
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
              Text("idCliente"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: idCliente,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "idCliente"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("fecha"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: fecha,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "fecha"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("medicamento"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: medicamento,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "medicamento"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("doctor"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: doctor,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "doctor"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("alergias"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: alergias,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "alergias"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("antecedentes"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: antecedentes,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "antecedentes"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("vacunas"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: vacunas,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "vacunas"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("precio"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: precio,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "precio"),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    print(idReceta.text);
                    print(idMascota.text);
                    print(idCliente.text);
                    print(fecha.text);
                    print(medicamento.text);

                    print(doctor.text);
                    print(alergias.text);
                    print(antecedentes.text);
                    print(vacunas.text);

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
