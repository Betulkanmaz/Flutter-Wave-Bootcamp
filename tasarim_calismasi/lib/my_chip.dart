import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/renkler.dart';

class MyChip extends StatelessWidget {
  String icerik;

  MyChip({
    required this.icerik,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(backgroundColor: anaRenk),
      child: Text(
        icerik,
        style: TextStyle(
          color: yaziRenk1,
        ),
      ),
    );
  }
}
