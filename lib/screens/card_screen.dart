import 'package:flutter/material.dart';

import 'package:fl_components/screens/listview1_screen.dart';
import 'package:fl_components/themes/app_theme.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardtype1(),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
                name: 'Landscape',
                imageUrl:
                    'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg'),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
              name: null, 
              imageUrl:
                  'https://img.freepik.com/premium-vector/mountain-green-field-alpine-landscape-nature-with-wooden-houses_194708-1779.jpg?w=2000',
            ),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
              name: null,
              imageUrl:
                  'https://img.freepik.com/free-vector/hand-drawn-flat-design-mountain-landscape_52683-79195.jpg?w=2000',
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ));
  }
}