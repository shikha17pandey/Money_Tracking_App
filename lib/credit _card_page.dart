import 'package:flutter/material.dart';


class Creditcard extends StatelessWidget {
  // int _selectedTabIndex,
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        // currentIndex: _selectedTabIndex,
        // onTap: _changeIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home,
                color: Colors.blue.shade900,
              ),
              icon: Icon(Icons.home,), title: Text("Home")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet,color: Colors.grey), title: Text("wallet")),
          BottomNavigationBarItem(
              icon: Icon(Icons.calculate_sharp,color: Colors.grey), title: Text("calculate")),
          BottomNavigationBarItem(
              icon: Icon(Icons.payment_outlined,color: Colors.grey), title: Text("My Account")),
        ],
      ),
      body: Container(
            width: double.infinity,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 90,),
              Padding(
                padding: const EdgeInsets.only(left:20, right:20),
                child: Column(
                  children: [
                    Container(
                      width : 70,
                      height: 70,
                      margin: EdgeInsets.only(left: 20, bottom: 10) ,
                      child: FlatButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.white)
                        ),
                        onPressed: (){},
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            Icons.chevron_left_outlined,
                            color: Colors.black,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:30.0),
                child: Expanded(
                    child: Text(
                      'Add New',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                ),
              ),
        _buildCreditCard(
            color: Color(0xFF090943),
            cardExpiration: "02/23",
            cardHolder: "Lance Bogrol",
            cardNumber: "9876 5432 1098 7654"

        ),










            ]
        ),
      ),

    );

    }
    Widget _buildCreditCard(
    {
      @required Color color,
      @required String cardNumber,
      @required String cardHolder,
      @required String cardExpiration }
      )
    {
    return Card(
      elevation: 4.0,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.0)
       ),
      child: Container(
        height: 200,
        padding: const EdgeInsets.only(left: 16.0,right: 16.0, bottom: 22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildLogosBlock()
          ],
        ),
      ),
    );

    widget _buildLogosBlock({})
    }

   }

