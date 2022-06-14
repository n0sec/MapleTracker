import 'package:flutter/material.dart';
import 'package:maple_tracker/widgets/character_bottom_sheet.dart';
import '../adapters/character.dart';
import 'package:provider/provider.dart';
import '../providers/characters.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({Key? key, required this.character}) : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => CharacterBottomSheet(
            character: character,
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(10.0),
            ),
          ),
        );
      },
      child: Card(
        child: InkWell(
          splashColor: Theme.of(context).primaryColor.withAlpha(75),
          onTap: () {}, // TODO: Send the user to the "Home/Summary" page
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Image.asset(
                    character.characterClass.classImagePath,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  character.name,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
