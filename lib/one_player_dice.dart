import 'dart:math';

import 'package:flutter/material.dart';

class OnePlayerDice extends StatefulWidget {
  const OnePlayerDice({super.key});

  @override
  State<OnePlayerDice> createState() => _OnePlayerDiceState();

}

class _OnePlayerDiceState extends State<OnePlayerDice> {
  _OnePlayerDiceState();

  var count = 0;

  var diceImage = 'assets/images/dice-2.png';
  var textTile = "Start";
  var isDiceVisible = false;
  var isCountVisible = false;

  void rollDice() {
    setState(() {
      if (count > 100) {
        count = 0;
      }
      isDiceVisible = true;
      isCountVisible = true;
      textTile = "Roll Dice";

      Random random = Random.secure();
      int randomNumber = random.nextInt(6) + 1;
      count = count + randomNumber;
      if (randomNumber == 1) {
        diceImage = 'assets/images/dice-1.png';
      } else if (randomNumber == 2) {
        diceImage = 'assets/images/dice-2.png';
      } else if (randomNumber == 3) {
        diceImage = 'assets/images/dice-3.png';
      } else if (randomNumber == 4) {
        diceImage = 'assets/images/dice-4.png';
      } else if (randomNumber == 5) {
        diceImage = 'assets/images/dice-5.png';
      } else if (randomNumber == 6) {
        diceImage = 'assets/images/dice-6.png';
      }

      if (count > 100) {
        isDiceVisible = false;
        textTile = "Game Over! \nStart new Game";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Visibility(
              visible: isCountVisible,
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 28,
                  ),
                ),
                onPressed: () {},
                child: Text("Your count is $count"),
              )),
          Visibility(
              visible: isDiceVisible,
              child: Image.asset(
                diceImage,
                width: 200,
              )),
          const SizedBox(height: 20),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
            ),
            child: Text(textTile),
          )
        ],
      ),
    );
  }
}
