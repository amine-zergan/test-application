// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    this.env,
  }) : super(key: key);
  final String? env;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "$env",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      // ignore: sized_box_for_whitespace
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              child: Image.asset(
                "assets/background.jpeg",
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                child: ListView(
                  children: [
                    Center(
                      child: Text(
                        "Blur effect in dart sdk",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                    const Card(
                      elevation: 10,
                      color: Color(0xAEDEEBEF),
                      margin: EdgeInsets.all(
                        50,
                      ),
                      child: FlutterLogo(
                        size: 300,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
