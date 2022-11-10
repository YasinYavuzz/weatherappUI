import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:weatherappui/core/app_assets.dart';
import 'package:weatherappui/core/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 2.h,
      ),
      body: Column(
        children: [
          Container(
            width: 100.w,
            height: 5.h,
            decoration: BoxDecoration(
                //color: Colors.red
                ),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 3.h),
                SvgPicture.asset(
                  AppAssets.location,
                  height: 2.8.h,
                ),
                SizedBox(
                  width: 2.5.h,
                ),
                Container(
                  //alignment: Alignment.topRight,
                  width: 24.h,
                  child: DropdownButton(
                    underline: Container(),
                    isExpanded: true,
                    value: 'data',
                    items: [
                      DropdownMenuItem(
                          value: 'data',
                          child: Text(
                            'Tangjungsiang, Subang',
                            style: TextStyle(
                                color: AppColors.locationText,
                                fontSize: 2.0.h,
                                fontWeight: FontWeight.w500),
                          ))
                    ],
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(
                  width: 12.h,
                ),
                SvgPicture.asset(AppAssets.search, height: 2.5.h)
              ],
            ),
          ),
          SizedBox(
            height: 2.8.h,
          ),
          Container(
            width: 87.5.w,
            height: 25.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                AppColors.weatherInfoContainerGradient[0],
                AppColors.weatherInfoContainerGradient[1]
              ]),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.5.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 3.h,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 50.w,
                    height: 4.h,
                    //decoration: BoxDecoration(color: Colors.red),
                    child: Text('Cuacu Per Jam',style: TextStyle(
                      color: AppColors.perjamText,
                      fontSize: 3.h,
                      fontWeight: FontWeight.w500
                    ),),
                  ))
            ],
          ),
          SizedBox(height: 1.0.h,),
          Container(
            width: 87.5.w,
            height: 15.h,
            //decoration: BoxDecoration(color: Colors.red),
            child: ListView.builder(
              padding: EdgeInsets.all(0),
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(left: 0.7.h),
                width: 20.w,
                height: 15.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: AppColors.perjamContainer
                ),
              );
            },),
          ),
          SizedBox(height: 1.5.h,),
          Row(
            children: [
              SizedBox(
                width: 3.h,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 23.w,
                    height: 4.h,
                    //decoration: BoxDecoration(color: Colors.red),
                    child: Text('Harian',style: TextStyle(
                      color: AppColors.perjamText,
                      fontSize: 3.h,
                      fontWeight: FontWeight.w500
                    ),),
                  ))
            ],
          ),
          SizedBox(height: 1.0.h,),
          Stack(
            alignment: Alignment.center,
            children: [
            Container(width: 87.9.w,height: 11.h,decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffF37E7E).withOpacity(0.5)),),
            SvgPicture.asset(AppAssets.cuakaContainer)
          ],),
          // SvgPicture.asset(AppAssets.cuakaContainer)
          SizedBox(height: 1.0.h,),
          Container(
            width: 87.5.w,
            height: 20.h,
            decoration: BoxDecoration(color: Colors.red),
            child: ListView.builder(itemBuilder: (context, index) {
              return Container(
                
              );
            },),
          ),
        ],
      ),
    );
  }
}
