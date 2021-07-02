import 'package:flutter/material.dart';
import 'package:fortuna/mobile_page/booking_m_page.dart';
import 'package:fortuna/model/cars_rental_list.dart';
import 'package:fortuna/widget/info_horizontal.dart';

class DetailMpage extends StatefulWidget {
  final CarRental carRentalItem;

  const DetailMpage({required this.carRentalItem});

  @override
  _DetailMpageState createState() => _DetailMpageState();
}

class _DetailMpageState extends State<DetailMpage> {
  bool imageAss = true;
  String imageDetail = '';
  int nilai = 0;

  void kurang() {
    if (nilai == 0) {
      nilai = 0;
      setState(() {});
    } else {
      nilai--;
      setState(() {});
    }
  }

  void tambah() {
    nilai += 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back)),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Text(
                      this.widget.carRentalItem.name,
                      style: TextStyle(
                          color: Color(0xff090a0d),
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: imageAss
                      ? ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(100)),
                          child: Image.asset(
                            this.widget.carRentalItem.assetImages,
                            width: MediaQuery.of(context).size.width,
                            height: 300,
                            fit: BoxFit.cover,
                          ),
                        )
                      : ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(100)),
                          child: Image.network(
                            imageDetail,
                            width: MediaQuery.of(context).size.width,
                            height: 300,
                            fit: BoxFit.cover,
                          ),
                        ),
                ),
                Positioned(
                  right: 0,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          imageAss = true;
                          imageDetail = '';
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white),
                          padding: const EdgeInsets.all(1),
                          margin: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 4),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.asset(
                              this.widget.carRentalItem.assetImages,
                              width: 65,
                              height: 65,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: this.widget.carRentalItem.imageUrls.map((e) {
                          return InkWell(
                            onTap: () {
                              imageAss = false;
                              imageDetail = e;
                              setState(() {});
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.white),
                              padding: const EdgeInsets.all(1),
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 4),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(4),
                                child: Image.network(
                                  e,
                                  width: 65,
                                  height: 65,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              height: 150,
              child: ListView(
                padding: const EdgeInsets.only(left: 32, right: 32),
                scrollDirection: Axis.horizontal,
                children: [
                  InfoHorizontal(
                      judul: "Tahun",
                      icon: Icons.view_day,
                      value: this.widget.carRentalItem.tahun),
                  InfoHorizontal(
                      judul: "Type",
                      icon: Icons.toc,
                      value: this.widget.carRentalItem.type),
                  InfoHorizontal(
                      judul: "Warna",
                      icon: Icons.color_lens,
                      value: this.widget.carRentalItem.warna),
                  InfoHorizontal(
                      judul: "Transmisi",
                      icon: Icons.settings_input_component_sharp,
                      value: this.widget.carRentalItem.transmisi),
                  InfoHorizontal(
                      judul: "Harga",
                      icon: Icons.monetization_on,
                      value: this.widget.carRentalItem.hargaPerHari.toString()),
                  InfoHorizontal(
                      judul: "Supir",
                      icon: Icons.airline_seat_recline_extra,
                      value: this.widget.carRentalItem.supir
                          ? 'Tersedia'
                          : 'Tidak Tersedia'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Deskripsi',
                style: TextStyle(
                    color: Color(0xff090a0d),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 48),
              child: Text(
                this.widget.carRentalItem.deskripsi,
                style: TextStyle(color: Color(0xffbcc4cd), fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.blue,
                          ),
                          child: IconButton(
                            onPressed: () {
                              kurang();
                            },
                            icon: Icon(Icons.remove),
                            color: Colors.white,
                          )),
                      Container(
                        color: Colors.white,
                        child: Text('${nilai.toString()}/hari'),
                      ),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.blue,
                          ),
                          child: IconButton(
                            onPressed: () {
                              tambah();
                            },
                            icon: Icon(Icons.add),
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                        onPressed: () {
                          if (nilai == 0) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content:
                                    Text('ingin booking untuk berapa hari?'),
                                duration: Duration(seconds: 1),
                              ),
                            );
                          } else {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return BookingMPage(
                                  carRentalItem: this.widget.carRentalItem,
                                  bookingHari: nilai);
                            }));
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Booking Now",
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
