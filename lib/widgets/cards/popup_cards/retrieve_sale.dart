import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';


class RetrieveSale extends StatelessWidget {
  const RetrieveSale({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.only(left: 175),
                content:Align(
                  alignment: Alignment(-15,-0.25),
                  child: Container(
                  width:520,
                  height: 250,
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                      alignment: Alignment.center,
                        child: ClipPath(
                          clipper: ArrowClipper(),
                          child: Container(
                            height: 16.97/2,
                            width: 19.97,
                            decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: kDashboardSearchBarFillColor,
                            border:Border.all(
                                color: kAppBarColor,width: 1,
                              )
                            ),
                          ),
                      ),
                    ),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: kDashboardSearchBarFillColor,
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            border: Border.all(
                                color: kAppBarColor,width: 1,
                              )
                          ),
                        width: 520,
                        height: 226,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/empty-basket-v1.png',
                                width: 98,
                                height: 93,
                                ),
                              Padding(
                                padding: const EdgeInsets.only(top:20.0,bottom: 12),
                                child: Text("You don't have any parked sales",style: kMediumTextDarkStyle),
                              ),
                              Text('Parked Sales allow you to put products on hold,',style: k15WhiteNormal,),
                              Text('while you serve other customers.',style: k15WhiteNormal,)

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
    ),
  );
  }
}

class ArrowClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size)
  {
    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width/2, 0);
    path.lineTo(size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}