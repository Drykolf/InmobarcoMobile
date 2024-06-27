import 'package:flutter/material.dart';
import 'package:inmobarcomobile/pages/doc_pages/tenant_ct_pg.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:intl/intl_standalone.dart' if (dart.library.html) 'package:intl/intl_browser.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await findSystemLocale();
  initializeDateFormatting('es_MX', null).then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Quicksand',
        primarySwatch: Colors.blue),
      home: const TenantCtPage()
    );
  }
}