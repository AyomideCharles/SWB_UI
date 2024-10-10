import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:softweb_task/views/bottom_nav.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({super.key});

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  String currentText = "";
  TextEditingController firstThreeController = TextEditingController();
  TextEditingController lastThreeController = TextEditingController();

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
          Color.fromARGB(255, 244, 202, 164)
        ], stops: [
          0.90,
          1,
        ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(Icons.navigate_before,
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
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Verify your email',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 29.sp,
                  color: const Color(0xFFFFFFFF)),
            ),
            SizedBox(
              height: 15.h,
            ),
            RichText(
              text: TextSpan(
                text: 'Please enter the OTP sent to ',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'AeonikTRIAL',
                    color: const Color(0xFFB9B9B9)),
                children: <TextSpan>[
                  TextSpan(
                    text: 'tolu.ab19@gmail.com',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'AeonikTRIAL',
                        color: const Color(0xFFFFFFFF)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: PinCodeTextField(
                    appContext: context,
                    length: 3,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 50,
                        activeFillColor: const Color(0xFF292929),
                        inactiveFillColor: const Color(0xFF292929),
                        activeColor: const Color(0xFF515151),
                        inactiveColor: const Color(0xFF515151),
                        selectedFillColor: const Color(0xFF292929),
                        selectedColor: const Color(0xFF515151)),
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    animationDuration: const Duration(milliseconds: 300),
                    backgroundColor: Colors.transparent,
                    enableActiveFill: true,
                    keyboardType: TextInputType.number,
                    controller: firstThreeController,
                    onCompleted: (v) {},
                    onChanged: (value) {
                      setState(() {
                        currentText = value;
                      });
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    "-",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: PinCodeTextField(
                    appContext: context,
                    length: 3,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 50,
                        activeFillColor: const Color(0xFF292929),
                        inactiveFillColor: const Color(0xFF292929),
                        activeColor: const Color(0xFF515151),
                        inactiveColor: const Color(0xFF515151),
                        selectedFillColor: const Color(0xFF292929),
                        selectedColor: const Color(0xFF515151)),
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    animationDuration: const Duration(milliseconds: 300),
                    backgroundColor: Colors.transparent,
                    enableActiveFill: true,
                    keyboardType: TextInputType.number,
                    controller: lastThreeController,
                    onCompleted: (v) {},
                    onChanged: (value) {
                      setState(() {
                        currentText = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Get.to(() => const BottomNav(),
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
                  'Verify email',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 160,
                  height: 2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.r)),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  width: 160,
                  height: 2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.r)),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Center(
              child: Text(
                'Email verification',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFFA4A4A4)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
