import 'dart:math';

import 'package:flutter/material.dart';

class TwoPlayerDice extends StatefulWidget {
  const TwoPlayerDice({super.key});

  @override
  State<TwoPlayerDice> createState() => _TwoPlayerDiceState();

  void rollDice() {}
}

class _TwoPlayerDiceState extends State<TwoPlayerDice> {
  _TwoPlayerDiceState();

  var diceImage = 'assets/images/dice-2.png';
  var diceImage2 = 'assets/images/dice-2.png';
  var textTile = "Start";
  var isDiceVisible = false;
  var isMsgVisible = false;
  var msg = "";

  void rollDice() {
    setState(() {
      isDiceVisible = true;
      isMsgVisible = true;
      textTile = "Try Again!";

      Random random = Random.secure();
      int randomNumber = random.nextInt(6) + 1;
      int randomNumber2 = random.nextInt(6) + 1;
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

      if (randomNumber2 == 1) {
        diceImage2 = 'assets/images/dice-1.png';
      } else if (randomNumber2 == 2) {
        diceImage2 = 'assets/images/dice-2.png';
      } else if (randomNumber2 == 3) {
        diceImage2 = 'assets/images/dice-3.png';
      } else if (randomNumber2 == 4) {
        diceImage2 = 'assets/images/dice-4.png';
      } else if (randomNumber2 == 5) {
        diceImage2 = 'assets/images/dice-5.png';
      } else if (randomNumber2 == 6) {
        diceImage2 = 'assets/images/dice-6.png';
      }

      if (randomNumber2 > randomNumber) {
        msg = "Right Dice win";
      } else if (randomNumber2 < randomNumber) {
        msg = "Left Dice win";
      } else {
        msg = "Tie! (Draw)" ;
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
              visible: isMsgVisible,
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 28,
                  ),
                ),
                onPressed: () {},
                child: Text(msg),
              )),
          Row(mainAxisSize: MainAxisSize.min, children: [
            Visibility(
                visible: isDiceVisible,
                child: Image.asset(
                  diceImage,
                  width: 100,
                )),
            Visibility(
                visible: isDiceVisible,
                child: Image.asset(
                  diceImage2,
                  width: 100,
                )),
          ]),
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
