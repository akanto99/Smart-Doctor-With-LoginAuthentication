import 'package:flutter/material.dart';

class PrimaryTreatment extends StatelessWidget {
  const PrimaryTreatment({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2BAD93),
      body: Center(
        child: SizedBox(
          width: 487.0,
          height: 945.0,
          child: Stack(
            children: <Widget>[
              Positioned(
                right: 0,
                bottom: 0,
                child: SizedBox(
                  width: 412.0,
                  height: 945.0,
                  child: Column(
                    children: <Widget>[
                      Spacer(flex: 110),
                      Container(
                        width: 208.0,
                        height: 138.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32.0),
                          image: DecorationImage(
                            image: AssetImage(''),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Spacer(flex: 64),
                      Container(
                        alignment: Alignment(0.02, 0.16),
                        width: 412.0,
                        height: 632.67,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(35.0),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.white, const Color(0xFF2BAD93)],
                          ),
                        ),
                        child: SizedBox(
                          width: 359.0,
                          height: 632.67,
                          child: Column(
                            children: <Widget>[
                              Spacer(flex: 49),
                              Align(
                                alignment: Alignment(-0.96, 0.0),
                                child: Container(
                                  alignment: Alignment(0.02, 0.15),
                                  width: 120.0,
                                  height: 81.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        const Color(0xFF2BAD93),
                                        const Color(0xFF16574A)
                                      ],
                                    ),
                                  ),
                                  child: Text(
                                    'Matha \nBetha',
                                    style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  width: 359.0,
                                  height: 124.0,
                                  child: Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Spacer(flex: 2),
                                      Text(
                                        'Description',
                                        style: TextStyle(
                                          fontFamily: 'Segoe UI',
                                          fontSize: 16.0,
                                          color: const Color(0xFFF90101),
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Spacer(flex: 53),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: InkWell(
                                          onTap: () {
                                            //TODO: onTap Rectangle 3
                                            print('onTap Rectangle 3');
                                          },
                                          child: Container(
                                            alignment: Alignment(-0.24, 0.03),
                                            width: 120.0,
                                            height: 81.0,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(20.0),
                                              gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  const Color(0xFF2BAD93),
                                                  const Color(0xFF16574A)
                                                ],
                                              ),
                                            ),
                                            child: Text(
                                              'Fever\nMaleriya',
                                              style: TextStyle(
                                                fontFamily: 'Segoe UI',
                                                fontSize: 18.0,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Spacer(flex: 43),
                                      Align(
                                        alignment: Alignment(0.0, -0.5),
                                        child: Text(
                                          'Shape \nKata',
                                          style: TextStyle(
                                            fontFamily: 'Segoe UI',
                                            fontSize: 18.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(flex: 7),
                              Container(
                                alignment: Alignment(0.0, 0.06),
                                width: 359.0,
                                height: 416.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      const Color(0xFF2BAD93).withOpacity(0.78),
                                      Colors.white.withOpacity(0.69)
                                    ],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.16),
                                      offset: Offset(0, 3.0),
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                ),
                                child: Text.rich(
                                  TextSpan(
                                    style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 18.0,
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Matha Bethar Lokkhon:\n',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                        'Lorem Ipsum is simply dummy text of \nthe printing and typesetting industry. \nLorem Ipsum has been the industry\'s \nstandard dummy text ever since the \n1500s, \n',
                                      ),
                                      TextSpan(
                                        text: 'Matha Bethar Protikar:\n',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                        'when an unknown printer took \na galley of type and scrambled it to \nmake a type specimen book. It has \nsurvived not only five centuries, but \nalso the leap into electronic \n',
                                      ),
                                      TextSpan(
                                        text: 'Matha Bethar Medicine:\n',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                        'typesetting, remaining essentially \nunchanged. Lorem Ipsum \npassages.',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(flex: 36),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 89.0,
                top: 282.0,
                child: InkWell(
                  onTap: () {
                    //TODO: onTap Rectangle 1
                    print('onTap Rectangle 1');
                  },
                  child: Container(
                    width: 233.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.16),
                          offset: Offset(0, 3.0),
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 75.0,
                child: Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFF2EDFBC).withOpacity(0.64),
                  ),
                ),
              ),
              Positioned(
                top: 75.0,
                child: Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFF23FFA0).withOpacity(0.26),
                  ),
                ),
              ),
              Positioned(
                right: 105.0,
                top: 299.0,
                child: Text(
                  'Headache(Matha Betha)',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 19.0,
                    color: const Color(0xFF2BAD93),
                  ),
                ),
              ),
              Positioned(
                right: -12,
                top: 362.0,
                child: Container(
                  width: 120.0,
                  height: 81.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xFF2BAD93),
                        const Color(0xFF16574A)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
