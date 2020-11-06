import 'package:flubank/core/models/cardinfo.dart';
import 'package:flubank/ui/screens/home/widgets/custompinter.dart';
import 'package:flutter/material.dart';

class ListCardOfferts extends StatelessWidget {
  const ListCardOfferts({Key key}) : super(key: key);
  final double _borderRadius = 10;
  @override
  Widget build(BuildContext context) {
    final items = [
      CardInfo('10%', 25000, Color(0xff6DC8F3), Color(0xff73A1F9), '\$'),
      CardInfo('5%', 100000, Color(0xffFFB157), Color(0xffFFA057), '\$'),
      CardInfo('20%', 200000, Color(0xff42E695), Color(0xff3BB2B8), '\$'),
      CardInfo('50%', 35000, Color(0xffFF5B95), Color(0xffF8556D), '\$'),
      CardInfo('20%', 20000, Color(0xffD76EF5), Color(0xff8F7AFE), '\$'),
      CardInfo('30%', 30000, Color(0xff92d0d0), Color(0xff567777), '\$'),
    ];
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(_borderRadius),
                    gradient: LinearGradient(colors: [
                      items[index].startColor,
                      items[index].endColor
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    boxShadow: [
                      BoxShadow(
                        color: items[index].endColor,
                        blurRadius: 12,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  top: 0,
                  child: CustomPaint(
                    size: Size(100, 150),
                    painter: CustomCardShapePainter(_borderRadius,
                        items[index].startColor, items[index].endColor),
                  ),
                ),
                Positioned.fill(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Image.asset(
                          'assets/images/grupoexito.png',
                          width: 50,
                          height: 50,
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              items[index].cliente,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Avenir',
                                fontSize: 32,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: <Widget>[
                                Flexible(
                                  child: Text(
                                    'de descuento',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Avenir',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              items[index].saldo.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Avenir',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                            Icon(
                              Icons.attach_money,
                              color: Colors.white,
                              size: 24,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
