import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:kavacare/theme.dart';

class LargeButton extends StatelessWidget {
  late String textButton;
  late Color buttonColor;
  late Color textColor;
  final bool isWithIcon;
  HeroIcons? icon;
  late void Function() onPressed;
  LargeButton({
    Key? key,
    required this.textButton,
    required this.buttonColor,
    required this.textColor,
    this.isWithIcon = false,
    this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          shadow1,
        ],
      ),
      margin: EdgeInsets.only(top: spacingM),
      height: 52,
      width: double.maxFinite,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: buttonColor,
          ),
          onPressed: onPressed,
          child: isWithIcon
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HeroIcon(
                      icon!,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      textButton,
                      style: mediumM.copyWith(
                        color: textColor,
                      ),
                    ),
                  ],
                )
              : Text(
                  textButton,
                  style: mediumM.copyWith(
                    color: textColor,
                  ),
                )),
    );
  }
}
