import 'package:flutter/material.dart';
import 'package:flutter_qr/pages/home_page.dart';
import 'package:flutter_qr/pages/mapa_page.dart';
import 'package:flutter_qr/providers/ui_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(  
      providers: [ChangeNotifierProvider(create: (_) => UiProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Lector de QR',
        initialRoute: 'home',
        routes: {
          'home': (_) => HomePage(),
          'mapa': (_) => MapaPage(),
        },
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.deepPurple),
        ),
      ),
    );
  }
}
