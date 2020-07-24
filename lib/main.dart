import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String barcode = "";
String barcode2="";
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text('Get Country of Origin from Barcode'),
          ),
          body: new Center(
            child: new Column(
              children: <Widget>[
                new Container(
                  child: new RaisedButton(
                      color: Colors.blue,
                      onPressed: scan,
                      child: new Text("Scan")),
                  padding: const EdgeInsets.all(8.0),
                ),
                new Text(barcode),
              ],
            ),
          )),
    );
  }

  Future scan() async {
    try {
      String barcode = await BarcodeScanner.scan();
      if(barcode.substring(0,3)=="890")
      {
        barcode="India 🇮🇳";
      }
      else if(barcode.substring(0,3)=="360")
      {
        barcode="Spain 🇪🇸";
      }
      else if(barcode.substring(0,3)=="690" || barcode.substring(0,3)=="691"|| barcode.substring(0,3)=="692")
      {
        barcode="Chinese 🇨🇳";
      }
      else if(barcode.substring(0,3)=="693"|| barcode.substring(0,3)=="694"||barcode.substring(0,3)=="695")
      {
        barcode="Chinese 🇨🇳";
      }
      else if(barcode.substring(0,3)=="629")
      {
        barcode="UAE 🇦🇪";
      }
      else if(barcode[0]=="0")
      {
        barcode="USA";
      }
      else if(barcode[0]=="1")
      {
        barcode="USA";
      }
      else if(barcode[0]=="4" && barcode[1]=="1")
      {
        barcode="Germany";
      }

      else if(barcode[0]=="4" && barcode[1]=="2")
      {
        barcode="Germany";
      }

      else if(barcode[0]=="4" && barcode[1]=="3")
      {
        barcode="Germany";
      }

      else if(barcode[0]=="4" && barcode[1]=="4")
      {
        barcode="Germany";
      }
      else if(barcode.substring(0,3)=="471")
      {
        barcode="Taiwan";
      }
      else if(barcode.substring(0,3)=="479")
      {
        barcode="Sri Lanka";
      }
      else if(barcode.substring(0,3)=="480")
      {
        barcode="Philippines";
      }
      else if(barcode.substring(0,3)=="482")
      {
        barcode="Ukrain";
      }
      else if(barcode.substring(0,3)=="489")
      {
        barcode="Hong Kong";
      }
      
      else if(barcode[0]=="4" && barcode[1]=="9" && barcode[2]=="0")
      {
        barcode="Japan";
      }

      else if(barcode[0]=="4" && barcode[1]=="9" && barcode[2]=="2")
      {
        barcode="Japan";

      }

      else if(barcode[0]=="4" && barcode[1]=="9" && barcode[2]=="3")
      {
        barcode="Japan";
      }

      else if(barcode[0]=="4" && barcode[1]=="9" && barcode[2]=="4")
      {
        barcode="Japan";
      }
      else if(barcode[0]=="4" && barcode[1]=="9" && barcode[2]=="5")
      {
        barcode="Japan";
      }
      else if(barcode[0]=="4" && barcode[1]=="9" && barcode[2]=="6")
      {
        barcode="Japan";
      }
      else if(barcode[0]=="4" && barcode[1]=="9" && barcode[2]=="7")
      {
        barcode="Japan";
      }
      else if(barcode[0]=="4" && barcode[1]=="9" && barcode[2]=="8")
      {
        barcode="Japan";
      }
      else if(barcode[0]=="4" && barcode[1]=="9" && barcode[2]=="9")
      {
        barcode="Japan";
      }
      else if(barcode.substring(0,3)=="500")
      {
        barcode="UK";
      }

      else if(barcode.substring(0,3)=="501")
      {
        barcode="UK";
      }
      else if(barcode.substring(0,3)=="502")
      {
        barcode="UK";
      }
      else if(barcode.substring(0,3)=="503")
      {
        barcode="UK";
      }
      else if(barcode.substring(0,3)=="504")
      {
        barcode="UK";
      }
      else if(barcode.substring(0,3)=="505")
      {
        barcode="UK";
      }
      else if(barcode.substring(0,3)=="506")
      {
        barcode="UK";
      }
      else if(barcode.substring(0,3)=="507")
      {
        barcode="UK";
      }
      else if(barcode.substring(0,3)=="508")
      {
        barcode="UK";
      }
      else if(barcode.substring(0,3)=="509")
      {
        barcode="UK";
      }

      else if(barcode.substring(0,3)=="520")
      {
        barcode="Greece";
      }
      else if(barcode.substring(0,3)=="521")
      {
        barcode="Greece";
      }

      else if(barcode.substring(0,3)=="539")
      {
        barcode="Ireland";
      }

      else if(barcode.substring(0,3)=="560")
      {
        barcode="Portugal";
      }

      else if(barcode.substring(0,3)=="600")
      {
        barcode="South Africa";
      }
      else if(barcode.substring(0,3)=="601")
      {
        barcode="South Africa";
      }
      else if(barcode.substring(0,3)=="625")
      {
        barcode="Jordan";
      }
      else if(barcode.substring(0,3)=="626")
      {
        barcode="Iran";
      }
      else if(barcode.substring(0,3)=="627")
      {
        barcode="Kuwait";
      }
    
      else if(barcode.substring(0,3)=="628")
      {
        barcode="Saudi Arabia";
      }
      else if(barcode.substring(0,3)=="630")
      {
        barcode="Qatar";
      }
      
      else if(barcode.substring(0,3)=="729")
      {
        barcode="Israel";
      }
      else if(barcode.substring(0,3)=="730")
      {
        barcode="Sweden";
      }
      else if(barcode.substring(0,3)=="750")
      {
        barcode="Mexico";
      }
      else if(barcode.substring(0,3)=="754")
      {
        barcode="Canada";
      }
      else if(barcode.substring(0,3)=="7555")
      {
        barcode="Canada";
      }
      else if(barcode.substring(0,3)=="760")
      {
        barcode="Switzerland";
      }
      else if(barcode.substring(0,3)=="778")
      {
        barcode="Aregentina";
      }
      else if(barcode.substring(0,3)=="789")
      {
        barcode="Brazil";
      }
      else if(barcode.substring(0,3)=="870")
      {
        barcode="Netherlands";
      }
      else if(barcode.substring(0,3)=="883")
      {
        barcode="Myanmar";
      }

      else if(barcode.substring(0,3)=="893")
      {
        barcode="Vietnam";
      }
      else if(barcode.substring(0,3)=="896")
      {
        barcode="Pakistan";
      }
      else if(barcode.substring(0,3)=="899")
      {
        barcode="Indonesia";
      }

      else if(barcode[0]=="9" && barcode[1]=="3")
      {
        barcode="Australia";
      }
      else if(barcode[0]=="9" && barcode[1]=="4"){
        barcode="New Zealand";
      } 
      else if(barcode.substring(0,3)=="955")
      {
        barcode="Malaysia";
      }

      else
      {
        barcode2=barcode;
        barcode="Cannot determine the country of manufacturing but it's NOT INDIA and the barcode is:"+barcode2;
      }
      setState(() => this.barcode = barcode);
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          this.barcode = 'The User does not have access to the Camera';
        });
      }
      else if(e.code == BarcodeScanner.UserCanceled) {
        setState(() {
          this.barcode = 'Press the Scan button to scan a Barcode';
        });
      }
       else {
        setState(() => this.barcode = 'Unknown error: $e');
      }
    } on FormatException {
      setState(() => this.barcode = 'Nothing was Scanned');
    } catch (e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
  }
}
