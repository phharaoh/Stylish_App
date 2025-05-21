import 'package:flutter/material.dart';
import '../Manager/Cubit/product_state.dart';
import '../Manager/Cubit/product_cubit.dart';
import '../Widget/increse_decrese_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_app/core/styles/colors.dart';
import '../../../core/Utilz/Widgets/custom_curvedButton.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return CounterCubit();
      },
      child: BlocBuilder<CounterCubit, CounterState>(builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Product'),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 35.0, right: 35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: MediaQuery.of(context).size.height * .308,
                    width: double.infinity,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.asset(
                      'lib/core/assets/images/item.png',
                      fit: BoxFit.fill,
                    )),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Mens Starry',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                const Text(
                  'Vision Alta Men’s Shoes Size\n(All Colours) Mens Starry Sky Printed Shirt 100% Cotton Fabric',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Row(
                  children: [
                    Text(
                      '${context.read<CounterCubit>().price} \$',
                      style: const TextStyle(
                          color: AppColors.primary, fontSize: 20),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OperatedButton(
                            onTap: () {
                              context.read<CounterCubit>().decrement();
                            },
                            color: AppColors.primaryVariant,
                            icon: Icons.remove,
                          ),
                          Text(
                            state.count.toString(),
                          ),
                          OperatedButton(
                            onTap: () {
                              context.read<CounterCubit>().increment();
                            },
                            color: AppColors.primary,
                            icon: Icons.add,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomCurElvButt(onPressed: () {}, text: 'Add to Card')
              ],
            ),
          ),
        );
      }),
    );
  }
}
