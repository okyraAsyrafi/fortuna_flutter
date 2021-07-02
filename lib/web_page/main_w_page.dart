import 'package:flutter/material.dart';
import 'package:fortuna/model/cars_rental_list.dart';
import 'package:fortuna/web_page/detail_w_page.dart';

class MainWPage extends StatefulWidget {
  final int gridCount;
  const MainWPage({Key? key, required this.gridCount}) : super(key: key);

  @override
  _MainWPageState createState() => _MainWPageState();
}

class _MainWPageState extends State<MainWPage> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
            'Pilih Mobil Rentalmu Size: ${MediaQuery.of(context).size.width}',
            style: TextStyle(
                color: Color(0xff090a0d),
                fontSize: 36,
                fontWeight: FontWeight.bold)),
        elevation: 0,
      ),
      body: Scrollbar(
        controller: _scrollController,
        isAlwaysShown: true,
        child: Center(
          child: Container(
            margin: EdgeInsets.only(top: 50),
            width: 1200,
            padding: EdgeInsets.all(8),
            child: GridView.count(
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              crossAxisCount: widget.gridCount,
              children: carRentalItem.map((e) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: Image.asset(
                        e.assetImages,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "${e.name} ${e.type}",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(e.tahun),
                    SizedBox(height: 8),
                    Text('Rp.${e.hargaPerHari},00-/hari'),
                    SizedBox(height: 8),
                    Container(
                      margin: EdgeInsets.only(bottom: 16),
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailWPage(carRentalItem: e);
                          }));
                        },
                        child: Text(
                          'Pilih',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
