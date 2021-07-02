import 'package:flutter/material.dart';
import 'package:fortuna/detail_screen.dart';
import 'package:fortuna/model/cars_rental_list.dart';
import 'package:fortuna/widget/right_button.dart';

class MainMPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Text('Pilih Mobil Rentalmu',
            style: TextStyle(color: Color(0xff090a0d))),
        elevation: 0,
      ),
      body: ListView(
        children: carRentalItem.map(
          (carItem) {
            return Container(
              height: 250,
              padding: EdgeInsets.all(16),
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      )
                    ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        carItem.assetImages,
                        fit: BoxFit.cover,
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Rp.${carItem.hargaPerHari},-/Day',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    color: Colors.white),
                              ),
                              Text(
                                '${carItem.name} ${carItem.tahun}',
                                style: TextStyle(color: Color(0xff090a0d)),
                              )
                            ],
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return DetailScreen(carRentalItem: carItem);
                                }));
                              },
                              child: RightButton())
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
