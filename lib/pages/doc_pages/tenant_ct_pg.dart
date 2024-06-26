import 'package:flutter/material.dart';
import 'package:date_field/date_field.dart';
import 'package:intl/intl.dart';

class TenantCtPage extends StatefulWidget {
  const TenantCtPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TenantCtPageState createState() => _TenantCtPageState();
}

class _TenantCtPageState extends State<TenantCtPage> {
  List<TextEditingController> textControllers = List.generate(19, (index) => TextEditingController());
  List<String> labelList = [
    '#Contrato',
    'Apto',
    'Conjunto',
    '#Cuarto util',
    '#Parqueo',
    'Direccion',
    'Precio',
    'Seguro',
    'Duracion',
    'Fecha de inicio',
    'Fecha finalizacion',
    'Nombre del arrendatario',
    'Id del arrendatario',
    'Celular arrendatario',
    'Correo arrendatario',
    'Nombre codeudor',
    'Id codeudor',
    'Celular codeudor',
    'Correo codeudor',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tenant Information'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // First set of text fields
              for (int i = 0; i < 9; i++)
                TextField(
                  controller: textControllers[i],
                  decoration: InputDecoration(
                    labelText: labelList[i],
                  ),
                ),
              const SizedBox(height: 16.0),
              // First DateTimeFormField
              DateTimeFormField(
                decoration: const InputDecoration(
                  labelText: 'Fecha de inicio',
                ), 
                dateFormat: DateFormat().add_d().add_MMMM().add_y(),
                onChanged: (DateTime? value) { 
                  setState(() {
                    textControllers[9].text = value.toString();
                  });
                 },
                mode: DateTimeFieldPickerMode.date,
              ),
              const SizedBox(height: 16.0),
              // Second DateTimeFormField
              DateTimeFormField(
                decoration: const InputDecoration(
                  labelText: 'Fecha finalizacion',
                ), 
                dateFormat: DateFormat().add_d().add_MMMM().add_y(),
                onChanged: (DateTime? value) { 
                  setState(() {
                    textControllers[10].text = value.toString();
                  });
                 },
                mode: DateTimeFieldPickerMode.date,
              ),
              const SizedBox(height: 16.0),
              // Second set of text fields
              for (int i = 9; i < 17; i++)
                TextField(
                  controller: textControllers[i+2],
                  decoration: InputDecoration(
                    labelText: labelList[i+2],
                  ),
                ),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              print('Generar solo contrato');
            },
            child: const Icon(Icons.book),
          ),
          const SizedBox(width: 16.0),
          FloatingActionButton(
            onPressed: () {
              print('Generar contrato y carta');
            },
            child: const Icon(Icons.edit_document),
          ),
        ],
      ),
    );
  }
}