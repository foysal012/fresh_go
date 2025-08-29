import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/map.png'), fit: BoxFit.fill)
            ),
          ),
          
          Positioned(
            top: 68,
            left: 24,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  height: 33.0,
                  width: 90.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    color: Color(0xff101010)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_back, color: Colors.white),
                      SizedBox(
                        width: 8.0,
                      ),

                      Text('Back',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                        ),
                      )
                    ],
                  ),
                ),
              )),

          Positioned(
              bottom: 0,
              // left: 24,
              child: Container(
                height: 300.0,
                padding: EdgeInsets.symmetric(horizontal: 23.0),
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    color: Color(0xffffffff)
                ),
                child: Column(
                  children: [
                    Container(
                      height: 8,
                      width: 72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xff101010)
                      ),
                    ),
                    SizedBox(height: 24.0),

                    Container(
                      height: 56,
                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 19.0),
                      decoration: BoxDecoration(
                        color: Color(0xff5DCB6A),
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Coupon name',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          Text('DISCWITHSTARBUCK',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24.0),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Delivery time',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        Row(
                          children: [
                            Icon(Icons.timelapse_sharp, color: Colors.green),
                            SizedBox(width: 4.0),

                            Text('30 minutes',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff606060),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 12.0),
                    
                    Divider(
                      height: 5,
                      thickness: 1.0,
                      color: Color(0xffEDEDED),
                    ),
                    SizedBox(height: 12.0),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Food items',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        Row(
                          children: [
                            Icon(Icons.add, color: Colors.black),
                            SizedBox(width: 4.0),

                            Text('Add item',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff606060),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 24.0),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Caramel Macchiato',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff1D1D21),
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        Row(
                          children: [
                            Text('1 x',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff1D1D21),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: 4.0),

                            Text('\$12',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff606060),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 12.0),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Greentea Lattle',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff1D1D21),
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        Row(
                          children: [
                            Text('1 x',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff1D1D21),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: 4.0),

                            Text('\$12',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff606060),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 12.0),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
