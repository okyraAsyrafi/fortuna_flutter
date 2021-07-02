import 'package:flutter/material.dart';
import 'package:fortuna/model/cars_rental_list.dart';
import 'package:fortuna/widget/alert_sukes.dart';

class BookingWPage extends StatelessWidget {
  final CarRental carRentalItem;
  final int bookingHari;

  const BookingWPage({required this.carRentalItem, required this.bookingHari});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 1200,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            children: [
              Table(
                columnWidths: const <int, TableColumnWidth>{
                  0: FlexColumnWidth(),
                  1: IntrinsicColumnWidth(),
                  2: IntrinsicColumnWidth(),
                  3: FractionColumnWidth(.2)
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: <TableRow>[
                  TableRow(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 32, 8, 32),
                        child: Text(
                          'Kendaraan Rental',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 32, 8, 32),
                        child: Text(
                          'Harga Satuan',
                          style:
                              TextStyle(fontSize: 14, color: Color(0xffbcc4cd)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 32, 8, 32),
                        child: Text(
                          'Kendaraan Rental',
                          style:
                              TextStyle(fontSize: 14, color: Color(0xffbcc4cd)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 32, 8, 32),
                        child: Text('Subtotal Kendaraan',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xffbcc4cd)),
                            textAlign: TextAlign.right),
                      )
                    ],
                  ),
                  TableRow(children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Image.asset(carRentalItem.assetImages,
                              fit: BoxFit.cover),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          flex: 3,
                          child: Text(
                              '${carRentalItem.name} ${carRentalItem.type} ${carRentalItem.tahun}',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 32, 8, 32),
                      child: Text(
                        carRentalItem.hargaPerHari.toString(),
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 32, 8, 32),
                      child: Text(
                        bookingHari.toString(),
                        style: TextStyle(fontSize: 14, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 32, 8, 32),
                      child: Text(
                        hitungTotal(),
                        style: TextStyle(fontSize: 14, color: Colors.black),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ])
                ],
              ),
              Divider(),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'Total Kendaraan di booking (1 Mobil) :',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                        SizedBox(width: 16),
                        Text(
                          hitungTotal(),
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
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
              )
            ],
          ),
        ),
      ),
    );
  }

  String hitungTotal() {
    return (bookingHari * carRentalItem.hargaPerHari).toString();
  }
}
