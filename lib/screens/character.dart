import 'package:flutter/material.dart';
import '../models/character.dart';
import '../widgets/character_card.dart';

Character test1 = Character('Johnny', CharacterClass(ClassNames.adele));
Character test2 = Character('Solennia', CharacterClass(ClassNames.buccaneer));
Character test3 =
    Character('Fireboi', CharacterClass(ClassNames.firePoisonMage));
Character test4 =
    Character('Rakanichu', CharacterClass(ClassNames.iceLightningMage));
Character test5 = Character('Edgelord', CharacterClass(ClassNames.shadower));
Character test6 = Character('ShakaKhan', CharacterClass(ClassNames.shade));
Character test7 =
    Character('PrettyUnicorn', CharacterClass(ClassNames.hoyoung));

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  final classNameController = TextEditingController();
  final characterNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        children: [
          CharacterCard(
            character: test1,
          ),
          CharacterCard(
            character: test2,
          ),
          CharacterCard(
            character: test3,
          ),
          CharacterCard(
            character: test4,
          ),
          CharacterCard(
            character: test5,
          ),
          CharacterCard(
            character: test6,
          ),
          CharacterCard(
            character: test7,
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
                          prefixIcon: Icon(Icons.person),
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
