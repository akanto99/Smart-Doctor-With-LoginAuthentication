import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_doctor/models/naturaltreatmentdata.dart';

class NaturalTreatmentDescription extends StatelessWidget {
  final NaturalTreatmentData ntd;

  NaturalTreatmentDescription(this.ntd);

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
                  image: AssetImage(ntd.imageNTD!),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.w,bottom: 10.w),
              child: Text('${ntd.title}', style: TextStyle(color: Colors.green, fontSize: 24, fontWeight: FontWeight.w800),),
            ),
            ExpansionTile(
              title: Text('বর্ণনা',style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w700),),
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text('${ntd.define}', style: TextStyle(color: Colors.black, fontSize: 18),),
                )
              ],
            ),
            ExpansionTile(
              title: Text('উপকারিতা',style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w700),),
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text('${ntd.description}', style: TextStyle(color: Colors.black, fontSize: 18),),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

