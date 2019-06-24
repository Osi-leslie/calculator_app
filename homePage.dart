import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double num1 = 0, num2 = 0, res = 0; //res = Result...................

   TextEditingController t1 = TextEditingController(text: '');
   TextEditingController t2 = TextEditingController(text: '');

  doAddition() {
    setState(() {
      num2 = double.parse(t2.text);
      num1 = double.parse(t1.text);
      res = num1 + num2;
    });
  }

  doSub() {
    setState(() {
      num2 = double.parse(t2.text);
      num1 = double.parse(t1.text);
      res = num1 - num2;
    });
  }

  doMul() {
    setState(() {
      num2 = double.parse(t2.text);
      num1 = double.parse(t1.text);
      res = num1 * num2;
    });
  }

  doDiv() {
    setState(() {
      num2 = double.parse(t2.text);
      num1 = double.parse(t1.text);
      res = (num1 / num2);
    });
  }

  doClear() {
    setState(() {
      t1 = TextEditingController(text: '');
      t2 = TextEditingController(text: '');
      res = 0;
    });
  }

  doDecimal() {
    setState(() {
     //TODO:..............................
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('LesCalc'),
      ),
      body: Container(
        padding: EdgeInsets.only(bottom:40.0, top: 15.0, left: 40.0, right: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:42.0),
              child: TextField(
                keyboardType: TextInputType.number,
                cursorColor: Colors.tealAccent,
                enabled: false,
                //enableInteractiveSelection: false,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: 'Result: $res', hintStyle: TextStyle(fontSize: 20.0, color: Colors.tealAccent),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            //The Text field for the First number
            TextField(
              keyboardType: TextInputType.number,
              cursorColor: Colors.tealAccent,
              controller: t1,
              decoration: InputDecoration(
                labelText: 'first',
                fillColor: Colors.white,
                hintText: 'Enter your First number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            //The Text field for the second number
            TextField(
              keyboardType: TextInputType.number,
              cursorColor: Colors.tealAccent,
              controller: t2,
              decoration: InputDecoration(
                labelText: 'second',
                fillColor: Colors.white,
                hintText: 'Enter your Second number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text('+'),
                  shape: StadiumBorder(),
                  color: Colors.teal,
                  onPressed: () {
                    //TODO:
                    doAddition();
                  },
                ),
                MaterialButton(
                  child: Text('*'),
                  shape: StadiumBorder(),
                  color: Colors.teal,
                  onPressed: () {
                    //TODO:
                    doMul();
                  },
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text('-'),
                  color: Colors.teal,
                  shape: StadiumBorder(),
                  onPressed: () {
                    //TODO:
                    doSub();
                  },
                ),
                MaterialButton(
                  child: Text('/'),
                  shape: StadiumBorder(),
                  color: Colors.teal,
                  onPressed: () {
                    //TODO:
                    doDiv();
                  },
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text('C', textAlign: TextAlign.center,),
                  color: Colors.teal,
                  shape: StadiumBorder(),
                  padding: EdgeInsets.only(left: 110.0, right: 110.0, top: 15.0, bottom: 15.0),
                  onPressed: () {
                    //TODO:
                    doClear();
                  },
                ),
//                MaterialButton(
//                  child: Text('.'),
//                  color: Colors.teal,
//                  onPressed: () {
//                    //TODO:
//                    doDecimal();
//                  },
//                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
