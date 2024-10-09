import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:softweb_task/views/verify_email.dart';
import 'package:softweb_task/widgets/custom_text_field.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(24, 50.h, 24, 20),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xFF141414),
          // Color.fromARGB(255, 172, 130, 91),
          Color(0xFFEF5858)
        ], stops: [
          0.85,
          1
        ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: const Icon(Iconsax.arrow_left,
                              color: Color(0xFFB9B9B9))),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Back",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: const Color(0xFFB9B9B9)),
                      ),
                    ],
                  ),
                  Text(
                    'Sign in instead',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: const Color.fromARGB(255, 186, 85, 85),
                        decorationThickness: 2,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: const Color.fromARGB(255, 148, 79, 79)),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Create an account',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 29.sp,
                    color: const Color(0xFFFFFFFF)),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'First Name',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const CustomTextField(hintText: 'First Name'),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Last Name',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const CustomTextField(hintText: 'Last Name'),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Phone Number',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              const CustomTextField(
                hintText: 'Enter phone number',
                inputType: TextInputType.number,
              ),
              SizedBox(
                height: 15.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email address',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              const CustomTextField(
                hintText: 'Enter Email address',
              ),
              SizedBox(
                height: 15.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Create Password',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              const CustomTextField(
                hintText: 'Enter Password',
                suffixIcon: Icons.remove_red_eye,
                showSuffixIcon: true,
              ),
              SizedBox(
                height: 15.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Referral Code(Optional)',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              const CustomTextField(
                hintText: 'Enter Referral Code',
                suffixIcon: Icons.remove_red_eye,
                showSuffixIcon: true,
              ),
              SizedBox(
                height: 30.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const VerifyEmail(),
                      transition: Transition.upToDown);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 48.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      gradient: const LinearGradient(colors: [
                        Color(0xFFEF5858),
                        Color(0xFFEFA058),
                      ], stops: [
                        0.7,
                        1
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                  child: Text(
                    'Next',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              const LinearProgressIndicator(
                value: 0.5,
                color: Colors.white,
                backgroundColor: Colors.grey,
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                'Account information',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFFA4A4A4)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
