import 'package:flutter/material.dart';
import 'package:date_field/date_field.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/date_symbol_data_local.dart';

class TenantCtPage extends StatefulWidget {
  const TenantCtPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TenantCtPageState createState() => _TenantCtPageState();
}

class _TenantCtPageState extends State<TenantCtPage> {
  List<TextEditingController> textControllers = List.generate(21, (index) => TextEditingController());
  List<String> labelList = [
    '#Contrato',
    'Version',
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
              for (int i = 0; i < 10; i++)
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
                dateFormat: DateFormat.yMMMMEEEEd('es_MX'),
                onChanged: (DateTime? value) { 
                  setState(() {
                    textControllers[10].text = DateFormat.yMMMMEEEEd('es_MX').format(value!);
                    textControllers[20].text = value.day.toString();
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
                dateFormat: DateFormat.yMMMMEEEEd('es_MX'),
                onChanged: (DateTime? value) { 
                  setState(() {
                    textControllers[11].text = DateFormat.yMMMMEEEEd('es_MX').format(value!);
                  });
                 },
                mode: DateTimeFieldPickerMode.date,
              ),
              const SizedBox(height: 16.0),
              // Second set of text fields
              for (int i = 10; i < 18; i++)
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
              fetchData().then((documentBytes) {
                if (documentBytes != null) {
                showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Contrato generado exitosamente'),
                        content: const Text('El contrato ha sido generado exitosamente.'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                }else{
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Error al generar contrato'),
                        content: const Text('Ha ocurrido un error al generar el contrato.'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                }
              }
            );
            },
            child: const Icon(Icons.book),
          ),
          const SizedBox(width: 16.0),
          FloatingActionButton(
            onPressed: () {
              print('Generar contrato y carta');
              print(textControllers.map((controller) => controller.text).toList());
            },
            child: const Icon(Icons.edit_document),
          ),
        ],
      ),
    );
  }
  Future<Object?> fetchData() async {
      try {
        final response = await http.post(
          Uri.parse('http://10.0.2.2:5176/contracts/tenant'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(<String, String>{
            "id": textControllers[0].text,
            "version": textControllers[1].text,
            "flat": textControllers[2].text,
            "complex": textControllers[3].text,
            "utilityRoom": textControllers[4].text,
            "garage": textControllers[5].text,
            "address": textControllers[6].text,
            "price": textControllers[7].text,
            "insurance": textControllers[8].text,
            "duration": textControllers[9].text,
            "startDate": textControllers[10].text,
            "endDate": textControllers[11].text,
            "tenantName": textControllers[12].text,
            "tenantId": textControllers[13].text,
            "tenantPhone": textControllers[14].text,
            "tenantEmail": textControllers[15].text,
            "codebtorName": textControllers[16].text,
            "codebtorId": textControllers[17].text,
            "codebtorPhone": textControllers[18].text,
            "codebtorEmail": textControllers[19].text,
            "payDay": textControllers[20].text,
          }),);
        if (response.statusCode == 200) {
          // Handle successful response
          /// Retrieves the document from the response body.
          final documentBytes = response.bodyBytes;
          return documentBytes;
        } else {
          // Handle error response
          print('Request failed with status: ${response.statusCode}');
          return null;
        }
      } catch (e) {
        // Handle network error
        print('Error: $e');
        return null;
      }
    }

    @override
    void initState() {
      super.initState();
      fetchData();
    }
}
