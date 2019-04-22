import 'package:flutter/material.dart';
import 'shared/styles.dart';

Container headerHero = Container(
  padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
  decoration: heroDeco,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 240,
            width: 240,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/guava.png'),
                    fit: BoxFit.contain,
                    repeat: ImageRepeat.noRepeat)),
          ),
          Text(
            'Guava',
            style: heroText,
            textAlign: TextAlign.center,
          )
        ],
      )
    ],
  ),
);

Widget fruitDetails = Container(
    margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Season', textAlign: TextAlign.left, style: factHeader),
                  Container(
                    margin: EdgeInsets.only(top: 3),
                    child: Text('June - September',
                        textAlign: TextAlign.left, style: descriptionText),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(14, 5, 14, 5),
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text('Not Available',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w800,
                            fontSize: 12)),
                    decoration: statusDanger,
                  ),
                  Row(
                    children: <Widget>[
                      Text('110 ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w800,
                              color: Colors.white)),
                      Text('Days to Go',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 13, color: Colors.white)),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 37, top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Average Duration',
                      textAlign: TextAlign.left, style: factHeader),
                  Container(
                    margin: EdgeInsets.only(top: 3),
                    child: Text('3 months',
                        textAlign: TextAlign.left, style: descriptionText),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 37, top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Details', textAlign: TextAlign.left, style: factHeader),
                  Container(
                    margin: EdgeInsets.only(top: 6),
                    width: 250,
                    child: Text(
                        'Guava is a common tropical fruit cultivated in many tropical and subtropical regions. Psidium guajava (common guava, lemon guava) is a small tree in the myrtle family (Myrtaceae), native to Mexico, Central America, and northern South America.',
                        softWrap: true,
                        textAlign: TextAlign.left,
                        style: descriptionText),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ));

Widget instoreBadge = Container(
  margin: EdgeInsets.only(left: 15, top: 4),
  padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
  child: Text(
    'Available',
    style: TextStyle(
        color: Color(0xff4caf50),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w800,
        fontSize: 11),
  ),
  decoration: statusDanger2,
);


Widget notInstoreBadge = Container(
  margin: EdgeInsets.only(left: 15, top: 4),
  padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
  child: Text(
    'Unavailable',
    style: TextStyle(
        color: hotRed,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w800,
        fontSize: 11),
  ),
  decoration: statusDanger2,
);




 Widget suggestedItem(BuildContext context, String fruitName, bool instore, String imageURI)
{
  return 
   new Container(
              margin: EdgeInsets.only(top: 10, right: 15),
              padding: EdgeInsets.only(right: 20, left: 15),
              height: 55,
              width: 205,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset(imageURI, width: 50),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Padding(padding: EdgeInsets.only(left: 15),child: Text(fruitName, style: factHeader)),
                        (instore) ? instoreBadge : notInstoreBadge
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xffabd37b),
                boxShadow: [BoxShadow(
                  offset: Offset(0, 0),
                  spreadRadius: 3,
                  blurRadius: 1,
                  color: Color.fromRGBO(0, 0, 0, .05)
                )]
              ),
            );
}


// while nesting horizontal list view into a vertical list view I faced some issues
// which I fixed by wrapping the horizontal listview into a SizedBox container and set its height
// Then I set the shrikWrap property of the Horizontal list view to true.
// And it worked!

 Widget footer(BuildContext context) {
   return Padding(
        padding: EdgeInsets.only(left: 37, bottom: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('SUGGESTED FRUITS', style: factHeader),
          SizedBox(
        height: 85,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
          suggestedItem(context, 'Strawberry', true, 'images/strawberry.png')    ,
          suggestedItem(context, 'Mango', false, 'images/mango.png'),         
          suggestedItem(context, 'Pineapple', true, 'images/pineapple.png')         
          ],
        )
        ),
        ],
      )
    );

 }