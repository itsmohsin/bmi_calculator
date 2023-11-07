import 'package:bmi_calculator/Controller/BmiController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HeightSelector extends StatelessWidget {
  const HeightSelector({super.key});

  @override
  Widget build(BuildContext context) {
    BMIController bmiController = Get.put(BMIController());

    var _value;
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Height (CM)",
                  style: TextStyle(
                      fontSize: 18,
                      color:
                          Theme.of(context).colorScheme.onSecondaryContainer),
                ),
              ],
            ),
            Expanded(
              child: Obx(() => SfSlider.vertical(
                    min: 0,
                    max: 200,
                    value: bmiController.height.value,
                    interval: 25,
                    showTicks: true,
                    showLabels: true,
                    enableTooltip: true,
                    minorTicksPerInterval: 1,
                    activeColor: Theme.of(context).colorScheme.primary,
                    inactiveColor:
                        Theme.of(context).colorScheme.primary.withOpacity(0.2),
                    onChanged: (dynamic value) {
                      bmiController.height.value = value;
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
