import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_doctor/Screens/Homepage/naturaltreatmentdescription.dart';
import 'package:smart_doctor/models/naturaltreatmentdata.dart';

class NaturalTreatmentList extends StatefulWidget {
  const NaturalTreatmentList({Key? key}) : super(key: key);

  @override
  _NaturalTreatmentListState createState() => _NaturalTreatmentListState();
}

class _NaturalTreatmentListState extends State<NaturalTreatmentList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: const Color(0xFF2BAD93),
          child: Stack(children: [
            Positioned(
              top: 15.h,
              left: 75.w,
              child: Container(
                width: 210.w,
                height: 45.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.16),
                      offset: Offset(0, 3.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'Natural Treatment',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp,
                      color: const Color(0xFF2BAD93),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 80.h),
              padding: EdgeInsets.only(top: 10.h),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color(0xffffffff),
                    Color(0xFF2BAD93),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(35.r),
                  topLeft: Radius.circular(35.r),
                ),
              ),
              child: ListView.builder(
                  itemCount: naturalTreatmentDataList.length,
                  itemBuilder: (context, index) {
                    NaturalTreatmentData ntd = naturalTreatmentDataList[index];
                    return Container(
                      margin: EdgeInsets.only(left: 20.w, right: 20.w, top: 12.h),
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.r),
                        image: DecorationImage(
                          image: AssetImage(ntd.imageNTD!),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: ListTile(
                        title: Text(
                          ntd.title!,
                          style: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.black,
                              backgroundColor: Colors.white38,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      NaturalTreatmentDescription(ntd)));
                        },
                      ),
                    );
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}
