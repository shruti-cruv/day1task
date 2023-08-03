import 'package:cruv/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'THE RAJPUT ROOM',
            style: SafeGoogleFont('JetBrains Mono',
                fontSize: 20.sp, fontWeight: FontWeight.w400),
          ),
        ),
        bottom: PreferredSize(
            child: Text(
              "Rambagh Palace",
              style: SafeGoogleFont('PP Mori',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000).withOpacity(0.5)),
            ),
            preferredSize: Size.zero),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Color(0xff4200FF),
                      width: 90.w,
                      height: 90.h,
                      child: Center(
                          child: Text(
                        '03',
                        style: SafeGoogleFont('PP Mori',
                            fontSize: 40.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w200),
                      )),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        '     03 items',
                        style: SafeGoogleFont('PP Mori',
                            fontSize: 14.sp, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        '  Change',
                        style: SafeGoogleFont(
                          'PP Mori',
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                '₹ 375  ',
                style: SafeGoogleFont('PP Mori',
                    fontSize: 20.sp, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Divider(
            height: 30.h,
          ),
          listtile(
              'DELIVERY FEE',
              'Rambagh Palace, H-1B, Azkaban Facility\nfor Muggles, 304098',
              '₹ 30'),
          Divider(
            height: 30.h,
          ),
          listtile(
              'TAXES AND CHARGES',
              'Some info about taxes and service\ncharges for transparency',
              '₹ 30'),
          Divider(
            height: 30.h,
          ),
          listtile('To Pay', '', '₹ 435'),
          Divider(),
          Container(
            width: 490.w,
            height: 250.h,
            child: Stack(
              alignment: AlignmentDirectional.bottomStart,
              children: <Widget>[
                Positioned(
                  bottom: 0,
                  child: Image.asset('assets/map.png'),
                ),
                Positioned(
                  top: 200.h,
                  left: 100.w,
                  child: Container(
                    width: 173.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                        color: Color(0xff0057FF),
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '  PROCEED TO PAY',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          CupertinoIcons.arrow_right_circle_fill,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 20.h,
                  left: 40.w,
                  child: Text(
                    'ESTIMATED DELIVERY TIME',
                    style: SafeGoogleFont('JetBrains Mono',
                        fontSize: 20.sp, fontWeight: FontWeight.w200),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 110,
                  child: Text(
                    '25 MINS',
                    style: SafeGoogleFont('PP Editorial New',
                        fontSize: 40.sp,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ListTile listtile(String txt, String txt1, String txt2) {
    return ListTile(
      title: Text(
        txt,
        style: SafeGoogleFont('JetBrains Mono',
            fontSize: 20.sp, fontWeight: FontWeight.w400),
      ),
      subtitle: Text(
        txt1,
        style: SafeGoogleFont('PP Mori',
            fontSize: 15.sp, fontWeight: FontWeight.w400),
      ),
      trailing: Text(
        txt2,
        style: SafeGoogleFont('PP Mori',
            fontSize: 15.sp, fontWeight: FontWeight.w600),
      ),
    );
  }
}
