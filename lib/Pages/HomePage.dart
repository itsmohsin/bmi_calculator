import 'package:bmi_calculator/Components/AgeSelector.dart';
import 'package:bmi_calculator/Components/HeightSelector.dart';
import 'package:bmi_calculator/Components/PrimaryButon.dart';
import 'package:bmi_calculator/Components/ThemeChangeButton.dart';
import 'package:bmi_calculator/Components/WeightSelector.dart';
import 'package:bmi_calculator/Controller/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              ThemeChangeButton(),
              Row(
                children: [
                  Text(
                    "Welcome 👻",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    " BMI Calculator",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  PrimaryButton(
                    icon: Icons.male,
                    btnName: "MALE",
                    onPress: () {},
                  ),
                  SizedBox(width: 20),
                  PrimaryButton(
                    icon: Icons.female,
                    btnName: "FEMALE",
                    onPress: () {},
                  ),
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeightSelector(),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          WeightSelector(),
                          SizedBox(height: 35),
                          AgeSelector(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 50,
                child: PrimaryButton(
                  icon: Icons.done,
                  btnName: "Let's Go",
                  onPress: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
