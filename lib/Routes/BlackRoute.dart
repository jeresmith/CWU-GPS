import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BlackRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Black Hall"),
      ),
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("images/Black1.jpg"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("images/Black2.jpg"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("images/Black3.jpg"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("images/Black4.jpg"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("images/Black5.jpg"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("images/Black6.jpg"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("images/Black7.jpg"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("images/Black8.jpg"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),


            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 500.0,
              enlargeCenterPage: true,
              autoPlay: false,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: false,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton (
          child: Icon(Icons.home),
          onPressed: () {
            Navigator.pop(context);
          }
      ),
      bottomNavigationBar: BottomAppBar (
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            new Container(
              child: new Text('Addresss: Temp'), //Text
            ),
            new Container(
              child: new Text('Phone Number: Temp',
                  textAlign: TextAlign.justify),
            ),
          ],
        ),
        color: Colors.red,
      ),
    );
  }
}