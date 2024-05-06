import 'package:demo_s/main_fe/singup/presentation_layer/controller_singup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../data/route/Routes.dart';
import '../../../res/AppColor.dart';
import '../../../utils/weight/help_weight.dart';
import '../../../utils/weight_utils.dart';
import '../../login/presentation_layer/help_widget/common_testfield.dart';

class SingUp extends StatelessWidget {
   SingUp({super.key});

  SingUpController controller=Get.put(SingUpController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(


          body: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.colorPrimary),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding:
                    EdgeInsets.only(left: 15.0.w, right: 15.w, bottom: 15.h),
                    child: CommonTextFormField(
                        autoValid: true,
                        label: "Enter Name",
                        border: 8.r,
                        borderColor: Colors.transparent,
                        starIcon: "*",
                        addStar: true,
                        style: w500_14Poppins(color: AppColors.blackDark),
                        fillColor: AppColors.colorGray.withOpacity(0.15),
                        controller: controller.textControllerName,
                        hintText: 'Enter Name',
                        keyboardType: TextInputType.emailAddress,
                        inputAction: TextInputAction.done,
                        labelStyle: w500_14Poppins(),
                        validator: (value) {
                          if (value!.isNotEmpty &&
                              !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value)) {
                            return "Email is invalid";
                          }
                          return null;
                        })),
                Padding(
                    padding:
                    EdgeInsets.only(left: 15.0.w, right: 15.w, bottom: 15.h),
                    child: CommonTextFormField(
                        autoValid: true,
                        label: "Email",
                        border: 8.r,
                        borderColor: Colors.transparent,
                        starIcon: "*",
                        addStar: true,
                        style: w500_14Poppins(color: AppColors.blackDark),
                        fillColor: AppColors.colorGray.withOpacity(0.15),
                        controller: controller.textControllerEmail,
                        hintText: 'Enter Email ID',
                        keyboardType: TextInputType.emailAddress,
                        inputAction: TextInputAction.done,
                        labelStyle: w500_14Poppins(),
                        validator: (value) {
                          if (value!.isNotEmpty &&
                              !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value)) {
                            return "Email is invalid";
                          }
                          return null;
                        })),

                Padding(
                    padding:
                    EdgeInsets.only(left: 15.0.w, right: 15.w, bottom: 15.h),
                    child: CommonTextFormField(
                        autoValid: true,
                        label: "Enter Number",
                        border: 8.r,
                        borderColor: Colors.transparent,
                        starIcon: "*",
                        addStar: true,
                        style: w500_14Poppins(color: AppColors.blackDark),
                        fillColor: AppColors.colorGray.withOpacity(0.15),
                        controller: controller.textControllerNumber,
                        hintText: 'Enter Number',
                        keyboardType: TextInputType.emailAddress,
                        inputAction: TextInputAction.done,
                        labelStyle: w500_14Poppins(),
                        validator: (value) {
                          if (value!.isNotEmpty &&
                              !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value)) {
                            return "Email is invalid";
                          }
                          return null;
                        })),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.dashBoard);
                    },
                    child: HelpWeight().buttonCreate(
                        "SingUp",
                        16.0,
                        AppColors.mainColor,
                        AppColors.blackDark,
                        AppColors.whiteColor)),
              ],
            ),
          ),
        ),
      );
  }
}
