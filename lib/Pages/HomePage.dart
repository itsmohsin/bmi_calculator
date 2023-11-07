import 'package:bmi_calculator/Components/AgeSelector.dart';
import 'package:bmi_calculator/Components/HeightSelector.dart';
import 'package:bmi_calculator/Components/PrimaryButon.dart';
import 'package:bmi_calculator/Components/SubmitButton.dart';
import 'package:bmi_calculator/Components/ThemeChangeButton.dart';
import 'package:bmi_calculator/Components/WeightSelector.dart';
import 'package:bmi_calculator/Controller/BmiController.dart';
import 'package:bmi_calculator/Pages/ResultPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    BMIController bmiConroller = Get.put(BMIController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const ThemeChangeButton(),
              Row(
                children: [
                  Text(
                    "Welcome 😊",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "BMI Calculator",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  PrimaryButton(
                    onPress: () {
                      bmiConroller.genderHandle("MALE");
                    },
                    icon: Icons.male,
                    btnName: "MALE",
                  ),
                  const SizedBox(width: 20),
                  PrimaryButton(
                    onPress: () {
                      bmiConroller.genderHandle("FEMALE");
                    },
                    icon: Icons.female,
                    btnName: "FEMALE",
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeightSelector(),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          WeightSelector(),
                          AgeSelector(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SubmitButton(
                onPress: () {
                  bmiConroller.CalculateBMI();
                  Get.to(const ResultPage());
                },
                btnName: "LETS GO",
                icon: Icons.done_all_rounded,
              )
            ],
          ),
        ),
      ),
    );
  }
}
