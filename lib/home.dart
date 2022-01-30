import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'model/api_response.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, dynamic> cityDict = HashMap();
  var stateArr = [];
  var cityArr = [];
  TextEditingController newCityTEC = TextEditingController();

  @override
  void initState() {
    super.initState();
    localCall();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
            itemBuilder: (context, stateIndex) {
              cityArr = cityDict[stateArr[stateIndex]];
              return ExpansionTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(stateArr[stateIndex],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        addNewCity(stateIndex);
                      }, 
                      child: Text("Add city")
                    )
                  ],
                ),
                children: [
                  Column(
                      children: List.generate(cityArr.length, (cityIndex) {
                    return cityUi(cityIndex, stateIndex);
                  }))
                ],
              );
            },
            separatorBuilder: (contexy, indexNo) {
              return Divider();
            },
            itemCount: stateArr.length),
      ),
    );
  }

  Widget cityUi(int cityIndex, int stateIndex) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 2, 20, 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(cityArr[cityIndex],
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600
            ),
          ),
          GestureDetector(
            child: Icon(Icons.delete),
            onTap: () {
              deleteCity(cityIndex, stateIndex);
            },
          )
        ],
      ),
    );
  }

  apiCall() async {
    var resp = (await http.post(
        Uri.parse(
            "https://www.kalyanmobile.com/apiv1_staging/city_listing.php"),
        body: {
          "request": "city_listing",
          "device_type": "android",
          "country": "india"
        }));

    print(resp.body);
    var jsonResp = jsonDecode(resp.body);
    cityDict = jsonResp["city_array"];
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("StoredData", jsonEncode(cityDict));
    localCall();
  }

  localCall() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var sharePref = pref.getString("StoredData");
    print("$sharePref");
    if (sharePref == null) {
      apiCall();
    } else {
      cityDict = jsonDecode(sharePref);
      setState(() {
        stateArr = cityDict.keys.toList();
      });
    }
  }

  deleteCity(int cityIndex, int stateIndex) {
    var tempArr = [];
    tempArr = cityDict[stateArr[stateIndex]];
    tempArr.removeAt(cityIndex);
    setState(() {
      cityDict[stateArr[stateIndex]] = tempArr;
    });
    storeData();
  }

  storeData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("StoredData", jsonEncode(cityDict));
  }

  addNewCity(int stateIndex){
    showDialog(
      context: context, 
      builder: (BuildContext context){
        return SimpleDialog(title: Text("Add new City"),
        children: [
          TextField(
            controller: newCityTEC,
            decoration: InputDecoration(
              labelText: "Enter new City name",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                var tempArr = [];
                tempArr = cityDict[stateArr[stateIndex]];
                tempArr.add(newCityTEC.text);
                setState(() {
                  cityDict[stateArr[stateIndex]] = tempArr;
                });
                storeData();
                Navigator.pop(context);
                newCityTEC.clear();
              }, 
                child: Text("Save")
              ),

              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Cancel"))
            ],
          )
        ],
        );
      });
    
  }
}
