import 'package:flutter/material.dart';
class SettingsCell extends StatelessWidget {
  const SettingsCell({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                    width: 150,
                    height: 24,
                    child: Row(
                      children: [
                        Text(
                          'Store name',
                          style: TextStyle(
                            fontSize: 14,
                            color:Color(0xFF333333),
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w700
                            ),
                          ),
                      ],
                    ),
                  );
  }
}