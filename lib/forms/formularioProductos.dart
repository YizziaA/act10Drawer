import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FormProductos extends StatelessWidget {
  FormProductos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController id = TextEditingController();
    final TextEditingController nombreDelProducto = TextEditingController();
    final TextEditingController descripcion = TextEditingController();
    final TextEditingController categoria = TextEditingController();
    final TextEditingController imagen = TextEditingController();
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
              Text("Nombre Del Producto"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: nombreDelProducto,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Nombre Del Producto"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Descripcion"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: descripcion,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Descripcion"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Categoria"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: categoria,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Categoria"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Imagen"),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: imagen,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Imagen"),
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
                    print(id.text);
                    print(nombreDelProducto.text);
                    print(descripcion.text);
                    print(categoria.text);
                    print(imagen.text);
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
