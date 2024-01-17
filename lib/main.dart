import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: const Text(
              '🛍️ List of fruits',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
          ),
          body: Center(
            child: RichText(
              text: TextSpan(
                children: [
                    mywidget(text: '🍎 Apple\n',c1: Colors.red),
                    mywidget(text: '🍇 Greps\n',c1: Colors.purpleAccent),
                    mywidget(text: '🍒 Cherry\n',c1: Colors.purple),
                    mywidget(text: '🍓 Strawberry\n',c1: Colors.red),
                    mywidget(text: '🥭 Mango\n',c1: Colors.orange),
                    mywidget(text: '🍍 Pineapple\n',c1: Colors.green),
                    mywidget(text: '🍋 Lemon\n',c1: Colors.yellow),
                    mywidget(text: '🍉 Watermelon\n',c1: Colors.lightGreen),
                    mywidget(text: '🥥 Coconut',c1: Colors.brown),
                  ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}

TextSpan mywidget({required text, c1, double? font,}) {
  return TextSpan(
    text: "$text",
    style: TextStyle(
      color: c1,
      fontSize: 35,
      fontWeight: FontWeight.bold,
      letterSpacing: 2,
      height: 1.5,
    )
  );
}
