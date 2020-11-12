import 'package:Travel/models/destination_model.dart';
import 'package:flutter/material.dart';
import '../models/destination_model.dart';

class DestinationList extends StatefulWidget {
  @override
  _DestinationListState createState() => _DestinationListState();
}

class _DestinationListState extends State<DestinationList> {
  final List<Destination> _userDestination = [
    Destination(
        imgUrl: 'assets/images1.jpg',
        city: 'California',
        country: 'United States of America',
        price: '\$250',
        description:
            'Best city to have some fun ehej ierhri erf oirehgioe rjoe rheiurh er iouehor oieh nrreo hiueh orefn iuhgrei erroih e'),
    Destination(
        imgUrl: 'assets/images1.jpg',
        city: 'California',
        country: 'United States of America',
        price: '\$250',
        description: 'Best city to have some fun'),
    Destination(
        imgUrl: 'assets/images1.jpg',
        city: 'California',
        country: 'United States of America',
        price: '\$250',
        description: 'Best city to have some fun'),
    Destination(
        imgUrl: 'assets/images1.jpg',
        city: 'California',
        country: 'United States of America',
        price: '\$250',
        description: 'Best city to have some fun'),
    Destination(
        imgUrl: 'assets/images1.jpg',
        city: 'California',
        country: 'United States of America',
        price: '\$250',
        description: 'Best city to have some fun'),
    Destination(
        imgUrl: 'assets/images1.jpg',
        city: 'California',
        country: 'United States of America',
        price: '\$250',
        description: 'Best city to have some fun'),
    Destination(
        imgUrl: 'assets/images1.jpg',
        city: 'California',
        country: 'United States of America',
        price: '\$250',
        description: 'Best city to have some fun'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(
        top: 10.0,
        bottom: 15.0,
      ),
      children: _userDestination.map((dst) {
        return InkWell(
          onTap: () {
            print('object');
          },
          child: Container(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(40.0, 10.0, 10.0, 5.0),
                  height: 150.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 120.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    dst.country,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.blue[800],
                                    ),
                                  ),
                                  Text(
                                    dst.city,
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10,
                                      color: Colors.indigo[300],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(children: [
                              Text(
                                dst.price,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22.0,
                                  color: Colors.indigo[300],
                                ),
                              ),
                              Text(
                                'budget',
                                style: TextStyle(
                                  color: Colors.blue[800],
                                ),
                              ),
                            ]),
                          ],
                        ),
                        Container(
                          width: 140,
                          child: Text(
                            dst.description,
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey[400],
                              fontWeight: FontWeight.w600,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 20.0,
                  top: 15.0,
                  bottom: 15,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image(
                      width: 110.0,
                      image: AssetImage('assets/images1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
