import 'package:flutter/material.dart';
import '../models/character.dart';

Character test1 = Character('Johnny', 140, CharacterClass(ClassNames.adele));

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  final classNameController = TextEditingController();
  final characterNameController = TextEditingController();
  final characterLevelController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.green,
            width: double.infinity,
            height: 85,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Character 1'),
              ],
            ),
          ),
          Container(
            color: Colors.red,
            width: double.infinity,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                test1.characterClass.classImage,
                Text(test1.name),
                Text(test1.level.toString()),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            // TODO: Fix keyboard covering inputs
            context: context,
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(10.0),
              ),
            ),
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextField(
                        controller: classNameController,
                        cursorColor: Colors.black,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          labelText: 'Class',
                          prefixIcon: Icon(Icons.abc),
                        ),
                      ),
                      TextField(
                        controller: characterNameController,
                        cursorColor: Colors.black,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          labelText: 'Name',
                          prefixIcon: Icon(Icons.abc),
                        ),
                      ),
                      TextField(
                        controller: characterLevelController,
                        cursorColor: Colors.black,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          labelText: 'Level',
                          prefixIcon: Icon(Icons.numbers),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Submit',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
