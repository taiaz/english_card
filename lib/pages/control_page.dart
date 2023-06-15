import 'package:english_card/values/app_assets.dart';
import 'package:english_card/values/app_colors.dart';
import 'package:english_card/values/app_styles.dart';
import 'package:flutter/material.dart';

class ControlPage extends StatefulWidget {
  const ControlPage({super.key});

  @override
  State<ControlPage> createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage> {
  double sliderValue = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondColor,
      appBar: AppBar(
        backgroundColor: AppColors.secondColor,
        elevation: 0,
        title: Text(
          'Your control',
          style: AppStyles.h3.copyWith(
            color: AppColors.textColor,
            fontSize: 36,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset(AppAssets.leftArrow),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Spacer(),
            Text(
              'How much a number word at once?',
              style: AppStyles.h4.copyWith(
                color: AppColors.lightGrey,
                fontSize: 18,
              ),
            ),
            Spacer(),
            Text(
              '${sliderValue.toInt()}',
              style: AppStyles.h1.copyWith(
                color: AppColors.primaryColor,
                fontSize: 150,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Slider(
              value: sliderValue,
              min: 5,
              max: 100,
              divisions: 95,
              activeColor: AppColors.primaryColor,
              inactiveColor: AppColors.primaryColor,
              onChanged: (value) {
                print(value);
                setState(
                  () {
                    sliderValue = value;
                  },
                );
              },
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              alignment: Alignment.centerLeft,
              child: Text(
                'Size to set',
                style: AppStyles.h5.copyWith(
                  color: AppColors.textColor,
                ),
              ),
            ),
            Spacer(),
            Spacer(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
