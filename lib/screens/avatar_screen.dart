import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stan Lee'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.red,
            ),
          )
        ],
      ),
      body: const Center(
          child: CircleAvatar(
            maxRadius: 100,
            backgroundImage: NetworkImage(
            'http://t3.gstatic.com/licensed-image?q=tbn:ANd9GcSAUiPaz-_hMMZvdIxgLXd_X8xMhiMPCuKJ2gQsD5BBEgje8xgnxiHUd4e5WtDgOLZEEe4ry0g7aR9y1gU'),
      )),
    );
  }
}