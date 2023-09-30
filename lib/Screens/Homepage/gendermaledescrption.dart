import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_doctor/models/malefemale.dart';

class GenderMaleDescription extends StatelessWidget {
  final MaleFemaleData gmd;

  GenderMaleDescription(this.gmd);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.r),
                    image: DecorationImage(
                      image: AssetImage("assets/images/sdlogo.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Text('${gmd.title}', style: TextStyle(color: Colors.green, fontSize: 25.sp, fontWeight: FontWeight.w800),),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Text('${gmd.define}', style: TextStyle(color: Colors.black, fontSize: 18),),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Text('${gmd.treatment}', style: TextStyle(color: Colors.black, fontSize: 18),),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Text('${gmd.medicine}', style: TextStyle(color: Colors.black, fontSize: 18),),
                ),
              ],
            ),
          ),
        ));
  }
}
