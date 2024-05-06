import 'package:demo_s/main_fe/login/presentation_layer/controller_login.dart';
import 'package:demo_s/res/AppColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../data/route/Routes.dart';
import '../../../utils/weight/help_weight.dart';
import '../../../utils/weight_utils.dart';
import 'help_widget/common_testfield.dart';

class Login extends StatelessWidget {
  Login({super.key});

  LoginController controllerLogin = Get.put(LoginController());

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
                      label: "Name",
                      border: 8.r,
                      borderColor: Colors.transparent,
                      starIcon: "*",
                      addStar: true,
                      style: w500_14Poppins(color: AppColors.blackDark),
                      fillColor: AppColors.colorGray.withOpacity(0.15),
                      controller: controllerLogin.textControllerName,
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
                      controller: controllerLogin.textControllerEmail,
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


              SizedBox(height: 30,),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.dashBoard);
                  },
                  child: HelpWeight().buttonCreate(
                      "Login",
                      16.0,
                      AppColors.mainColor,
                      AppColors.blackDark,
                      AppColors.whiteColor)),
              SizedBox(height: 30,),
              GestureDetector(

                onTap: ()
                {
                  Navigator.pushNamed(context, Routes.signUp);

                },
                child: Text(
                  'SingUp',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: "Poppins",
                    color: AppColors.blackDark,
                    decoration: TextDecoration.none,
                    //  height: 1.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
