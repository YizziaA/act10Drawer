import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TabProductos extends StatelessWidget {
  TabProductos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,
        title: const Text(
          "Tabla Productos",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        height: 150,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 1,
            itemBuilder: (context, count) {
              return _createDataTable();
            }),
      ),
    );
  }

  //
  DataTable _createDataTable() {
    return DataTable(columns: _createColumns(), rows: _createRows());
  }

  List<DataColumn> _createColumns() {
    return [
      DataColumn(label: Text("id")),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text("NombreDelProducto")),
      ]),
      DataRow(cells: [
        DataCell(Text("Descripción")),
      ]),
      DataRow(cells: [
        DataCell(Text("Categoria")),
      ]),
      DataRow(cells: [
        DataCell(Text("Imagen")),
      ]),
      DataRow(cells: [
        DataCell(Text("Precio")),
      ])
    ];
  }
}
