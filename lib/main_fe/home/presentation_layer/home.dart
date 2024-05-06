import 'package:demo_s/res/AppColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../login/presentation_layer/controller_login.dart';
import '../../singup/presentation_layer/controller_singup.dart';

class Home extends StatelessWidget {
   Home({super.key});


  SingUpController controller=Get.put(SingUpController());
  LoginController controllerLogin = Get.put(LoginController());



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.appBarColor1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome To Home Page",
                style: TextStyle(
                    color: AppColors.blackDark,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.sp),
              ),


              SizedBox(height: 50.h,),


              Text(
                "Name : ${controllerLogin.textControllerName.text.isNotEmpty?controllerLogin.textControllerName.text:controller.textControllerName.text}",
                style: TextStyle(
                    color: AppColors.blackDark,
                    fontWeight: FontWeight.w500,
                    fontSize: 15.sp),
              ),

              SizedBox(height: 10.h,),

              Text(
                "EmailId : ${controllerLogin.textControllerEmail.text.isNotEmpty?controllerLogin.textControllerEmail.text:controller.textControllerEmail.text}",
                style: TextStyle(
                    color: AppColors.blackDark,
                    fontWeight: FontWeight.w500,
                    fontSize: 15.sp),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
