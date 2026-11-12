import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  Map<String, dynamic> mData = {};

  // DetailPage({required this.title});

  @override
  Widget build(BuildContext context) {
    mData = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(title: Text(mData["title"])),
      body: Hero(
        tag: "${mData["mIndex"]}",
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(mData["url"]),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
