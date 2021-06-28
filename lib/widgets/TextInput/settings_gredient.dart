import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';

enum CellType{
  left,middle, right , both
}
class SettingsGredientHeader extends StatelessWidget {
  const SettingsGredientHeader({
    @required this.text,
    @required this.width,
    @required this.cellType,
  });

  final String text;
  final double width;
  final CellType cellType;
  @override
  Widget build(BuildContext context) {
    return Container(
                      width: width,
                      height: 34,
                      decoration: BoxDecoration(
                    border: Border(
                        left: BorderSide( 
                                        color:kCustomWhite,
                                        width: CellType.middle == cellType ? 
                                                        0.7 : 0.7, 
                                        style: BorderStyle.solid
                                        ),
                        right: BorderSide(
                                         color:kCustomWhite, 
                                         width: CellType.middle == cellType ? 
                                         0.7 : 0.7, 
                                         style: BorderStyle.solid
                                         ),
                        top: BorderSide( 
                                        color:kCustomWhite, width: 0.7, 
                                        style: BorderStyle.solid
                                        ),
                        bottom: BorderSide( 
                                        color:kCustomWhite, 
                                        width: 0.7, 
                                        style: BorderStyle.solid
                                        )
                      ),
                    gradient: LinearGradient(
                        colors: [kCustomWhite2 , Color(0xFFECECEC) ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(0.0, 1.0),
                    ),
                    borderRadius: BorderRadius.only(
                          topLeft: CellType.left == cellType || 
                                    CellType.both == cellType ? 
                                    Radius.circular(5) :  
                                    Radius.circular(0.2),
                          topRight: CellType.right == cellType || 
                                                    CellType.both == cellType ? 
                                                      Radius.circular(5) :
                                                       Radius.circular(0.2)
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left:12.0,top:7,bottom:7),
                        child: Text(
                          text,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Lato',
                            fontSize: 14,
                            color: Color(0xff535353)
                            ),
                          ),
                      ),
                    );
  }
}