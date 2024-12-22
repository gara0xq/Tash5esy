import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/controller/payments_controller.dart';
import 'package:tash5esy/utils/colors.dart';
import 'package:tash5esy/view/widgets/appointment_card.dart';
import 'package:tash5esy/view/widgets/test_card.dart';

class PaymetsScreen extends StatelessWidget {
  const PaymetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
     double height = MediaQuery.of(context).size.height;
    return GetBuilder<PaymentsController>(
      init: PaymentsController(),
      builder: (controller) {
        return Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Center(
                  child: Text(
                    "Costs & Payments",
                    style: const TextStyle(
                      color: secondary,
                      fontWeight: FontWeight.bold,
                      fontFamily: "lato",
                      fontSize: 26,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () => controller.setIndexKey(0),
                        highlightColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        child: Container(
                          height: 80,
                          margin: const EdgeInsets.all(15),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: controller.indexKey == 0
                                ? primary
                                : secondary,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            "Prices of Lab & X-Ray Tests ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontFamily: "lato",
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () => controller.setIndexKey(1),
                        highlightColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        child: Container(
                          height: 80,
                          margin: const EdgeInsets.all(15),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: controller.indexKey == 1
                                ? primary
                                : secondary,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            "Prices of Medical Appointments",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontFamily: "lato",
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height - 223,
                  child: ListView.builder(
                    itemCount: controller.indexKey == 0
                        ? controller.testModels.length
                        : controller.appointmentModels.length,
                    itemBuilder: (_, i) {
                      return controller.indexKey == 0
                          ? TestCard(model: controller.testModels[i])
                          : AppointmentCard(model: controller.appointmentModels[i]);
                    },
                  ),
                )
              ],
            ),
          ],
        );
      }
    );
  }
}
