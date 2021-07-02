import 'package:flutter/material.dart';
import 'package:fortuna/model/cars_rental_list.dart';
import 'package:fortuna/widget/alert_sukes.dart';

class BookingMPage extends StatelessWidget {
  final CarRental carRentalItem;
  final int bookingHari;

  const BookingMPage({required this.carRentalItem, required this.bookingHari});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Booking Mobil',
          style:
              TextStyle(color: Color(0xff090a0d), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 150,
                margin: const EdgeInsets.only(bottom: 32),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 10),
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            carRentalItem.assetImages,
                            fit: BoxFit.cover,
                            height: 150,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '${carRentalItem.name} ${carRentalItem.type} ${carRentalItem.tahun}',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color(0xff090a0d),
                              ),
                            ),
                            SizedBox(height: 8),
                            FittedBox(
                              child: Text(
                                'Rp.${carRentalItem.hargaPerHari},00-',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 10),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Rincian Pesanan',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Kendaraan',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '${carRentalItem.name} ${carRentalItem.type} ${carRentalItem.tahun}',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Booking/hari',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'x${bookingHari.toString()}',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Biaya/hari',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Rp.${carRentalItem.hargaPerHari},00-',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Total Biaya',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Rp.${carRentalItem.hargaPerHari * bookingHari},00-',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.25,
                    bottom: 16,
                    left: 30,
                    right: 30),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orange,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 10),
                      )
                    ]),
                child: Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    splashColor: Colors.black26,
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) {
                            return AlertSukses();
                          });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Text('Booking',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
