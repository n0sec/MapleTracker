import 'package:flutter/material.dart';
import '../models/character.dart';

var details = TapDownDetails();
var tapPosition = details.globalPosition;

class CharacterCard extends StatefulWidget {
  const CharacterCard({Key? key, required this.character}) : super(key: key);

  final Character character;

  @override
  State<CharacterCard> createState() => _CharacterCardState();
}

class _CharacterCardState extends State<CharacterCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        debugPrint(tapPosition.toString());
        showMenu(
          context: context,
          position: const RelativeRect.fromLTRB(25, 25, 0, 0),
          items: [
            const PopupMenuItem<String>(
              value: '1',
              child: Text(
                'Add to Favorites',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            const PopupMenuItem<String>(
                value: '2',
                child: Text(
                  'Delete',
                  style: TextStyle(color: Colors.red),
                )),
          ],
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
                    widget.character.characterClass.classImage,
                  ),
                ),
                Text(
                  widget.character.name,
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
