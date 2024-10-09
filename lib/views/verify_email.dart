import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:softweb_task/views/bottom_nav.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Text(
              'Please enter the OTP sent to tolu.ab19@gmail.com',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  color: const Color(0xFFFFFFFF)),
            ),
            SizedBox(height: 20.h),
            Container(
              height: 50.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFF515151)),
                  borderRadius: BorderRadius.circular(8.r)),
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
            const LinearProgressIndicator(
              value: 0.5,
              color: Colors.white,
              backgroundColor: Colors.grey,
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
