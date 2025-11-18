import 'package:flutter/material.dart';

class Homesc extends StatefulWidget {
  const Homesc({super.key});

  @override
  State<Homesc> createState() => _HomescState();
}

class _HomescState extends State<Homesc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
    );
  }
}
