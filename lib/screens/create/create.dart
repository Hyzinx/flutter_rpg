import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/models/vocation.dart';
import 'package:flutter_rpg/screens/create/vocation_card.dart';
import 'package:flutter_rpg/screens/home/home.dart';
import 'package:flutter_rpg/shared/style_button.dart';
import 'package:flutter_rpg/shared/style_text.dart';
import 'package:flutter_rpg/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uuid/uuid.dart';

var uuid = const Uuid();

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  final _nameController = TextEditingController();
  final _sloganController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _sloganController.dispose();
    super.dispose();
  }

  Vocation selectedVocation = Vocation.raider;

  void updateVocation(Vocation vocation) {
    setState(() {
      selectedVocation = vocation;
    });
  }

  void handleSubmit() {
    if (_nameController.text.trim().isEmpty) {
      showDialog(
        context: context,
        builder: (ctr) {
          return AlertDialog(
            title: StyleHeadline("Missing Character Name"),
            content: StyleText("Every good RPG character needs agreat name..."),
            actions: [
              StyleButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: StyleHeadline("close"),
              ),
            ],
            actionsAlignment: MainAxisAlignment.center,
          );
        },
      );
      return;
    }
    if (_sloganController.text.trim().isEmpty) {
      showDialog(
        context: context,
        builder: (ctr) {
          return AlertDialog(
            title: StyleHeadline("Missing Character Slogan"),
            content: StyleText("Remember to add a catchy slogan..."),
            actions: [
              StyleButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: StyleHeadline("close"),
              ),
            ],
            actionsAlignment: MainAxisAlignment.center,
          );
        },
      );
      return;
    }
    characters.add(
      Character(
        id: uuid.v4(),
        name: _nameController.text.trim(),
        slogan: _sloganController.text.trim(),
        vocation: selectedVocation,
      ),
    );
    Navigator.push(context, MaterialPageRoute(builder: (ctx) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: StyleTitle("Character Creation")),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(child: Icon(Icons.code, color: AppColors.primaryColor)),
              Center(child: StyleHeadline("Welcom, new Player.")),
              Center(
                child: StyleText("Create a name & slogan for your character."),
              ),
              SizedBox(height: 30),

              TextField(
                controller: _nameController,
                style: GoogleFonts.kanit(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_2),
                  label: StyleText("Character name"),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _sloganController,
                style: GoogleFonts.kanit(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.chat),
                  label: StyleText("Character Slogan"),
                ),
              ),
              SizedBox(height: 30),

              Center(child: Icon(Icons.code, color: AppColors.primaryColor)),
              Center(child: StyleHeadline("Choose a vocation.")),
              Center(
                child: StyleText("This determinces your available skills."),
              ),

              SizedBox(height: 30),

              for (Vocation v in Vocation.values)
                VocationCard(
                  vocation: v,
                  onTap: updateVocation,
                  selected: (v == selectedVocation),
                ),
              Center(
                child: StyleButton(
                  onPressed: handleSubmit,
                  child: StyleHeadline("Create Character"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
