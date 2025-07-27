import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClothesScreen extends StatefulWidget {
  const ClothesScreen({super.key});

  @override
  State<ClothesScreen> createState() => _ClothesScreenState();
}

class _ClothesScreenState extends State<ClothesScreen> {
  PageController _controller = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    int totalPages = 2;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 20.h,
            right: 10.w,
            child: Image.asset('assets/Mask group 2.png'),
          ),
          Positioned(
            top: 20.h,
            right: 10.w,
            child: Image.asset('assets/Mask group 2.png'),
          ),
          Positioned(
            bottom: 9.h,
            right: -160.w,
            child: Opacity(
              opacity: 0.6,
              child: Image.asset(
                'assets/bordingScreen1.png',
                fit: BoxFit.contain,
                width: 460.w,
              ),
            ),
          ),
          Positioned(
            top: 40.h,
            left: 20.w,
            child: Row(
              children: [
                Icon(Icons.arrow_back),
                SizedBox(width: 10.w),
                Text(
                  'Clothes',
                  style: TextStyle(color: Colors.black, fontSize: 18.sp),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 9.h,
            right: -160.w,
            child: Opacity(
              opacity: 0.6,
              child: Image.asset(
                'assets/bordingScreen1.png',
                fit: BoxFit.contain,
                width: 460.w,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: 80.h),
              Text("${currentPage + 1} out of $totalPages"),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 15,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: LinearProgressIndicator(
                    value: (currentPage + 1) / totalPages,
                    minHeight: 8,
                    backgroundColor: Colors.green.shade200,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Colors.green.shade900,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: PageView(
                  controller: _controller,
                  onPageChanged: (index) {
                    setState(() {
                      currentPage = index;
                    });
                  },
                  children: [
                    Container(
                      height: double.infinity.h,
                      width: double.infinity.w,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text(
                                'When wearing new Clothes',
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  color: Colors.green.shade900,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                "اللّهُـمَّ لَـكَ الحَـمْـدُ أنْـتَ كَسَـوْتَنيهِ، أََسْأََلُـكَ مِـنْ خَـيرِهِ وَخَـيْرِ مَا صُنِعَ لَـه، وَأَعوذُ بِكَ مِـنْ شَـرِّهِ وَشَـرِّ مـا صُنِعَ لَـهُ",
                                style: TextStyle(fontSize: 24),
                                textAlign: TextAlign.right,
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                'Allahumma laka-I-hamdu Anta kasawtanth, as\'aluka min khayrihi wa khayri ma suni a lah, wa a\'üdhu bika min sharrihi wa sharri mã suni a lah.',
                                style: TextStyle(fontSize: 20.sp),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                'O Allah, all praise is for You Alone — You have clothed me with it. I ask You for its good and the good of that for which it was made; and I seek Your protection from its evil and the evil of that for which it was made.',
                                style: TextStyle(fontSize: 18.sp),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 10.h),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Reference',
                                    style: TextStyle(
                                      color: Colors.green.shade900,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/Rectangle 2.png',
                                    width: 40.w,
                                    height: 100.h,
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          'Abu Sa\'id al-Khudri (radiy Allähu \'anhu) reported that when the Messenger of Allah ﷺ wore a new garment he would name it: either a turban, a shirt, or a cloak; and then he would say [the above].',
                                          style: TextStyle(fontSize: 14.sp),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.book),
                                            Text('Hadith'),
                                            SizedBox(width: 3.w),
                                            Text('Tirmidhi 1767'),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Center(
                      child: Text("Page 2", style: TextStyle(fontSize: 24)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
