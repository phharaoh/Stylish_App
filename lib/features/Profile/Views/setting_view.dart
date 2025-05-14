import 'package:flutter/material.dart';
import '../../../core/styles/text_styles.dart';


class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('settings',style: TextStyles.appbarTitle,),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 27, right: 23),
            width: double.infinity,
            child: Row(
              children: [
                const Text('Language',style: TextStyles.choicetxt,),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Image.asset(
                          'lib/core/assets/images/translate icon.png',
                          width: 80,
                          height:35 ,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      // shape:,
    ));
  }
}
