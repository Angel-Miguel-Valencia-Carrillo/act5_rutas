import 'package:flutter/material.dart';

class PantallaCuatro extends StatelessWidget {
  const PantallaCuatro({Key? key}) : super(key: key);

  static const List<String> listItems = <String>[
    'apple',
    'banana',
    'melon',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla Dos', // Nota: Dice "Pantalla Dos" pero la clase es PantallaCuatro
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 25,
          ),
        ),
        backgroundColor: Color(0xffa977d7),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Autocomplete<String>(
          optionsBuilder: (TextEditingValue textEditingValue) {
            if (textEditingValue.text == '') {
              return const Iterable<String>.empty();
            }
            return listItems.where((String item) {
              return item.contains(textEditingValue.text.toLowerCase());
            });
          },
          onSelected: (String item) {
            print('The $item was selected');
          },
        ),
      ),
    );
  }
}
