import 'package:dice_game/one_player_dice.dart';
import 'package:dice_game/two_player_dice.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();

}

class _MenuState extends State<Menu> {
  _MenuState();


  void navigateToOnePlayerGame(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const OnePlayerDice()),
    );
  }

  void navigateToTwoPlayerGame(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TwoPlayerDice()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
              onPressed: navigateToOnePlayerGame,
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
            ),
            child: const Text("One Player Dice Game"),
          ),
          TextButton(
            onPressed: navigateToTwoPlayerGame,
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
            ),
            child: const Text("Two Player Dice Game"),
          )
        ],
      ),
    );
  }


}
