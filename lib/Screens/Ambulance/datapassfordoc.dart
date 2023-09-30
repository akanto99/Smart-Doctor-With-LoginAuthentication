import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class DatapassforGen extends StatelessWidget {
  String name, number;

  DatapassforGen(this.name, this.number);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2BAD93),
      body: Column(children: [
        SizedBox(
          height: 50.h,
        ),
        Container(
          height: 15.h,
          width: double.infinity,
          child: Center(
            child: Text(
              'দ্রুত এম্বুলেন্স খুঁজুন',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
        Container(
          height: 30.h,
          width: double.infinity,
          child: Center(
            child: Text(
              'Find an ambulance easily & quickly',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
        Container(
          height: 150.h,
          width: 400.w,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: 400.h,
                  width: 400.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xFF2BAD93),
                  ),
                  child: Lottie.network(
                      "https://assets1.lottiefiles.com/packages/lf20_sy2feyup.json",
                      fit: BoxFit.fill),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Expanded(
          child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFF8F2F2),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(35.r),
                  topLeft: Radius.circular(35.r),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 25.h),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: Color(0xFF2BAD93),
                      ),
                      child: Center(
                          child: Text(
                        ' $name',
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.bold,color: Color(0xFFF8F2F2),
                        ),
                      )),
                    ),
                  ),
                  Container(
                    height: 130,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.r),
                      image: DecorationImage(
                          image: AssetImage(
                        'assets/images/ambu1.png',
                      )),
                    ),
                  ),
                  TextButton(
                    style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 48.w, vertical: 12.h),
                        textStyle: TextStyle(fontSize: 20.sp)),
                    child: Container(
                      height: 45.h,
                      width: 150.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white60,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white10,
                              spreadRadius: 10,
                              blurRadius: 20,
                            )
                          ]),
                      child: ListTile(
                        leading: Text(
                          'Call Now',
                        ),
                        trailing: Icon(Icons.call),
                      ),
                    ),
                    onPressed: () async {
                      await FlutterPhoneDirectCaller.callNumber(number);
                    },
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 93.w),
                    child: TextButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('শর্তাবলী ও খরচ এর বিস্তারিত দেখুন'),
                              content: Text(
                                  'ফি প্রদানের ক্ষেত্রে :\n১. দেশের সকল মেট্রোপলিটন শহর এলাকাসহ সকল পৌর এলাকায় ১ মাইল হতে ৫ মাইল অথবা ১ কিঃমিঃ হতে ৮ কিঃমিঃ পর্যন্ত ১০০(একশত) টাকা।\n২. ৫ মাইল এর ঊর্ধ্ব হইতে ১০ মাইল অথবা ৮ কিঃমিঃ হইতে ১৬ কিঃমিঃ পর্যন্ত ১৫০(একশত পঞ্চাশ) টাকা।\n৩. দূরবর্তী/আন্তঃজেলা কলের ক্ষেত্রে প্রতি মাইল ১৫(পনের) টাকা অথবা প্রতি কিঃমিঃ ৯(নয়) টাকা।\n৪. অবস্থান কলের ক্ষেত্রে অ্যাম্বুলেন্স গাড়ি দ্বারা রোগী পরিবহনকালে অবস্থান অপরিহার্য হলে প্রতি ঘন্টা বা অংশের জন্য ২০(বিশ) টাকা।\n৫. অক্সিজেন ব্যবহারের ক্ষেত্রে প্রতি সিলিন্ডার ৬০০(ছয়শত) টাকা।\n৬. সেতুর টোল পরিশোধ (প্রযোজ্য ক্ষেত্রে) রোগী কর্তৃক বহন করতে হবে।\nকলের ক্ষেত্রে :\n১. স্থানীয়ভাবে বা আন্তঃজেলা পর্যায়ে রোগী পরিবহনের নিমিত্তে জনসাধারনের জন্য অ্যাম্বুলেন্স সার্ভিস প্রদান\nকরা হয়।\n২. এ সার্ভিস এর আওতায় রোগীকে বাসা/ দুর্ঘটনা স্থল থেকে হাসপাতাল এবং হাসপাতাল থেকে বাসায়\nস্থানান্তর করা হয়।'),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.remove_red_eye_rounded,
                              size: 30,
                            ),
                            SizedBox(width: 10.w,),
                            Text('বিস্তারিত দেখুন', style: TextStyle(fontSize: 20.sp),)
                          ],
                        )
                    ),
                  ),
                ],
              )),
        ),
      ]),
    );
  }
}
