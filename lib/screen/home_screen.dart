import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh_go/map_screen.dart';
import 'package:fresh_go/model/product_model.dart';

import '../model/categories_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final searchTextController = TextEditingController();

  List<CategoriesModel> categoriesData = [
    CategoriesModel(
        'Beverages',
        'assets/categoy_img1.png'
    ),
    CategoriesModel(
        'Snack',
        'assets/categoy_img2.png'
    ),
    CategoriesModel(
        'Seafood',
        'assets/categoy_img3.png'
    ),
    CategoriesModel(
        'Dessert',
        'assets/categoy_img4.png'
    ),

    CategoriesModel(
        'Beverages',
        'assets/categoy_img1.png'
    ),
    CategoriesModel(
        'Snack',
        'assets/categoy_img2.png'
    ),
    CategoriesModel(
        'Seafood',
        'assets/categoy_img3.png'
    ),
    CategoriesModel(
        'Dessert',
        'assets/categoy_img4.png'
    ),
  ];

  List<ProductModel> productData = [
    ProductModel(
        'Starbuck Borobudur',
        'assets/product_img1.png',
        '1.0 Km',
        '4.8 reviews'
    ),
    ProductModel(
        'Baegopa Suhat',
        'assets/product_img2.png',
        '500.0 M',
        '4.8 reviews'
    ),
    ProductModel(
        'Starbuck Borobudur',
        'assets/product_img1.png',
        '1.0 Km',
        '4.8 reviews'
    ),
    ProductModel(
        'Baegopa Suhat',
        'assets/product_img2.png',
        '500.0 M',
        '4.8 reviews'
    ),

    ProductModel(
        'Starbuck Borobudur',
        'assets/product_img1.png',
        '1.0 Km',
        '4.8 reviews'
    ),
    ProductModel(
        'Baegopa Suhat',
        'assets/product_img2.png',
        '500.0 M',
        '4.8 reviews'
    ),
    ProductModel(
        'Starbuck Borobudur',
        'assets/product_img1.png',
        '1.0 Km',
        '4.8 reviews'
    ),
    ProductModel(
        'Baegopa Suhat',
        'assets/product_img2.png',
        '500.0 M',
        '4.8 reviews'
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24, vertical: 20.0
        ),
        color: Colors.white60,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 44.0),
          
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MapScreen()));
                      },
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Color(0xffd0e3d0),
                            ),
                            child: SvgPicture.asset(
                                'assets/location.svg',
                                colorFilter: const ColorFilter.mode(
                                    Color(0xff4FAF5A),
                                    BlendMode.srcIn
                                ),
                                semanticsLabel: 'Red dash paths',
                              )
                          ),
                          SizedBox(width: 10.0),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Current Location',
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        color: Color(0xff606060)
                                    ),
                                  ),
                                  SizedBox(width: 4.0,),
                                  Icon(Icons.arrow_drop_down_outlined, color: Color(0xff606060),)
                                ],
                              ),
                              SizedBox(height: 4.0),

                              SizedBox(
                                width: 178,
                                child: Text('Jl. Soekarno Hatta 15A Malang',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff101010)
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
          
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Color(0xffF5F5F5),
                      ),
                      child: Icon(Icons.notification_add),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.0),
          
              Container(
                height: 42,
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  border: Border.all(
                    width: 1,
                    color: Color(0xffD6D6D6)
                  )
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Icon(Icons.search,
                        color: Color(0xff878787)
                      ),
                    ),
                    SizedBox(width: 8.0),
          
                    Expanded(
                      flex: 7,
                      child: TextFormField(
                        controller: searchTextController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText:'Search menu, resturant or etc',
                          hintStyle: TextStyle(
                            color: Color(0xff878787),
                            fontSize: 12.0
                          )
                        ),
                      ),
                    ),
                    SizedBox(width: 8.0),
          
                    Expanded(
                      flex: 2,
                      child: SvgPicture.asset(
                        'assets/filter.svg',
                        colorFilter: const ColorFilter.mode(
                            Color(0xff878787),
                            BlendMode.srcIn
                        ),
                        semanticsLabel: 'Red dash paths',
                      )
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0),
          
              Stack(
                children: [
                  Container(
                    height: 142,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Banner.png'),
                      fit: BoxFit.fill
                      )
                    ),
                  ),
          
                  Positioned(
                    bottom: 12,
                    right: 12,
                    child: Container(
                    height: 20,
                    width: 68,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 4,
                          width: 12,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xff4FAF5A),
                          ),
                        ),
                        SizedBox(width: 4.0),
          
                        Container(
                          height: 4,
                          width: 12,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xff1010101A),
                          ),
                        ),
                        SizedBox(width: 4.0),
          
                        Container(
                          height: 4,
                          width: 12,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xff1010101A),
                          ),
                        ),
                      ],
                    ),
                  ),)
                ],
              ),
              SizedBox(height: 34.0),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Top Categories',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff1D1D21),
                    fontWeight: FontWeight.w600
                  ),
                  ),
          
                  Text('See all',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xffc2c2c2),
                        fontWeight: FontWeight.w600
                    ),
                  )
                ],
              ),
              SizedBox(height: 16.0),
          
              SizedBox(
                height: 92,
                child: ListView.separated(
                  itemCount: categoriesData.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final data = categoriesData[index];
                    return Container(
                      height: 90,
                      width: 72,
                      child: Column(
                        children: [
                          Image.asset(data.imgIcon),
                          SizedBox(height: 8.0),
          
                          Text(data.name,
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff1D1D21)
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 21);
                  },
                ),
              ),
              SizedBox(height: 24.0),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Top Discount',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff1D1D21),
                        fontWeight: FontWeight.w600
                    ),
                  ),
          
                  Text('See all',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xffc2c2c2),
                        fontWeight: FontWeight.w600
                    ),
                  )
                ],
              ),
              SizedBox(height: 16.0),
          
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 20.0,
                    childAspectRatio: 0.97,
                ),
                padding: EdgeInsets.zero,
                itemCount: productData.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  final dataInfo = productData[index];
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              dataInfo.imgIcon,
                              fit: BoxFit.cover,
                              // width: double.infinity,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          dataInfo.name,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff1D1D21),
                          ),
                        ),
                        SizedBox(height: 4.0),
                        Row(
                          children: [
                            Text(
                              dataInfo.distance,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff878787),
                              ),
                            ),
                            SizedBox(width: 10.0),
                            Container(
                              height: 4,
                              width: 4,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffD6D6D6),
                              ),
                            ),
                            SizedBox(width: 9.0),
                            Icon(Icons.star, color: Color(0xffF2B90D), size: 16),
                            SizedBox(width: 5.0),
                            Expanded(
                              child: Text(
                                dataInfo.review,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff878787),
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );

                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
