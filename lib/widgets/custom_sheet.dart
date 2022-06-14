import 'package:flutter/material.dart';
import 'package:maple_tracker/adapters/character.dart';
import 'package:provider/provider.dart';
import '../providers/characters.dart';

import '../adapters/character_class.dart';

class CustomSheet extends StatefulWidget {
  const CustomSheet({Key? key}) : super(key: key);

  @override
  State<CustomSheet> createState() => _CustomSheetState();
}

class _CustomSheetState extends State<CustomSheet> {
  final characterNameController = TextEditingController();
  ClassNames dropdownValue = ClassNames.adele;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: characterNameController,
                cursorColor: Colors.black,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  labelText: 'Character Name',
                ),
              ),
              DropdownButton<ClassNames>(
                hint: const Text('Class Name'),
                isExpanded: true,
                items: ClassNames.values
                    .map<DropdownMenuItem<ClassNames>>(
                      (value) => DropdownMenuItem(
                        value: value,
                        child: Text(value.label),
                      ),
                    )
                    .toList(),
                onChanged: (ClassNames? newValue) {
                  setState(
                    () {
                      dropdownValue = newValue!;
                    },
                  );
                },
                value: dropdownValue,
              ),
              ElevatedButton(
                onPressed: () {
                  if (characterNameController.text == '') {
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          title: const Text('Error'),
                          content:
                              const Text('Character names cannot be blank.'),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    context.read<CharactersController>().createCharacter(
                          Character(
                            characterNameController.text,
                            CharacterClass(
                              dropdownValue,
                            ),
                          ),
                        );
                    Navigator.pop(context);
                  }
                },
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
      ),
    );
  }
}
