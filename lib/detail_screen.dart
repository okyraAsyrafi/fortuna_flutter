import 'package:flutter/material.dart';
import 'package:fortuna/mobile_page/detail_m_page.dart';
import 'package:fortuna/model/cars_rental_list.dart';

class DetailScreen extends StatelessWidget {
  final CarRental carRentalItem;

  const DetailScreen({required this.carRentalItem});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= 600) {
          return DetailScreen(carRentalItem: carRentalItem);
        } else {
          return DetailMpage(carRentalItem: carRentalItem);
        }
      },
    );
  }
}
