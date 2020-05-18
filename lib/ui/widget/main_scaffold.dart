import 'package:flutter/material.dart';
import 'package:scratch_flutter/ui/page/home_page.dart';
import 'package:scratch_flutter/ui/widget/drawer/app_drawer.dart';

class MainScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scratch在线教学平台"),
      ),
      body: HomePage(),
      drawer: AppDrawer(),
    );
  }
}
