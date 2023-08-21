import 'package:dice_game/menu.dart';
import 'package:flutter/material.dart';

import 'two_player_dice.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Menu(),
      ),
    ),
  );
}
