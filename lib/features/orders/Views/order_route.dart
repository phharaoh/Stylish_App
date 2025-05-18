import 'active_view.dart';
import 'cancel_view.dart';
import 'complete_view.dart';
import 'package:flutter/material.dart';
import '../../../core/styles/text_styles.dart';
import 'package:stylish_app/core/styles/colors.dart';

class OrderRoute extends StatefulWidget {
  const OrderRoute({super.key});

  @override
  State<OrderRoute> createState() => _OrderRouteState();
}

class _OrderRouteState extends State<OrderRoute> {
  int _selectedIndex = 0;

  List<Widget> widgetOptions = <Widget>[
    const ActiveView(),
    const CompleteView(),
    const CancelView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'My orders',
            style: TextStyles.appbarTitle,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 26, right: 26),
          child: Column(
            children: [
              Row(
                children: ['Active', 'Completed', 'Cancelled']
                    .asMap()
                    .entries
                    .map((entry) {
                  final index = entry.key;
                  final title = entry.value;
                  return Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      width: 100,
                      height: 30,
                      child: InkWell(
                        onTap: () => setState(() => _selectedIndex = index),
                        child: Container(
                          alignment: Alignment.center,
                          width: 104,
                          height: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(38),
                            color: _selectedIndex == index
                                ? AppColors.primary
                                : AppColors.primaryVariant,
                          ),
                          child: Text(
                            title,
                            style: TextStyle(
                              color: _selectedIndex == index
                                  ? AppColors.white
                                  : AppColors.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
               SizedBox(height: MediaQuery.of(context).size.height * 0.044),
              Expanded(child: widgetOptions[_selectedIndex])
            ],
          ),
        ));
  }
}
