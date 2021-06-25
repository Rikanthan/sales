import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({ Key key }) : super(key: key);
  
  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
double height , width ,xPosition, yPosition;
  bool isDropDownOpened = false;
  OverlayEntry floatingDropdown;
  void dropDownData()
  {
    RenderBox renderBox = context.findRenderObject();
    height = renderBox.size.height;
    width = renderBox.size.width;
    Offset offset = renderBox.localToGlobal(Offset.zero);
    xPosition = offset.dx;
    yPosition = offset.dy;
  }

  OverlayEntry _createFloatingDropdown(){
    return OverlayEntry(builder: (context){
      return Positioned(
        left: xPosition,
        width: width,
        top: yPosition + height,
        height: 4*height + 40,
        child: DropDown(

        )
      );
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          if(isDropDownOpened){
            floatingDropdown.remove();
          }
          else{
            dropDownData();
            floatingDropdown = _createFloatingDropdown();
            Overlay.of(context).insert(floatingDropdown);
          }
          isDropDownOpened = !isDropDownOpened;
        });
      },
      child: Container(
        height: 46,
        width: 230,
        decoration: BoxDecoration(
          border: Border.all(color:kInputBorderColor, width: 1 ),
          borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Drop Down item 1',style: k15BlackDark,),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_drop_up),
                  Icon(Icons.arrow_drop_down)
                ],
              )
            ],
          ),
      ),
    );
  }
}

class DropDown extends StatelessWidget {
  //const DropDown({ Key key }) : super(key: key);
// final double itemHeight;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox( 
          height : 5
        ),
        Align(
          alignment: Alignment(-0.85,0),
            child: ClipPath(
              clipper: ArrowClipper(),
              child: Container(
                height: 20,
                width: 240,
              
              ),
          ),
        )
      ],      
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
