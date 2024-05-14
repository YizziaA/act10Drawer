import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TabRecetas extends StatelessWidget {
  TabRecetas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,
        title: const Text(
          "Tabla Recetas",
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
      DataColumn(label: Text("idRecetas")),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text("idMascotas")),
      ]),
      DataRow(cells: [
        DataCell(Text("idClientes")),
      ]),
      DataRow(cells: [
        DataCell(Text("fecha")),
      ]),
      DataRow(cells: [
        DataCell(Text("medicamento")),
      ]),
      DataRow(cells: [
        DataCell(Text("doctor")),
      ]),
      DataRow(cells: [
        DataCell(Text("alergias")),
      ]),
      DataRow(cells: [
        DataCell(Text("antecedentes")),
      ]),
      DataRow(cells: [
        DataCell(Text("vacunas")),
      ]),
      DataRow(cells: [
        DataCell(Text("precio")),
      ]),
    ];
  }
}
