import 'package:bmi_calculator/Components/SecondaryButton.dart';
import 'package:bmi_calculator/Controller/BmiController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AgeSelector extends StatelessWidget {
  const AgeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    BMIController bmiController = Get.put(BMIController());

    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      height: 200,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Age",
                style: TextStyle(
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.onSecondaryContainer),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text(
                    "${bmiController.age.value}",
                    style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onBackground),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SecondaryButton(
                  onPress: () {
                    bmiController.age.value++;
                  },
                  icon: Icons.add),
              SecondaryButton(
                  onPress: () {
                    bmiController.age.value--;
                  },
                  icon: Icons.remove),
            ],
          )
        ],
      ),
    );
  }
}
