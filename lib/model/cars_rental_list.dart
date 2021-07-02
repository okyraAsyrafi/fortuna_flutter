class CarRental {
  String name;
  String tahun;
  String type;
  String warna;
  String transmisi;
  String bahanBakar;
  String deskripsi;
  int hargaPerHari;
  bool supir;
  String assetImages;
  List<String> imageUrls;

  CarRental(
      {required this.name,
      required this.tahun,
      required this.type,
      required this.warna,
      required this.transmisi,
      required this.deskripsi,
      required this.hargaPerHari,
      required this.bahanBakar,
      required this.assetImages,
      required this.supir,
      required this.imageUrls});
}

var carRentalItem = [
  CarRental(
    name: 'Toyota Agya 1.2',
    tahun: '2018',
    type: 'G',
    warna: 'Silver',
    transmisi: 'Automatic',
    deskripsi:
        'Toyota Agya adalah low cost green car (LCGC) atau mobil terjangkau ramah lingkungan pertama di Indonesia.',
    hargaPerHari: 250000,
    bahanBakar: 'Bensin',
    assetImages: 'images/agya-silver-2018.jpg',
    supir: false,
    imageUrls: [
      'https://img.hargatoyota.com/crop/355x235/2018/02/07/ddc645f8-9-6cf2.jpg',
    ],
  ),
  CarRental(
    name: 'Toyota Avanza 1.3',
    tahun: '2017',
    type: 'E',
    warna: 'Merah Marun',
    transmisi: 'Manual',
    deskripsi:
        'salah satu mobil terbaiknya yang bermain di ranah MPV dalam wujud Toyota Avanza 2017. ',
    hargaPerHari: 180000,
    bahanBakar: 'Bensin',
    assetImages: 'images/avanza-merah.jpg',
    supir: true,
    imageUrls: [
      'https://img-ap-2.trovit.com/img2id/1R1C1xy1KyRd/1R1C1xy1KyRd.1_11.jpg',
      'https://img.hargatoyota.com/crop/355x235/2018/03/12/0b593b93-0-a273.jpg',
    ],
  ),
  CarRental(
    name: 'Daihatsu Xenia',
    tahun: '2018',
    type: 'R',
    warna: 'Putih',
    transmisi: 'manual',
    deskripsi:
        'Daihatsu sendiri sudah memiliki strategi terbaik untuk menghadang banyaknya pendatang baru yang bisa meruntuhkan kekuatan Xenia dan Avanza. Salah satu yang sudah ada yaitu membuat Daihatsu Great New Xenia Custom, sepertinya versi dress up dari MPV ini terlihat lebih atletis. ',
    hargaPerHari: 150000,
    bahanBakar: 'Bensin',
    assetImages: 'images/xenia-putih.jpg',
    supir: true,
    imageUrls: [
      'https://apollo-singapore.akamaized.net/v1/files/wh7f2qev202e2-ID/image;s=1080x1080'
    ],
  ),
  CarRental(
    name: 'Daihatsu Xenia',
    tahun: '2010',
    type: 'Xi Deluxe',
    warna: 'Silver',
    transmisi: 'Bensin',
    deskripsi:
        'memiliki kelengkapan yang sama dengan Family ditambah dengan tanduk belakang serta roof rail yang membuat tampilannya makin sporty.',
    hargaPerHari: 90000,
    bahanBakar: 'Bensin',
    assetImages: 'images/xenia-putih-2010.jpg',
    supir: true,
    imageUrls: [
      'https://apollo-singapore.akamaized.net/v1/files/7v8ptfuwhrwk3-ID/image;s=1080x1080',
      'https://apollo-singapore.akamaized.net/v1/files/vo9hvee6z7km-ID/image;s=1080x1080',
      'https://apollo-singapore.akamaized.net/v1/files/ce991kcbp9591-ID/image;s=1080x1080'
    ],
  ),
  CarRental(
    name: 'Hiace',
    tahun: '2020',
    type: 'Premio Solar',
    warna: 'Putih',
    transmisi: 'Manual',
    deskripsi:
        'Toyota HiAce  sebagai kendaraan yang sering digunakan sebagai alat transportasi bagi jasa travel dan pariwisata. Meskipun merupakan mobil komersial, tetapi Toyota Toyota HiAce menawarkan kemewahan dan kenyamanan yang lebih, baik dari segi eksterior maupun interior.',
    hargaPerHari: 550000,
    bahanBakar: 'Diesel',
    assetImages: 'images/hiace-2020.jpg',
    supir: true,
    imageUrls: [
      'https://apollo-singapore.akamaized.net/v1/files/uq8imevqxina2-ID/image;s=1080x1080',
      'https://apollo-singapore.akamaized.net/v1/files/3f5ilcfbunq21-ID/image;s=1080x1080'
    ],
  ),
  CarRental(
    name: 'Hiace 2.5',
    tahun: '2019',
    type: 'Commuter Solar',
    warna: 'Putih',
    transmisi: 'Manual',
    deskripsi:
        'Toyota HiAce  sebagai kendaraan yang sering digunakan sebagai alat transportasi bagi jasa travel dan pariwisata. Meskipun merupakan mobil komersial, tetapi Toyota Toyota HiAce menawarkan kemewahan dan kenyamanan yang lebih, baik dari segi eksterior maupun interior.',
    hargaPerHari: 390000,
    bahanBakar: 'Diesel',
    assetImages: 'images/hiace-2019.jpg',
    supir: true,
    imageUrls: [
      'https://apollo-singapore.akamaized.net/v1/files/vdb3eaast7o93-ID/image;s=1080x1080',
      'https://apollo-singapore.akamaized.net/v1/files/ifg3eecla0nd2-ID/image;s=1080x1080',
      'https://apollo-singapore.akamaized.net/v1/files/43kymykbd7qs-ID/image;s=1080x1080'
    ],
  ),
  CarRental(
    name: 'Pajero 2.5',
    tahun: '2011',
    type: 'Exceed Solar',
    warna: 'Putih',
    transmisi: 'Automatic',
    deskripsi:
        'Pajero sport merupakan kendaraan SUV keluarga yang sangat cocok dgn segala medan dan kondisi geografis indonesia yang berbukit terjal. kadang dengan kondisi jalan yang berlumpur tapi mampu dilibas dengan aman dan nyaman sehingga bsebagian besar masyarakat papua menjadikan kendaraan ini sebagai salah satu kendaraan andalan bagi mereka untuk melintasi jalur di pedalaman yang berbukit dan berlumpur.',
    hargaPerHari: 220000,
    bahanBakar: 'Diesel',
    assetImages: 'images/pajero-2011.jpg',
    supir: false,
    imageUrls: [
      'https://apollo-singapore.akamaized.net/v1/files/sawo9usl4yhd1-ID/image;s=1080x1080',
      'https://apollo-singapore.akamaized.net/v1/files/h58zc4vgu00m1-ID/image;s=1080x1080',
      'https://apollo-singapore.akamaized.net/v1/files/f3hhtf6258co3-ID/image;s=1080x1080'
    ],
  ),
  CarRental(
    name: 'Pajero Sport 2.4',
    tahun: '2019',
    type: 'Rockford Fosge Limited Edition Solar',
    warna: 'Hitam',
    transmisi: 'Automatic',
    deskripsi:
        'Pajero sport merupakan kendaraan SUV keluarga yang sangat cocok dgn segala medan dan kondisi geografis indonesia yang berbukit terjal. kadang dengan kondisi jalan yang berlumpur tapi mampu dilibas dengan aman dan nyaman sehingga bsebagian besar masyarakat papua menjadikan kendaraan ini sebagai salah satu kendaraan andalan bagi mereka untuk melintasi jalur di pedalaman yang berbukit dan berlumpur.',
    hargaPerHari: 495000,
    bahanBakar: 'Diesel',
    assetImages: 'images/pajero-2019.jpg',
    supir: false,
    imageUrls: [
      'https://mobil.dijual.co.id/uploads/images/2021/03/27392/mitsubishi-pajero-sport-dakar-24-at-2019-sunroof-black-on-black-JRZSKL14.jpg',
      'https://imgid.waa2.com/car/170121/2019-mitsubishi-pajero-sport-24-black-rockford-fosgate-ltd-ed-km-12rb-asli-antik-sekali-family-cab216b554db0a91e4ea523da185457af3_thumb.jpg',
    ],
  ),
  CarRental(
    name: "Toyota Fortuner 2.7",
    tahun: '2006',
    type: 'G',
    warna: 'Hitam',
    transmisi: 'Automatic',
    deskripsi:
        'Toyota fortuner menjadi salah satu primadona pada segmen mobil sport Utility Vehicle (SUV) di indonesia. memiliki tampilan eksterior tangguh serta cocok dibawa berkendara di berbagai medan jalan dengan nyaman.',
    hargaPerHari: 135000,
    bahanBakar: 'Bensin',
    assetImages: 'images/fortuner-2006.jpg',
    supir: false,
    imageUrls: [
      'https://apollo-singapore.akamaized.net/v1/files/thwlhbnbgz8c2-ID/image;s=1080x1080',
      'https://apollo-singapore.akamaized.net/v1/files/s919so21n23u3-ID/image;s=1080x1080',
      'https://apollo-singapore.akamaized.net/v1/files/wiq07vwrz1kk1-ID/image;s=1080x1080'
    ],
  ),
  CarRental(
    name: 'Toyota Fortuner 2.5',
    tahun: '2012',
    type: 'G',
    warna: 'Abu-abu',
    transmisi: 'Manual',
    deskripsi:
        'Toyota Fortuner 4x2 AT 2012 memiliki mesin diesel D-4D turbocharged 2982cc 4 silinder yang menghasilkan tenaga 171 PS pada 3600 rpm dan torsi 343 Nm pada kisaran 1400 hingga 3400 rpm. ... Bahkan, Toyota Fortuner sangat mengesankan kami dengan kinerja dan penanganannya. Ini adalah mobil yang menyenangkan untuk dikendarai.',
    hargaPerHari: 255000,
    bahanBakar: 'Diesel',
    assetImages: 'images/fortuner-2012.jpg',
    supir: true,
    imageUrls: [
      'https://apollo-singapore.akamaized.net/v1/files/21fnia4lxwkj1-ID/image;s=1080x1080',
      'https://apollo-singapore.akamaized.net/v1/files/d9jpprsxncjx-ID/image;s=1080x1080',
    ],
  )
];
