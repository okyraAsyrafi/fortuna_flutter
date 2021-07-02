import 'package:flutter/material.dart';
import 'package:fortuna/mobile_page/booking_m_page.dart';
import 'package:fortuna/model/cars_rental_list.dart';
import 'package:fortuna/web_page/booking_w_page.dart';

class BookingScreen extends StatelessWidget {
  final CarRental carRentalItem;
  final int bookingHari;

  const BookingScreen({required this.carRentalItem, required this.bookingHari});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= 600) {
          return BookingWPage(
              carRentalItem: carRentalItem, bookingHari: bookingHari);
        } else {
          return BookingMPage(
              carRentalItem: carRentalItem, bookingHari: bookingHari);
        }
      },
    );
  }
}
