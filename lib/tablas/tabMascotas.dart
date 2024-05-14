import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TabMascotas extends StatelessWidget {
  TabMascotas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,
        title: const Text(
          "Tabla Mascotas",
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
        DataCell(Text("nombre")),
      ]),
      DataRow(cells: [
        DataCell(Text("especie")),
      ]),
      DataRow(cells: [
        DataCell(Text("raza")),
      ]),
      DataRow(cells: [
        DataCell(Text("fechaDeNacimiento")),
      ]),
      DataRow(cells: [
        DataCell(Text("color")),
      ]),
      DataRow(cells: [
        DataCell(Text("tamaño")),
      ]),
    ];
  }
}
