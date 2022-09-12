import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: ListView(
          children: [
            for (int i = 0; i < 10; i++)
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                elevation: 3,
                color: Colors.amber,
                child: const SizedBox(
                  height: 100,
                  width: double.infinity,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
