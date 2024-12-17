import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:submission1/helper/assets_manager.dart';
import 'package:submission1/helper/util.dart';


class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key, required this.message, required this.indexChat});

  final String message;
  final int indexChat;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: indexChat == 0 ? cardColorUser : cardColorAi,
          child: Padding(
              padding: const EdgeInsets.all(8.0)
            , child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(indexChat == 0 ? AssetsManager.iconUser : AssetsManager.iconAi,
                  width: 30,
                  height: 30,),
                SizedBox(width: 5.0),
                Expanded(child: Text(message))
              ],
            ),),
        ),

      ],
    );
  }
}
