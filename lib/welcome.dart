import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/shikha/Downloads/money_tracking_app/lib/widgets/slide.dart';
import 'package:money_tracking_app/widgets/slide_dots.dart';
import 'package:money_tracking_app/widgets/slider_item.dart';
import 'db_save.dart';

class welcome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    final dbHelper = DatabaseHelper.instance;
    return _welcomeState();
  }
}

class _welcomeState extends State<welcome> {
  int _currentPage =0;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  void initState(){
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer){
      if(_currentPage<2){
        _currentPage++;
     }else{
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } );

  }

  void dispose(){
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index){
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,

      body:
      Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children:<Widget>[
            Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      onPageChanged: _onPageChanged,
                      itemCount: slideList.length,
                      itemBuilder: (ctx,i)=>SlideItem(i),
                    ),
                    Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 35),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              for(int i = 0; i<slideList.length; i++)
                                if(i == _currentPage)
                                  SlideDots(true)
                              else
                                 SlideDots(false)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],

                ),

              ),

            ],

          ),
        ),
      ),
    );
  }
}



