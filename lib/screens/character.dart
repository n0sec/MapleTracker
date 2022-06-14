import 'package:flutter/material.dart';
import 'package:maple_tracker/providers/characters.dart';
import 'package:maple_tracker/widgets/character_card.dart';
import 'package:maple_tracker/widgets/custom_sheet.dart';
import 'package:provider/provider.dart';

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  @override
  Widget build(BuildContext context) {
    final characters = context.watch<CharactersController>().characters;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          final char = characters[index];
          return CharacterCard(character: char);
        },
        itemCount: characters.length,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(10.0),
              ),
            ),
            builder: (context) => const CustomSheet(),
          );
        },
      ),
    );
  }
}
