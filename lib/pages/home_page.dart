import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_qr/pages/direcciones_page.dart';
import 'package:flutter_qr/pages/mapas_page.dart';
import 'package:flutter_qr/providers/ui_provider.dart';
import 'package:flutter_qr/widgets/custom_navigatorbar.dart';
import 'package:flutter_qr/widgets/scan_button.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Historial'),
        actions: [
          IconButton(icon: Icon(Icons.delete_forever), onPressed: () {})
        ],
      ),
      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigatorBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;
    switch (currentIndex) {
      case 0:
        return MapasPage();
      case 1:
        return DireccionesPage();
        break;
      default:
        return MapasPage();
    }
  }
}
