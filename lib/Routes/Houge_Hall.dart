import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HogueRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Houge Hall"),
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
                    image: AssetImage("images/hogue1.jpg"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("images/hogue2.jpg"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("images/hogue3.jpg"),
                    fit: BoxFit.contain,
                  ),
                ),
              )

              //2nd Image of Slider


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
              child: new Text('Addresss'), //Text
            ),
            new Container(
              child: new Text('Phone Number',
                  textAlign: TextAlign.justify),
            ),
          ],
        ),
        color: Colors.red,
      ),
    );
  }
}

// class SecondRoute extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Second Route"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//
//           child: Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }
