import 'package:flutter/material.dart';
//import 'package:powers/screens/constants.dart';

class BlogCard extends StatelessWidget {
  final String title;
  //final String ingredient;
  final String image;
  //final int price;
  final String theme;
  final String description;
  final Function press;

  const BlogCard({
    Key key,
    this.title,
    //this.ingredient,
    this.image,
    //this.price,
    this.theme,
    this.description,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: 20),
        height: 400,
        width: 270,
        child: Stack(
          children: <Widget>[
            // Big light background
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 380,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  color: Colors.orange[50],
                  //color: kPrimaryColor.withOpacity(.06),
                ),
              ),
            ),
            // Rounded background
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                height: 181,
                width: 181,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orange[100],
                  //image: DecorationImage(
                  // image: AssetImage('assets/images/beach.jpg'),
                  //fit: BoxFit.cover,
                  // ),
                  //color: kPrimaryColor.withOpacity(.15),
                ),
              ),
            ),
            //Image,

            Positioned(
              top: 0,
              left: -50,
              // child: Container(
              // height: 184,
              // width: 276,
              child: CircleAvatar(
                radius: 70.0,
                backgroundImage: ExactAssetImage('assets/images/beach.jpg'),
              ),
              /* decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),*/
            ),
            // ),
            // Price
            Positioned(
              right: 20,
              top: 80,
              child: Text(
                'About Us',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Positioned(
              top: 201,
              left: 40,
              child: Container(
                width: 210,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Learn More About Msafiri',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      description,
                      maxLines: 3,
                    ),
                    SizedBox(height: 16),
                    Text(
                      theme,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
