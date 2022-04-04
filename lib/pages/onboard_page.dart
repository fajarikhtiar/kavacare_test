import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:kavacare/widgets/large_button.dart';
import '../theme.dart';

class OnBoardPage extends StatelessWidget {
  const OnBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget textMasuk() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
            child: Text(
              'Masuk',
              style: mediumM.copyWith(color: primaryMainColor),
            ),
          ),
        ],
      );
    }

    Widget contenText() {
      return Container(
        margin: EdgeInsets.only(top: spacingL),
        child: Column(
          children: [
            Text(
              'Hai Kava People!',
              style: headingM.copyWith(
                color: const Color(0xff000000),
              ),
            ),
            Text(
              'Bantu kami mencari lokasimu dulu yuk :D',
              style: mediumL.copyWith(
                color: netral70,
              ),
            )
          ],
        ),
      );
    }

    Widget content() {
      return Image.asset(
        'assets/images/onboard.png',
        width: 366,
      );
    }

    return Scaffold(
      backgroundColor: netral20,
      body: Container(
        padding: EdgeInsets.only(
          top: 48,
          left: spacingXL,
          right: spacingXL,
        ),
        child: Column(
          children: [
            textMasuk(),
            const SizedBox(
              height: 20,
            ),
            content(),
            contenText(),
            LargeButton(
              textButton: 'Aktifkan Lokasi',
              buttonColor: primaryMainColor,
              textColor: netral10,
              onPressed: () {},
              isWithIcon: true,
              icon: HeroIcons.locationMarker,
            ),
            LargeButton(
                textButton: 'Nanti Saja',
                buttonColor: netral10,
                textColor: primaryMainColor,
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
