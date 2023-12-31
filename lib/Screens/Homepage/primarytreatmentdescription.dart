import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_doctor/models/primarytreatment.dart';

class PrimaryTreatmentDescription extends StatelessWidget {
  final PrimaryTreatmentData ptd;

  PrimaryTreatmentDescription(this.ptd);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/primary-treatment.jpg'),
              SizedBox(
                height: 10.h,
              ),
              Text('${ptd.title}',style: TextStyle(color: Colors.green, fontSize: 24, fontWeight: FontWeight.w800),),
              ExpansionTile(
                title: Text('বর্ণনা',style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w700),),
                children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Text('${ptd.define}',style: TextStyle(color: Colors.black, fontSize: 18),),
                  )
                ],
              ),
              ExpansionTile(
                title: Text('করণীয়',style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w700),),
                children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Text('${ptd.treatpt}',style: TextStyle(color: Colors.black, fontSize: 18),),
                  )
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
