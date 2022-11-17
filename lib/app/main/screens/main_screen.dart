import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/colors/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return(
        GestureDetector(
          onTap: () => {FocusScope.of(context).unfocus()},
          child: Scaffold(
              bottomNavigationBar: SizedBox(
                height: 70,
                child: BottomNavigationBar(
                  backgroundColor: AppColors.primaryColor,
                  onTap: (index) {
                  },
                  currentIndex: 1,
                  unselectedItemColor: AppColors.whiteColor,
                  items:const  [
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.list,
                          size: 30,
                          color: AppColors.whiteColor,
                        ),
                        label: 'Books'
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.shopping_cart,
                          size: 25,
                          color: AppColors.whiteColor,
                        ),
                        label: 'Cart'
                    ),
                  ],
                ),
              ),
              body: Padding(
                padding: EdgeInsets.only(top: 30.h),
                //child: 1 == 1 ? BooksScreen() : ShoppingCartScreen(),
                child: const Center(child: Text('Anis'),),
              )
          ),
        )
    );
  }
}




