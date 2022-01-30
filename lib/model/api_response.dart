
class Example {
    String? responseCode;
    String? responseMessage;
    CityArray? cityArray;

    Example({this.responseCode, this.responseMessage, this.cityArray});

    Example.fromJson(Map<String, dynamic> json) {
        this.responseCode = json["responseCode"];
        this.responseMessage = json["responseMessage"];
        this.cityArray = json["city_array"] == null ? null : CityArray.fromJson(json["city_array"]);
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data["responseCode"] = this.responseCode;
        data["responseMessage"] = this.responseMessage;
        if(this.cityArray != null)
            data["city_array"] = this.cityArray?.toJson();
        return data;
    }
}

class CityArray {
    List<String>? andamanAndNicobarIslands;
    List<String>? andhraPradesh;
    List<String>? arunachalPradesh;
    List<String>? assam;
    List<String>? bihar;
    List<String>? chandigarh;
    List<String>? chhattisgarh;
    List<String>? dadraAndNagarHaveli;
    List<String>? delhi;
    List<String>? goa;
    List<String>? gujarat;
    List<String>? haryana;
    List<String>? himachalPradesh;
    List<String>? jammuAndKashmir;
    List<String>? jharkhand;
    List<String>? karnataka;
    List<String>? kerala;
    List<String>? madhyaPradesh;
    List<String>? maharashtra;
    List<String>? manipur;
    List<String>? meghalaya;
    List<String>? mizoram;
    List<String>? nagaland;
    List<String>? odisha;
    List<String>? puducherry;
    List<String>? punjab;
    List<String>? rajasthan;
    List<String>? tamilNadu;
    List<String>? telangana;
    List<String>? tripura;
    List<String>? uttarPradesh;
    List<String>? uttarakhand;
    List<String>? westBengal;

    CityArray({this.andamanAndNicobarIslands, this.andhraPradesh, this.arunachalPradesh, this.assam, this.bihar, this.chandigarh, this.chhattisgarh, this.dadraAndNagarHaveli, this.delhi, this.goa, this.gujarat, this.haryana, this.himachalPradesh, this.jammuAndKashmir, this.jharkhand, this.karnataka, this.kerala, this.madhyaPradesh, this.maharashtra, this.manipur, this.meghalaya, this.mizoram, this.nagaland, this.odisha, this.puducherry, this.punjab, this.rajasthan, this.tamilNadu, this.telangana, this.tripura, this.uttarPradesh, this.uttarakhand, this.westBengal});

