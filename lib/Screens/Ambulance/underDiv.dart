import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_doctor/Screens/Ambulance/sub.dart';

class UnderDhaka extends StatelessWidget {
  const UnderDhaka({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2BAD93),
      body: Column(children: [
        SizedBox(
          height: 45.h,
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
            // color: Colors.white70,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: 150.h,
                  width: 400.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Image.asset("assets/images/ambu1.png"),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 50.h,
          width: 300.w,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                    height: 40.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Text(
                      'Under Division Of Dhaka',
                      style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ))),
                top: 5.h,
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(35.r),
                topLeft: Radius.circular(35.r),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Stack(
                      children: [
                        Positioned(
                          child: InkWell(
                            child: Card(
                              color: Color(0xFF2BAD93),
                              child: ListTile(
                                title: Center(
                                    child: Text("Dhaka zila \n( ঢাকা জেলা )",
                                        style: TextStyle(
                                            fontFamily: 'Segoe UI',
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white))),
                                trailing: Icon(Icons.double_arrow),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SubClass()));
                            },
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("Faridpur Zila \n( ফরিদপুর জেলা )",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SubClass1()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("Gazipur Zila \n( গাজীপুর জেলা )",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SubClass2()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("Gopalganj Zila \n( গোপালগঞ্জ জেলা )",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SubClass3()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text(
                                  "Kishoreganj Zila \n( কিশোরগঞ্জ জেলা )",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SubClass4()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("Madaripur Zila \n( মাদারীপুর জেলা )",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SubClass5()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("Manikganj Zila\n( মানিকগঞ্জ জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SubClass6()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text(
                                  "Munshiganj Zila \n( মুন্সিগঞ্জ জেলা )",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SubClass7()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text(
                                  "Narayanganj Zila \n(নারায়ণগঞ্জ জেলা )",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SubClass8()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("Narsingdi Zila \n( নরসিংদি জেলা )",
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SubClass9()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("Rajbari Zila \n(রাজবাড়ী জেলা )",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SubClass10()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("Shariatpur Zila \n(শরিয়তপুর জেলা )",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SubClass11()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("Tangail Zila \n(টাংগাইল  জেলা )",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SubClass12()));
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

//Chittagong
class UnderChittagong extends StatelessWidget {
  const UnderChittagong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2BAD93),
      body: Column(children: [
        SizedBox(
          height: 45.h,
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
            color: Colors.white70,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: 150.h,
                  width: 400.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Image.asset("assets/images/ambu1.png"),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 50.h,
          width: 340.w,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                    height: 40.h,
                    width: 340.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Text(
                          'Under Division Of Chittagong',
                          style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ))),
                top: 5.h,
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              // gradient: LinearGradient(
              //   begin: Alignment.topCenter,
              //   end: Alignment.bottomCenter,
              //   colors: [Colors.white, const Color(0xFF2BAD93)],
              // ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                topLeft: Radius.circular(35),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Stack(
                    children: [
                      Positioned(
                        child: InkWell(
                          child: Card(
                            color: Color(0xFF2BAD93),
                            child: ListTile(
                              title: Center(
                                  child: Text(
                                      "Chittagong Zila\n(চট্টগ্রাম জেলা)",
                                      style: TextStyle(
                                          fontFamily: 'Segoe UI',
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white))),
                              trailing: Icon(Icons.double_arrow),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Chatto1()));
                          },
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    child: Card(
                      color: Color(0xFF2BAD93),
                      child: ListTile(
                        title: Center(
                            child: Text("Bandarban Zila\n(বান্দরবন জেলা)",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))),
                        trailing: Icon(Icons.double_arrow),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Chatto2()));
                    },
                  ),
                  InkWell(
                    child: Card(
                      color: Color(0xFF2BAD93),
                      child: ListTile(
                        title: Center(
                            child: Text("Brahmanbaria",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))),
                        trailing: Icon(Icons.double_arrow),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Chatto3()));
                    },
                  ),
                  InkWell(
                    child: Card(
                      color: Color(0xFF2BAD93),
                      child: ListTile(
                        title: Center(
                            child: Text("Chandpur Zila\n(চাঁদপুর জেলা)",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))),
                        trailing: Icon(Icons.double_arrow),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Chatto4()));
                    },
                  ),
                  InkWell(
                    child: Card(
                      color: Color(0xFF2BAD93),
                      child: ListTile(
                        title: Center(
                            child: Text("Comilla Zila\n(কুমিল্লা জেলা)",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))),
                        trailing: Icon(Icons.double_arrow),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Chatto5()));
                    },
                  ),
                  InkWell(
                    child: Card(
                      color: Color(0xFF2BAD93),
                      child: ListTile(
                        title: Center(
                            child: Text("Cox's Bazar Zila\n( কক্সবাজার জেলা)",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))),
                        trailing: Icon(Icons.double_arrow),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Chatto6()));
                    },
                  ),
                  InkWell(
                    child: Card(
                      color: Color(0xFF2BAD93),
                      child: ListTile(
                        title: Center(
                            child: Text("Feni Zila\n(ফেনী জেলা)",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))),
                        trailing: Icon(Icons.double_arrow),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Chatto7()));
                    },
                  ),
                  InkWell(
                    child: Card(
                      color: Color(0xFF2BAD93),
                      child: ListTile(
                        title: Center(
                            child: Text("Khagrachhari Zila\n(খাগড়াছড়ি জেলা)",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))),
                        trailing: Icon(Icons.double_arrow),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Chatto8()));
                    },
                  ),
                  InkWell(
                    child: Card(
                      color: Color(0xFF2BAD93),
                      child: ListTile(
                        title: Center(
                            child: Text(" Lakshmipur Zila\n( লক্ষ্মীপুর জেলা )",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))),
                        trailing: Icon(Icons.double_arrow),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Chatto9()));
                    },
                  ),
                  InkWell(
                    child: Card(
                      color: Color(0xFF2BAD93),
                      child: ListTile(
                        title: Center(
                            child: Text(" Noakhali Zila\n(নোয়াখালী জেলা)",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))),
                        trailing: Icon(Icons.double_arrow),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Chatto10()));
                    },
                  ),
                  InkWell(
                    child: Card(
                      color: Color(0xFF2BAD93),
                      child: ListTile(
                        title: Center(
                            child: Text("Rangamati Zila\n(রাঙ্গামাটি জেলা)",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))),
                        trailing: Icon(Icons.double_arrow),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Chatto11()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

//Barishal
class UnderBarishal extends StatelessWidget {
  const UnderBarishal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2BAD93),
      body: Column(children: [
        SizedBox(
          height: 45.h,
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
            color: Colors.white70,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: 150.h,
                  width: 400.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Image.asset("assets/images/ambu1.png"),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 50.h,
          width: 300.w,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                    height: 40.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Text(
                          'Under Division Of Barisal',
                          style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ))),
                top: 5.h,
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                topLeft: Radius.circular(35),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Stack(
                      children: [
                        Positioned(
                          child: InkWell(
                            child: Card(
                              color: Color(0xFF2BAD93),
                              child: ListTile(
                                title: Center(
                                    child: Text("Barisal Zila\n(বরিশাল জেলা)",
                                        style: TextStyle(
                                            fontFamily: 'Segoe UI',
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white))),
                                trailing: Icon(Icons.double_arrow),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Baris1()));
                            },
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("Barguna Zila\n( বরগুনা জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Baris2()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("Bhola Zila\n(ভোলা জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Baris3()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("Jhalokati Zila\n( ঝালকাঠি জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Baris4()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("Patuakhali Zila\n(পটুয়াখালী জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Baris1()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("Pirojpur Zila\n(পিরোজপুর জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Baris1()));
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

//Khulna
class UnderKhulna extends StatelessWidget {
  const UnderKhulna({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2BAD93),
      body: Column(children: [
        SizedBox(
          height: 45.h,
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
            color: Colors.white70,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: 150.h,
                  width: 400.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Image.asset("assets/images/ambu1.png"),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 50.h,
          width: 300.w,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                    height: 40.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Text(
                          'Under Division Of Khulna',
                          style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ))),
                top: 5.h,
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              // gradient: LinearGradient(
              //   begin: Alignment.topCenter,
              //   end: Alignment.bottomCenter,
              //   colors: [Colors.white, const Color(0xFF2BAD93)],
              // ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                topLeft: Radius.circular(35),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Stack(
                      children: [
                        Positioned(
                          child: InkWell(
                            child: Card(
                              color: Color(0xFF2BAD93),
                              child: ListTile(
                                title: Center(
                                    child: Text("Khulna Zila\n(খুলনা জেলা)",
                                        style: TextStyle(
                                            fontFamily: 'Segoe UI',
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white))),
                                trailing: Icon(Icons.double_arrow),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Khulna1()));
                            },
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("Chuadanga Zila\n(চুয়াডাঙ্গা জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Khulna2()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("Jessore Zila\n(যশোর জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Khulna3()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("Bagerhat Zila\n(বাগেরহাট জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Khulna4()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("Kushtia Zila\n(কুষ্টিয়া জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Khulna5()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("Magura Zila\n(মাগুরা জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Khulna6()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("Meherpur Zila\n(মেহেরপুর জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Khulna7()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("Narail Zila\n(নড়াইল জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Khulna8()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("Satkhira Zila\n(সাতক্ষীরা জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Khulna9()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text(" Jhenaidaha\n(ঝিনাইদহ জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Khulna10()));
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

//Mymensingh
class UnderMoimonShingh extends StatelessWidget {
  const UnderMoimonShingh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2BAD93),
      body: Column(children: [
        SizedBox(
          height: 45.h,
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
            color: Colors.white70,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: 150.h,
                  width: 400.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Image.asset("assets/images/ambu1.png"),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 50.h,
          width: 340.w,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                    height: 40.h,
                    width: 340.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Text(
                          'Under Division Of Mymensingh',
                          style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ))),
                top: 5.h,
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                topLeft: Radius.circular(35),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Stack(
                      children: [
                        Positioned(
                          child: InkWell(
                            child: Card(
                              color: Color(0xFF2BAD93),
                              child: ListTile(
                                title: Center(
                                    child: Text(
                                        "Mymensingh Zila\n(ময়মনসিংহ জেলা)",
                                        style: TextStyle(
                                            fontFamily: 'Segoe UI',
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white))),
                                trailing: Icon(Icons.double_arrow),
                              ),
                            ),
                            onTap: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>SubClass()));
                            },
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("Jamalpur Zila\n(জামালপুর জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Mymen2()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("Netrokona Zila\n(নেত্রকোনা জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Mymen3()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("Sherpur Zila\n(শেরপুর জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Mymen4()));
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

//RajhShahi
class UnderRazshahi extends StatelessWidget {
  const UnderRazshahi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2BAD93),
      body: Column(children: [
        SizedBox(
          height: 45.h,
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
            color: Colors.white70,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: 150.h,
                  width: 400.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Image.asset("assets/images/ambu1.png"),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 50.h,
          width: 300.w,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                    height: 40.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Text(
                          'Under Division Of Rajshahi',
                          style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ))),
                top: 5.h,
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              // gradient: LinearGradient(
              //   begin: Alignment.topCenter,
              //   end: Alignment.bottomCenter,
              //   colors: [Colors.white, const Color(0xFF2BAD93)],
              // ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                topLeft: Radius.circular(35),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Stack(
                      children: [
                        Positioned(
                          child: InkWell(
                            child: Card(
                              color: Color(0xFF2BAD93),
                              child: ListTile(
                                title: Center(
                                    child: Text(
                                        "   Rajshahi Zila\n(রাজশাহী জেলা)",
                                        style: TextStyle(
                                            fontFamily: 'Segoe UI',
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white))),
                                trailing: Icon(Icons.double_arrow),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Raj1()));
                            },
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("  Bogra Zila\n(বগুড়া জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Raj2()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("   Joypurhat Zila\n(জয়পুরহাট জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Raj3()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text(" Naogaon Zila\n(নওগাঁ জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Raj4()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text(
                                  "       Nawabganj Zila\n( চাঁপাইনবাবগঞ্জ জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Raj5()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("   Natore Zila\n(নাটোর জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Raj6()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("   Pabna Zila\n(পাবনা জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Raj7()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text(
                                  "     Sirajganj Zila\n(সিরাজগঞ্জ জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Raj8()));
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

// //RangPur
class UnderRangpur extends StatelessWidget {
  const UnderRangpur({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2BAD93),
      body: Column(children: [
        SizedBox(
          height: 45.h,
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
            color: Colors.white70,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: 150.h,
                  width: 400.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Image.asset("assets/images/ambu1.png"),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 50.h,
          width: 300.w,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                    height: 40.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Text(
                          'Under Division Of Rangpur',
                          style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ))),
                top: 5.h,
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              // gradient: LinearGradient(
              //   begin: Alignment.topCenter,
              //   end: Alignment.bottomCenter,
              //   colors: [Colors.white, const Color(0xFF2BAD93)],
              // ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                topLeft: Radius.circular(35),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Stack(
                      children: [
                        Positioned(
                          child: InkWell(
                            child: Card(
                              color: Color(0xFF2BAD93),
                              child: ListTile(
                                title: Center(
                                    child: Text(" Rangpur Zila\n(রংপুর জেলা)",
                                        style: TextStyle(
                                            fontFamily: 'Segoe UI',
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white))),
                                trailing: Icon(Icons.double_arrow),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Rang1()));
                            },
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("     Dinajpur Zila\n(দিনাজপুর জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Rang2()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text(" Gaibandha Zila\n(গাইবান্ধা জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Rang3()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("  Kurigram Zila\n(কুড়িগ্রাম জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Rang4()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text(
                                  "   Lalmonirhat Zila\n(লালমনিরহাট জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Rang5()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text(
                                  "   Nilphamari Zila\n(নীলফামারীর জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Rang6()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text(" Panchagarh Zila\n (পঞ্চগড় জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Rang7()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text(" Thakurgaon Zila\n(ঠাকুরগাঁও জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Rang8()));
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

// //Syhlet
class UnderSyhlet extends StatelessWidget {
  const UnderSyhlet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2BAD93),
      body: Column(children: [
        SizedBox(
          height: 45.h,
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
            color: Colors.white70,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: 150.h,
                  width: 400.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Image.asset("assets/images/ambu1.png"),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 50.h,
          width: 300.w,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                    height: 40.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Text(
                          'Under Division Of Sylhet',
                          style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ))),
                top: 5.h,
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                topLeft: Radius.circular(35),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Stack(
                      children: [
                        Positioned(
                          child: InkWell(
                            child: Card(
                              color: Color(0xFF2BAD93),
                              child: ListTile(
                                title: Center(
                                    child: Text("   Sylhet Zila\n(সিলেট জেলা)",
                                        style: TextStyle(
                                            fontFamily: 'Segoe UI',
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white))),
                                trailing: Icon(Icons.double_arrow),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Sylhet1()));
                            },
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text("  Habiganj Zila\n(হবিগঞ্জ জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Sylhet2()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text(
                                  "    Maulvi Bazar Zila\n(মৌলভিবাজারা জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Sylhet3()));
                      },
                    ),
                    InkWell(
                      child: Card(
                        color: Color(0xFF2BAD93),
                        child: ListTile(
                          title: Center(
                              child: Text(" Sunamganj Zila\n(সুনামগঞ্জ জেলা)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))),
                          trailing: Icon(Icons.double_arrow),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Sylhet4()));
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
