import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import '../../../core/styles/text_styles.dart';
import 'package:stylish_app/core/Utilz/Helper/my_navigator.dart';

class ProChoices extends StatelessWidget {
  const ProChoices(
      {super.key,
      required this.txt,
      required this.imagePath,
      required this.screen,
      required this.context});
  final String txt;
  final String imagePath;
  final Widget screen;
  final BuildContext context;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        MyNavigator.goTo(
          context: context,
          screen: screen,
        );
      },
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              SvgPicture.asset(imagePath),
              const SizedBox(width: 13),
              Text(
                txt,
                style: TextStyles.choicetxt,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      'lib/core/assets/images/forward_arrow.svg',
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
}
