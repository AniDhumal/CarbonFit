import 'package:cached_network_image/cached_network_image.dart';
import 'package:fixyourprint/widgets/CustomButton.dart';
import 'package:fixyourprint/widgets/ImageView.dart';
import 'package:flutter/material.dart';

class OffsetDetail extends StatelessWidget {
  final String Image;
  final String Name;
  final String Id;
  final String Brief;
  final String Min;
  final String Availability;
  final String Link;
  const OffsetDetail(
      {Key? key,
      required this.Name,
      required this.Availability,
      required this.Brief,
      required this.Image,
      required this.Link,
      required this.Id,
      required this.Min})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 20),
              child: ImageView(Image: Image, Availability: Availability),
            ),
            Text(
              Name,
              style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Minimum Amount: $Min',
              style: TextStyle(fontSize: 18, fontFamily: 'Lato'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              Brief,
              style: TextStyle(fontFamily: 'Lato', fontSize: 18),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CustomButton(text: "Offset"),
            ),
          ],
        ),
      ),
    );
  }
}