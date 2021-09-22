import 'package:flutter/material.dart';
import 'package:weather/farmer_registration/widgets/farmerinputfield.dart';
import 'package:weather/ui/styles.dart';
import 'package:weather/farmer_registration/widgets/farmer_dropdown.dart';

class farmerregistration extends StatefulWidget {
  const farmerregistration({Key? key}) : super(key: key);

  @override
  _farmerregistrationState createState() => _farmerregistrationState();
}

class _farmerregistrationState extends State<farmerregistration> {
  var _formKey = GlobalKey<FormState>();

  //check whether data have or not
  bool isFname = false;
  bool isLname = false;
  bool isGender = false;
  bool isDOB = false;
  bool isFarmID = false;
  bool isCountryCode = false;
  bool isPhoneNo = false;
  bool isPinCode = false;
  bool isCountry = false;
  bool isState = false;
  bool isCity = false;
  bool isAddress = false;

  //error-message
  List errormsg = [
    "Enter First Name",
    "Enter Last Name",
    "Select D.O.B",
    "Select Gender",
    "Enter Farm ID Number",
    "Select Country Code",
    "Enter Phone Number",
    "Enter Pin Code",
    "Select Country",
    "Select State",
    "Select City",
    "Enter Address",
  ];
  List genders=["Male","female"];
  String fname = "";
  String lname = "";
  String gender = "";
  String dob = "";
  String farmidno = "";
  String countrycode = "";
  String phoneno = "";
  String pincode = "";
  String country = "";
  String state = "";
  String city = "";
  String address = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppbar(context),
        body: SafeArea(child: _buildBody(context)));
  }

  _buildAppbar(BuildContext context) {
    return AppBar(
      // toolbarHeight: 60,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          color: Color(0Xff1D6D3E),
        ),
      ),
      leading: IconButton(
        icon: Icon(Icons.menu, color: Color(0Xffffffff), size: 30),
        onPressed: () {},
      ),
      leadingWidth: 60,
      centerTitle: true,
      title: Image.asset('assets/images/logo.png'),
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_none_outlined,
            color: Color(0Xffffffff),
            size: 30,
          ),
        ),
      ],
    );
  }

  Widget _buildBody(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 10),
              _buildlistButton(context),
              SizedBox(height: 10),
              _buildTitle(context),
              SizedBox(height: 10),
              FarmerCollectionRow(
                  context,
                  'First Name',
                  'Last Name',
                  errormsg[0],
                  errormsg[1],
                  farmerinputfield(
                    onChanged: onfname,
                  ),
                  farmerinputfield(
                    onChanged: onlname,
                  ),
                  isFname,
                  isLname),
              FarmerCollectionRow(
                  context,
                  'Date of Birth',
                  'Gender',
                  errormsg[2],
                  errormsg[3],
                  farmerinputfield(
                    onChanged: onDOB,
                  ),
                  FormerDropdown(
                    hintText: 'Gender',
                    items: genders,
                    dropdownValue: gender,
                    onChanged: onGender,
                  ),
                  isDOB,
                  isGender),
              FarmerCollectionRow(
                  context,
                  'Farmer Identification Number',
                  'Country Code',
                  errormsg[4],
                  errormsg[5],
                  farmerinputfield(
                    onChanged: onfarmidno,
                  ),
                  farmerinputfield(
                    onChanged: onCountrycode,
                  ),
                  isFarmID,
                  isCountryCode),
              FarmerCollectionRow(
                  context,
                  'Phone Number',
                  'PinCode',
                  errormsg[6],
                  errormsg[7],
                  farmerinputfield(
                    onChanged: onPhoneno,
                  ),
                  farmerinputfield(
                    onChanged: onPinCode,
                  ),
                  isPhoneNo,
                  isPinCode),
              FarmerCollectionRow(
                  context,
                  'Country',
                  'State',
                  errormsg[8],
                  errormsg[9],
                  farmerinputfield(
                    onChanged: onCountry,
                  ),
                  farmerinputfield(
                    onChanged: onState,
                  ),
                  isCountry,
                  isState),
              FarmerCollectionRow(
                  context,
                  'City',
                  'Address',
                  errormsg[10],
                  errormsg[11],
                  farmerinputfield(
                    onChanged: onCity,
                  ),
                  farmerinputfield(
                    onChanged: onAddress,
                  ),
                  isCity,
                  isAddress),
              SizedBox(height: 30),
              _buildbutton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Container(
      child: Text('Farmer Registration',
          style: TextStyle(
              color: Color(0Xff303840), fontSize: 18, fontFamily: 'Helvetica')),
    );
  }

  Widget _buildlistButton(BuildContext context) {
    return Container(
      child: Row(children: [
        Expanded(
          child: RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              children: [
                TextSpan(
                    text: 'Step 1> ',
                    style: TextStyle(
                      color: Color(0Xff303840),
                      fontSize: 18,
                      fontFamily: 'Helvetica',
                    )),
                TextSpan(
                    text: 'Step 2',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontFamily: 'Helvetica',
                    )),
              ],
            ),
          ),
        ),
        Container(
            child: SizedBox(
                height: 45,
                width: 150,
                child: ElevatedButton(
                  child: Text("Farmer List",
                      style: TextStyle(
                        color: Color(0Xffffffff),
                        fontSize: 18,
                        fontFamily: 'Helvetica',
                      )),
                  style: ElevatedButton.styleFrom(primary: Color(0XFF46B04A)),
                  onPressed: () {},
                ))),
      ]),
    );
  }

  Widget FarmerCollectionRow(
      BuildContext context,
      String Label1,
      String Label2,
      String FirstErrorMsg,
      String SecondErrormsg,
      Widget FirstWidget,
      Widget SecondWidget,
      bool isVal1,
      bool isVal2) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Container(
                        height: 25,
                        width: MediaQuery.of(context).size.width / 2 - 5,
                        child: Text(Label1, style: Styles.formLable)),
                    SizedBox(height: 5),
                    FirstWidget,
                  ])),
              SizedBox(width: 10),
              Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Container(
                        height: 25,
                        width: MediaQuery.of(context).size.width / 2 - 5,
                        child: Text(Label2, style: Styles.formLable)),
                    SizedBox(height: 5),
                    SecondWidget,
                  ])),
            ],
          ),
          isVal1 || isVal2
              ? Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            5,
                                    child: isVal1
                                        ? Text(FirstErrorMsg,
                                            style: TextStyle(color: Colors.red))
                                        : Text("")),
                              ])),
                          SizedBox(width: 10),
                          Expanded(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2 - 5,
                                  child: isVal2
                                      ? Text(
                                          SecondErrormsg,
                                          style: TextStyle(color: Colors.red),
                                        )
                                      : Text(""),
                                ),
                              ])),
                        ],
                      ),
                    ],
                  ))
              : Container(),
        ],
      ),
    );
  }

  Widget _buildbutton(BuildContext context) {
    return Container(
        child: Row(children: [
      Expanded(
          child: SizedBox(
              height: 50,
              child: ElevatedButton(
                child: Text("Cancel",
                    style: TextStyle(
                      color: Color(0Xffffffff),
                      fontSize: 18,
                      fontFamily: 'Helvetica',
                    )),
                style: ElevatedButton.styleFrom(primary: Color(0XFFFF6464)),
                onPressed: () {},
              ))),
      SizedBox(
        width: 16,
      ),
      Expanded(
          child: SizedBox(
              height: 50,
              child: ElevatedButton(
                child: Text("Save",
                    style: TextStyle(
                      color: Color(0Xffffffff),
                      fontSize: 18,
                      fontFamily: 'Helvetica',
                    )),
                style: ElevatedButton.styleFrom(primary: Color(0XFF46B04A)),
                onPressed: () {
                  setState(() {
                    if (_formKey.currentState!.validate()) {
                      fname.isNotEmpty ? isFname = false : isFname = true;
                      lname.isNotEmpty ? isLname = false : isLname = true;
                      gender.isNotEmpty ? isGender = false : isGender = true;
                      dob.isNotEmpty ? isDOB = false : isDOB = true;
                      farmidno.isNotEmpty ? isFarmID = false : isFarmID = true;
                      countrycode.isNotEmpty
                          ? isCountryCode = false
                          : isCountryCode = true;
                      phoneno.isNotEmpty ? isPhoneNo = false : isPhoneNo = true;
                      pincode.isNotEmpty ? isPinCode = false : isPinCode = true;
                      country.isNotEmpty ? isCountry = false : isCountry = true;
                      city.isNotEmpty ? isCity = false : isCity = true;
                      state.isNotEmpty ? isState = false : isState = true;
                      address.isNotEmpty ? isAddress = false : isAddress = true;
                    }
                  });
                },
              ))),
    ]));
  }

  void onfname(text) {
    setState(() {
      fname = text;
    });
  }

  void onlname(text) {
    setState(() {
      lname = text;
    });
  }

  void onGender(text) {
    setState(() {
      gender = text;
    });
  }

  void onDOB(text) {
    setState(() {
      dob = text;
    });
  }

  void onfarmidno(text) {
    setState(() {
      farmidno = text;
    });
  }

  void onCountrycode(text) {
    setState(() {
      countrycode = text;
    });
  }

  void onPhoneno(text) {
    setState(() {
      phoneno = text;
    });
  }

  void onCountry(text) {
    setState(() {
      country = text;
    });
  }

  void onPinCode(text) {
    setState(() {
      pincode = text;
    });
  }

  void onState(text) {
    setState(() {
      state = text;
    });
  }

  void onAddress(text) {
    setState(() {
      address = text;
    });
  }

  void onCity(text) {
    setState(() {
      city = text;
    });
  }
}
