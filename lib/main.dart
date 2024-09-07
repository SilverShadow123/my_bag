
import 'package:flutter/material.dart';

import 'home_screen.dart';

void main()
{
  runApp(my_bag());
}

class my_bag extends StatelessWidget {
  const my_bag({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home_screen()
    );
  }
}
