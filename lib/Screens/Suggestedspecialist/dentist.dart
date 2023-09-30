import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dentist extends StatelessWidget {
  static Color gredient1= Color(0xFFFFFFFF);
  static Color gredient2= Color(0xFF7FF2DB);
  static Color color1 =  Color(0xFF2EDFBC);
  static Color color2 =  Color(0xFF2BAD93);
  static Color shadowColor1= Color.fromRGBO(0, 0, 0, 0.1);
  static Color shadowColor2= Color.fromRGBO(255, 255, 255, 0.5);

  final dentist=[
    {'name':'Prof. Dr. A KM Asifuzzaman','surname':'BDS (Raj), PGT (Oral Surgery), Advanced Endodontic Training (Malaysia)','location':'Dhap','hosName':'Oral And Dental Care'},
    {'name':'Asst. Prof. Dr. A K M Salahuddin (Sowpan)','surname':'BDS, MS','location':'O.R. Nizam Road','hosName':'Core Dental'},
    {'name':'Dr. AK M Shamsuzzaman','surname':'DDTS, SMF','location':'Station Road','hosName':'Erina diagnostic Center and Nursing Home.'},
    {'name':'Dr. A R Khan','surname':'BDS, PGT','location':'Bogra Sadar','hosName':'Maleka Nursing Home & Diagnostic Center.'},
    {'name':'Dr. A.K.M Arifur Rahman','surname':'BDS, Dental Surgeon','location':'O.R. Nizam Road','hosName':'Chittagong Metropolitan Hospital'},
    {'name':'Dr. A.K.M. Mujibur Rahman','surname':'BDS, BCS','location':'Shibbari Mor','hosName':'Asha Dental Hospital.'},
    {'name':'Asst. Prof. Dr. Abdul Alim','surname':'BDS, MS','location':'Tejgaon','hosName':'MH Samorita Hospital & Medical College'},
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFF2BAD93),
      body: SafeArea(child: Column(
        children: [
          SizedBox(
            height: 180,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(left: 0.0,right: 0.0,top: 0.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(18.r),bottomLeft: Radius.circular(18.r)),
                      image: DecorationImage(
                        image: AssetImage('assets/images/suggsp/dental.jpg'),
                        fit: BoxFit.cover,
                      ),
                      // shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: color1,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28.0),
                  topRight: Radius.circular(28.0),
                ),
              ),
              child: Column(
                  children: [
                    SizedBox(
                      height: 5.0,
                    ),
                    Center(
                      child: Container(
                          width: MediaQuery.of(context).size.width/1.5,
                          height: 60.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              'Dentist',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 24.0,
                                color: const Color(0xFF005A87),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )
                      ),
                    ),
                    Expanded(
                      child: Padding(
                          padding: EdgeInsets.only(top: 20,right: 12,left: 12),
                          child: ListView.builder(
                              itemCount: dentist.length,
                              itemBuilder: (context, index){
                                return Container(
                                  margin: EdgeInsets.only(bottom: 10.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.15),
                                        offset: Offset(6.0, 6.0),
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                  ),
                                  child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8.0)
                                      ),
                                      color: Colors.white,
                                      shadowColor: shadowColor1,
                                      child: ListTile(
                                        title: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              dentist[index]['name']!,
                                              style: TextStyle(
                                                fontFamily: 'Segoe UI',
                                                fontSize: 20.0,
                                                color: const Color(0xFF005A87),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              dentist[index]['surname']!,
                                              style: TextStyle(
                                                fontFamily: 'Segoe UI',
                                                fontSize: 16.0,
                                                color: const Color(0xFF005A87).withOpacity(0.7),
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              dentist[index]['location']!,
                                              style: TextStyle(
                                                fontFamily: 'Segoe UI',
                                                fontSize: 16.0,
                                                color: const Color(0xFF005A87).withOpacity(0.7),
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              dentist[index]['hosName']!,
                                              style: TextStyle(
                                                fontFamily: 'Segoe UI',
                                                fontSize: 16.0,
                                                color: const Color(0xFF005A87),
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                  ),
                                );
                              })

                      ),
                    ),
                  ]
              ),
            ),
          ),
        ],
      )),
    );
  }
}
