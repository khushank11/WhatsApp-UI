import 'package:flutter/material.dart';
import 'package:whatsapp_series/OTP/otpscreen.dart';
import 'package:whatsapp_series/Widgets/uihelper.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController Phonecontroller=TextEditingController();
  String selectedcountry="India";

  List<String> countries = [
    "Afghanistan",
    "Albania",
    "Algeria",
    "Andorra",
    "Angola",
    "Antigua and Barbuda",
    "Argentina",
    "Armenia",
    "Australia",
    "Austria",
    "Azerbaijan",
    "Bahamas",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "Belgium",
    "Belize",
    "Benin",
    "Bhutan",
    "Bolivia",
    "Bosnia and Herzegovina",
    "Botswana",
    "Brazil",
    "Brunei",
    "Bulgaria",
    "Burkina Faso",
    "Burundi",
    "Cabo Verde",
    "Cambodia",
    "Cameroon",
    "Canada",
    "Central African Republic",
    "Chad",
    "Chile",
    "China",
    "Colombia",
    "Comoros",
    "Congo, Democratic Republic of the",
    "Costa Rica",
    "Croatia",
    "Cuba",
    "Cyprus",
    "Czech Republic",
    "Denmark",
    "Djibouti",
    "Dominica",
    "Dominican Republic",
    "Ecuador",
    "Egypt",
    "El Salvador",
    "Equatorial Guinea",
    "Eritrea",
    "Estonia",
    "Eswatini",
    "Ethiopia",
    "Fiji",
    "Finland",
    "France",
    "Gabon",
    "Gambia",
    "Georgia",
    "Germany",
    "Ghana",
    "Greece",
    "Grenada",
    "Guatemala",
    "Guinea",
    "Guinea-Bissau",
    "Guyana",
    "Haiti",
    "Honduras",
    "Hungary",
    "Iceland",
    "India",
    "Indonesia",
    "Iran",
    "Iraq",
    "Ireland",
    "Israel",
    "Italy",
    "Jamaica",
    "Japan",
    "Jordan",
    "Kazakhstan",
    "Kenya",
    "Kiribati",
    "Korea, North",
    "Korea, South",
    "Kuwait",
    "Kyrgyzstan",
    "Laos",
    "Latvia",
    "Lebanon",
    "Lesotho",
    "Liberia",
    "Libya",
    "Liechtenstein",
    "Lithuania",
    "Luxembourg",
    "Madagascar",
    "Malawi",
    "Malaysia",
    "Maldives",
    "Mali",
    "Malta",
    "Marshall Islands",
    "Mauritania",
    "Mauritius",
    "Mexico",
    "Micronesia",
    "Moldova",
    "Monaco",
    "Mongolia",
    "Montenegro",
    "Morocco",
    "Mozambique",
    "Myanmar",
    "Namibia",
    "Nauru",
    "Nepal",
    "Netherlands",
    "New Zealand",
    "Nicaragua",
    "Niger",
    "Nigeria",
    "North Macedonia",
    "Norway",
    "Oman",
    "Pakistan",
    "Palau",
    "Palestine",
    "Panama",
    "Papua New Guinea",
    "Paraguay",
    "Peru",
    "Philippines",
    "Poland",
    "Portugal",
    "Qatar",
    "Romania",
    "Russia",
    "Rwanda",
    "Saint Kitts and Nevis",
    "Saint Lucia",
    "Saint Vincent and the Grenadines",
    "Samoa",
    "San Marino",
    "Sao Tome and Principe",
    "Saudi Arabia",
    "Senegal",
    "Serbia",
    "Seychelles",
    "Sierra Leone",
    "Singapore",
    "Slovakia",
    "Slovenia",
    "Solomon Islands",
    "Somalia",
    "South Africa",
    "South Sudan",
    "Spain",
    "Sri Lanka",
    "Sudan",
    "Suriname",
    "Sweden",
    "Switzerland",
    "Syria",
    "Taiwan",
    "Tajikistan",
    "Tanzania",
    "Thailand",
    "Timor-Leste",
    "Togo",
    "Tonga",
    "Trinidad and Tobago",
    "Tunisia",
    "Turkey",
    "Turkmenistan",
    "Tuvalu",
    "Uganda",
    "Ukraine",
    "United Arab Emirates",
    "United Kingdom",
    "United States",
    "Uruguay",
    "Uzbekistan",
    "Vanuatu",
    "Vatican City",
    "Venezuela",
    "Vietnam",
    "Yemen",
    "Zambia",
    "Zimbabwe"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(children: [
        SizedBox(height:80),
        Center(child: UiHelper.CutomTextField(text: "Enter your phone number", height:20,color: Color(0XFF00A884),fontweight: FontWeight.bold),),
        SizedBox(height: 32,),
        UiHelper.CutomTextField(text: "WhatsApp will need to verify your phone", height:16),
        SizedBox(height:5),
        UiHelper.CutomTextField(text: "number. Carrier charges may apply.", height:16),
        SizedBox(height:10),
        UiHelper.CutomTextField(text: " What’s my number?", height:17,color: Color(0XFF00A884)),
        SizedBox(height: 50,),
        Padding(
          padding: const EdgeInsets.only(left:50,right: 50),
          child: DropdownButtonFormField(items: countries.map((String country){
            return DropdownMenuItem(child: Text(country.toString()),value: country,);
          }).toList(), onChanged:(value){
            setState(() {
              selectedcountry=value!;
            });
          },value: selectedcountry,decoration: InputDecoration(
           enabledBorder: UnderlineInputBorder(
             borderSide: BorderSide(color: Color(0XFF00A884),),
           ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0XFF00A884)),
            ),
          )),
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
          SizedBox(width: 40, child:TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: "+91",
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0XFF00A884),

                )
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color:Color(0XFF00A884)),
              ),
            ),
          ),

          ),
            SizedBox(width: 10,),
            SizedBox(
              width: 247,
              child: TextField(
                keyboardType: TextInputType.number,
                controller: Phonecontroller,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884)),
                  ),
                ),
              ),
            )

        ],)
      ],),
      floatingActionButton: UiHelper.CustomButton(callback: (){
        login(Phonecontroller.text.toString());
      }, buttonname:"NEXT"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
  login(String Phonenumber){
    if(Phonenumber==""){
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Enter your Phone Number"),backgroundColor: Color(0XFF00A884),));
    }
    else{
      Navigator.push(context,MaterialPageRoute(builder: (context)=>OTPScreen(phonenumber:Phonenumber)));
    }
  }
}