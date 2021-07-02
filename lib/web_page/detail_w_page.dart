import 'package:flutter/material.dart';
import 'package:fortuna/model/cars_rental_list.dart';
import 'package:fortuna/web_page/booking_w_page.dart';
import 'package:fortuna/widget/info_horizontal.dart';

class DetailWPage extends StatefulWidget {
  final CarRental carRentalItem;

  const DetailWPage({Key? key, required this.carRentalItem}) : super(key: key);

  @override
  _DetailWPageState createState() => _DetailWPageState();
}

class _DetailWPageState extends State<DetailWPage> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'RENTAL MOBIL FORTUNA',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 64),
          width: 1200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 16, left: 16),
                          child: imageAss
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    this.widget.carRentalItem.assetImages,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              : ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                    imageDetail,
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
                                children: this
                                    .widget
                                    .carRentalItem
                                    .imageUrls
                                    .map((e) {
                                  return InkWell(
                                    onTap: () {
                                      imageAss = false;
                                      imageDetail = e;
                                      setState(() {});
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
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
                        controller: _scrollController,
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
                              value: this
                                  .widget
                                  .carRentalItem
                                  .hargaPerHari
                                  .toString()),
                          InfoHorizontal(
                              judul: "Supir",
                              icon: Icons.airline_seat_recline_extra,
                              value: this.widget.carRentalItem.supir
                                  ? 'Tersedia'
                                  : 'Tidak Tersedia'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 32),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Text(
                          '${this.widget.carRentalItem.name} ${widget.carRentalItem.type} ${widget.carRentalItem.tahun}',
                          style: TextStyle(
                              color: Color(0xff090a0d),
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Text(
                        this.widget.carRentalItem.deskripsi,
                        style:
                            TextStyle(color: Color(0xffbcc4cd), fontSize: 16),
                        textAlign: TextAlign.justify,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          children: <Widget>[
                            Text('Kuantitas'),
                            SizedBox(width: 96),
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
                              ),
                            ),
                            SizedBox(width: 32),
                            Container(
                              width: 50,
                              child: Text('${nilai.toString()}/hari'),
                            ),
                            SizedBox(width: 32),
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
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
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
                              return BookingWPage(
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
                        ),
                      ),
                    ],
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