    CityArray.fromJson(Map<String, dynamic> json) {
        this.andamanAndNicobarIslands = json["Andaman and Nicobar Islands"]==null ? null : List<String>.from(json["Andaman and Nicobar Islands"]);
        this.andhraPradesh = json["Andhra Pradesh"]==null ? null : List<String>.from(json["Andhra Pradesh"]);
        this.arunachalPradesh = json["Arunachal Pradesh"]==null ? null : List<String>.from(json["Arunachal Pradesh"]);
        this.assam = json["Assam"]==null ? null : List<String>.from(json["Assam"]);
        this.bihar = json["Bihar"]==null ? null : List<String>.from(json["Bihar"]);
        this.chandigarh = json["Chandigarh"]==null ? null : List<String>.from(json["Chandigarh"]);
        this.chhattisgarh = json["Chhattisgarh"]==null ? null : List<String>.from(json["Chhattisgarh"]);
        this.dadraAndNagarHaveli = json["Dadra and Nagar Haveli"]==null ? null : List<String>.from(json["Dadra and Nagar Haveli"]);
        this.delhi = json["Delhi"]==null ? null : List<String>.from(json["Delhi"]);
        this.goa = json["Goa"]==null ? null : List<String>.from(json["Goa"]);
        this.gujarat = json["Gujarat"]==null ? null : List<String>.from(json["Gujarat"]);
        this.haryana = json["Haryana"]==null ? null : List<String>.from(json["Haryana"]);
        this.himachalPradesh = json["Himachal Pradesh"]==null ? null : List<String>.from(json["Himachal Pradesh"]);
        this.jammuAndKashmir = json["Jammu and Kashmir"]==null ? null : List<String>.from(json["Jammu and Kashmir"]);
        this.jharkhand = json["Jharkhand"]==null ? null : List<String>.from(json["Jharkhand"]);
        this.karnataka = json["Karnataka"]==null ? null : List<String>.from(json["Karnataka"]);
        this.kerala = json["Kerala"]==null ? null : List<String>.from(json["Kerala"]);
        this.madhyaPradesh = json["Madhya Pradesh"]==null ? null : List<String>.from(json["Madhya Pradesh"]);
        this.maharashtra = json["Maharashtra"]==null ? null : List<String>.from(json["Maharashtra"]);
        this.manipur = json["Manipur"]==null ? null : List<String>.from(json["Manipur"]);
        this.meghalaya = json["Meghalaya"]==null ? null : List<String>.from(json["Meghalaya"]);
        this.mizoram = json["Mizoram"]==null ? null : List<String>.from(json["Mizoram"]);
        this.nagaland = json["Nagaland"]==null ? null : List<String>.from(json["Nagaland"]);
        this.odisha = json["Odisha"]==null ? null : List<String>.from(json["Odisha"]);
        this.puducherry = json["Puducherry"]==null ? null : List<String>.from(json["Puducherry"]);
        this.punjab = json["Punjab"]==null ? null : List<String>.from(json["Punjab"]);
        this.rajasthan = json["Rajasthan"]==null ? null : List<String>.from(json["Rajasthan"]);
        this.tamilNadu = json["Tamil Nadu"]==null ? null : List<String>.from(json["Tamil Nadu"]);
        this.telangana = json["Telangana"]==null ? null : List<String>.from(json["Telangana"]);
        this.tripura = json["Tripura"]==null ? null : List<String>.from(json["Tripura"]);
        this.uttarPradesh = json["Uttar Pradesh"]==null ? null : List<String>.from(json["Uttar Pradesh"]);
        this.uttarakhand = json["Uttarakhand"]==null ? null : List<String>.from(json["Uttarakhand"]);
        this.westBengal = json["West Bengal"]==null ? null : List<String>.from(json["West Bengal"]);
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        if(this.andamanAndNicobarIslands != null)
            data["Andaman and Nicobar Islands"] = this.andamanAndNicobarIslands;
        if(this.andhraPradesh != null)
            data["Andhra Pradesh"] = this.andhraPradesh;
        if(this.arunachalPradesh != null)
            data["Arunachal Pradesh"] = this.arunachalPradesh;
        if(this.assam != null)
            data["Assam"] = this.assam;
        if(this.bihar != null)
            data["Bihar"] = this.bihar;
        if(this.chandigarh != null)
            data["Chandigarh"] = this.chandigarh;
        if(this.chhattisgarh != null)
            data["Chhattisgarh"] = this.chhattisgarh;
        if(this.dadraAndNagarHaveli != null)
            data["Dadra and Nagar Haveli"] = this.dadraAndNagarHaveli;
        if(this.delhi != null)
            data["Delhi"] = this.delhi;
        if(this.goa != null)
            data["Goa"] = this.goa;
        if(this.gujarat != null)
            data["Gujarat"] = this.gujarat;
        if(this.haryana != null)
            data["Haryana"] = this.haryana;
        if(this.himachalPradesh != null)
            data["Himachal Pradesh"] = this.himachalPradesh;
        if(this.jammuAndKashmir != null)
            data["Jammu and Kashmir"] = this.jammuAndKashmir;
        if(this.jharkhand != null)
            data["Jharkhand"] = this.jharkhand;
        if(this.karnataka != null)
            data["Karnataka"] = this.karnataka;
        if(this.kerala != null)
            data["Kerala"] = this.kerala;
        if(this.madhyaPradesh != null)
            data["Madhya Pradesh"] = this.madhyaPradesh;
        if(this.maharashtra != null)
            data["Maharashtra"] = this.maharashtra;
        if(this.manipur != null)
            data["Manipur"] = this.manipur;
        if(this.meghalaya != null)
            data["Meghalaya"] = this.meghalaya;
        if(this.mizoram != null)
            data["Mizoram"] = this.mizoram;
        if(this.nagaland != null)
            data["Nagaland"] = this.nagaland;
        if(this.odisha != null)
            data["Odisha"] = this.odisha;
        if(this.puducherry != null)
            data["Puducherry"] = this.puducherry;
        if(this.punjab != null)
            data["Punjab"] = this.punjab;
        if(this.rajasthan != null)
            data["Rajasthan"] = this.rajasthan;
        if(this.tamilNadu != null)
            data["Tamil Nadu"] = this.tamilNadu;
        if(this.telangana != null)
            data["Telangana"] = this.telangana;
        if(this.tripura != null)
            data["Tripura"] = this.tripura;
        if(this.uttarPradesh != null)
            data["Uttar Pradesh"] = this.uttarPradesh;
        if(this.uttarakhand != null)
            data["Uttarakhand"] = this.uttarakhand;
        if(this.westBengal != null)
            data["West Bengal"] = this.westBengal;
        return data;
    }
}