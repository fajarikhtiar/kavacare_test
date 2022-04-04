import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:kavacare/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List banners = [
    'assets/images/banner.png',
    'assets/images/banner.png',
    'assets/images/banner.png',
    'assets/images/banner.png',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    Widget articleCard() {
      return Container(
        margin: EdgeInsets.only(right: spacingL),
        width: 240,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          boxShadow: [shadow1],
          color: netral10,
        ),
        child: Column(
          children: [
            Image.asset(
              'assets/images/banner_article.png',
              width: 240,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ajaibnya Konsumsi Air Putih',
                    style: mediumS.copyWith(
                      color: netral90,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    width: 40,
                    child: Divider(
                      color: primaryMainColor,
                      thickness: 2,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Katanya Air Putih adalah sesuatu yang sangat penting bagi tubuh. Berikut ajaibnya air putih bagi tubuhmu',
                    style: regularS.copyWith(
                      color: netral70,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Baca Selengkapnya',
                        style: regularS.copyWith(
                          color: primaryMainColor,
                        ),
                      ),
                      HeroIcon(
                        HeroIcons.chevronRight,
                        size: 20,
                        color: primaryMainColor,
                        solid: true,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget menuCard({
      required Color color,
      required String title,
      required String subtitle,
      required String image,
    }) {
      return Container(
        width: screenWidth * 0.432,
        decoration: BoxDecoration(
          boxShadow: [
            shadow1,
          ],
          color: netral10,
          borderRadius: BorderRadius.circular(6),
        ),
        margin: const EdgeInsets.only(top: 16),
        child: Column(
          children: [
            Container(
              width: screenWidth * 0.432,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(6)),
                color: color,
              ),
              child: Center(
                child: Text(
                  title,
                  style: mediumS.copyWith(
                    color: netral10,
                  ),
                ),
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.only(top: 8, bottom: 8, left: 4.5, right: 8),
              margin: const EdgeInsets.only(top: 8),
              child: Row(
                children: [
                  Container(
                    width: screenWidth * (64 / 413),
                    height: screenWidth * (57 / 413),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/$image'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * (12.5 / 413),
                  ),
                  Expanded(
                    child: Text(
                      subtitle,
                      style: regularS.copyWith(
                        color: netral70,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget menu() {
      return Container(
        margin: const EdgeInsets.only(top: 16),
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 20,
        ),
        color: netral10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Apa yang kamu butuhkan',
              style: mediumL,
            ),
            Row(
              children: [
                menuCard(
                  color: primaryMainColor,
                  title: 'Home Personal Care',
                  subtitle: 'Mendampingi makan, mandi, berpakaian ...',
                  image: 'menu_1.png',
                ),
                SizedBox(
                  width: screenWidth * 0.038,
                ),
                menuCard(
                  color: const Color(0xff8CA9D3),
                  title: 'Home Nursing',
                  subtitle: 'Kateter, Pemberian obat, infus ...',
                  image: 'menu_2.png',
                ),
              ],
            ),
            Row(
              children: [
                menuCard(
                  color: const Color(0xffD8979B),
                  title: 'Home Therapy',
                  subtitle: 'Fisioterapi, terapi wicara, terapi okupasi',
                  image: 'menu_3.png',
                ),
                SizedBox(
                  width: screenWidth * 0.038,
                ),
                menuCard(
                  color: const Color(0xffD9BF74),
                  title: 'Home Medical',
                  subtitle: 'Ambulan, Pelayanan medis & ...',
                  image: 'menu_4.png',
                ),
              ],
            ),
            Row(
              children: [
                menuCard(
                  color: const Color(0xffB697C0),
                  title: 'Tele-Consultation',
                  subtitle: 'Konsultasi dokter online (30 min)',
                  image: 'menu_5.png',
                ),
                SizedBox(
                  width: screenWidth * 0.038,
                ),
                menuCard(
                  color: const Color(0xff6DB992),
                  title: 'Medicine Delivery',
                  subtitle: 'Pengiriman obat langsung ke rumahmu',
                  image: 'menu_6.png',
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget otherServiceMenu() {
      return Container(
        color: netral10,
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: spacingL,
        ),
        margin: EdgeInsets.only(top: spacingL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Layanan Lainnya',
              style: mediumL,
            ),
            SizedBox(
              height: spacingL,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: netral20,
                  width: 1,
                ),
                color: netral10,
              ),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/menu_covid.png'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 12,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tes Covid-19',
                            style: mediumM.copyWith(color: netral90),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Nikmati pelayanan terbaik kami, anda cukup dirumah saja biar tim kami datang membantu',
                            style: regularS.copyWith(
                              color: netral70,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget infoForYou() {
      return Container(
        color: netral10,
        margin: EdgeInsets.only(top: spacingL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.symmetric(
                  vertical: spacingL,
                  horizontal: 20,
                ),
                child: Text(
                  'Info Untukmu',
                  style: mediumL,
                )),
            Container(
              color: surfaceMainColor,
              padding: EdgeInsets.symmetric(
                vertical: spacingL,
                horizontal: 20,
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: netral10,
                  border: Border.all(
                    color: netral20,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/icon_kavacare.png',
                      width: 52,
                    ),
                    SizedBox(
                      width: spacingL,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Selamat datang di Kavacare !',
                            style: mediumS,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Nikmati pelayanan terbaik & pakai voucher member baru yuk!',
                            style: regularS.copyWith(
                              color: netral70,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget indicator(int index) {
      return Container(
        width: 8,
        height: 8,
        margin: const EdgeInsets.symmetric(
          horizontal: 4,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index
              ? primaryMainColor
              : netral10.withOpacity(0.8),
        ),
      );
    }

    Widget header() {
      int index = -1;
      return Container(
        color: netral10,
        padding: const EdgeInsets.only(
          left: 20,
          right: 21,
          top: 26,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      shadow1,
                    ],
                    color: netral10,
                  ),
                  padding: const EdgeInsets.fromLTRB(11, 10, 11, 9),
                  child: Row(
                    children: [
                      HeroIcon(
                        HeroIcons.locationMarker,
                        size: 20,
                        color: primaryMainColor,
                      ),
                      const SizedBox(
                        width: 11,
                      ),
                      Text(
                        'Jl.Jelambar no.26 ...',
                        style: regularS,
                      )
                    ],
                  ),
                ),
                Text(
                  'Masuk / Daftar',
                  style: mediumM.copyWith(
                    color: primaryMainColor,
                  ),
                )
              ],
            ),
            Stack(
              children: [
                CarouselSlider(
                  items: banners
                      .map(
                        (banner) => Image.asset(
                          banner,
                          fit: BoxFit.contain,
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                    viewportFraction: 1.0,
                    initialPage: 0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width / 3,
                  bottom: 50,
                  child: Row(
                      children: banners.map((banner) {
                    index++;
                    return indicator(index);
                  }).toList()),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget articles() {
      return Container(
        margin: const EdgeInsets.only(top: 16),
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 20,
        ),
        color: netral10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Berita Kava Untukmu',
                  style: headingS,
                ),
                Text(
                  'Lihat Semua',
                  style: mediumS.copyWith(color: primaryMainColor),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  articleCard(),
                  articleCard(),
                  articleCard(),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        children: [
          header(),
          menu(),
          otherServiceMenu(),
          infoForYou(),
          articles(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: netral30,
      body: content(),
    );
  }
}
