import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Size ds = Size(0.0, 0.0);
  Curve curve = Curves.linear;
  double posY = 0.0;

  String hintName = 'linear';

  static List<Curve> curvesList = [
    Curves.linear,
    Curves.bounceIn,
    Curves.bounceInOut,
    Curves.bounceOut,
    Curves.decelerate,
    Curves.ease,
    Curves.easeIn,
    Curves.easeInSine,
    Curves.easeInQuad,
    Curves.easeInCubic,
    Curves.easeInQuad,
    Curves.easeInQuint,
    Curves.easeInExpo,
    Curves.easeInCirc,
    Curves.easeInBack,
    Curves.easeInOut,
    Curves.easeInOutSine,
    Curves.easeInOutQuad,
    Curves.easeInOutCubic,
    Curves.easeInOutQuart,
    Curves.easeInOutQuint,
    Curves.easeInOutExpo,
    Curves.easeInOutCirc,
    Curves.easeInOutBack,
    Curves.easeOut,
    Curves.easeOutSine,
    Curves.easeOutQuad,
    Curves.easeOutCubic,
    Curves.easeOutQuart,
    Curves.easeOutQuint,
    Curves.easeOutExpo,
    Curves.easeOutCirc,
    Curves.easeOutBack,
    Curves.elasticIn,
    Curves.elasticInOut,
    Curves.easeOut,
    Curves.fastOutSlowIn,
    Curves.slowMiddle,
  ];

  List<String> curveNamesList = [
    'linear',
    'bounceIn',
    'bounceInOut',
    'bounceOut',
    'decelerate',
    'ease',
    'easeIn',
    'easeInSine',
    'easeInQuad',
    'easeInCubic',
    'easeInQuad',
    'easeInQuint',
    'easeInExpo',
    'easeInCirc',
    'easeInBack',
    'easeInOut',
    'easeInOutSine',
    'easeInOutQuad',
    'easeInOutCubic',
    'easeInOutQuart',
    'easeInOutQuint',
    'easeInOutExpo',
    'easeInOutCirc',
    'easeInOutBack',
    'easeOut',
    'easeOutSine',
    'easeOutQuad',
    'easeOutCubic',
    'easeOutQuart',
    'easeOutQuint',
    'easeOutExpo',
    'easeOutCirc',
    'easeOutBack',
    'elasticIn',
    'elasticInOut',
    'easeOut',
    'fastOutSlowIn',
    'slowMiddle',
  ];

  List<DropdownMenuItem> menuItems = [];

  @override
  void initState() { 
    super.initState();
    
    for (int i = 0; i < curvesList.length; i++) {
      menuItems.add(
        DropdownMenuItem(
          child: Text(curveNamesList[i]),
          value: i,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    ds = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Curves Visualiser'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 100.0),
          AnimatedContainer(
            padding: EdgeInsets.only(top: posY),
            duration: Duration(seconds: 1),
            curve: curve,
            height: 200,
            width: double.infinity,
            color: Colors.blue,
            alignment: Alignment.topCenter,
            child: Container(
              width: 30.0,
              height: 30.0,
              color: Colors.red,
            ),
          ),
          SizedBox(height: 20),
          DropdownButton(
            onChanged: (i) {
              setState(() {
                curve = curvesList[i];
                posY = posY == 170.0 ? 0.0 : 170.0;
                hintName = curveNamesList[i];
              });
            },
            hint: Text(hintName),
            items: menuItems,
          ),
        ],
      ),
    );
  }
}
