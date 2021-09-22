import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:weather/ui/styles.dart';

class RegistrationStep2 extends StatefulWidget {
  @override
  _RegistrationStep2State createState() => _RegistrationStep2State();
}

class _RegistrationStep2State extends State<RegistrationStep2> {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppbar(context),
        body: SafeArea(child: _buildBody(context)));
  }

  _buildAppbar(BuildContext context) {
    return AppBar(
      toolbarHeight: 60,
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
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 10),
          _buildlistButton(context),
          SizedBox(height: 5),
          _buildTitle(context),
          SizedBox(height: 10),
          _buildForm(context),
          SizedBox(height: 10),
          _buildLoadbutton(context),
          SizedBox(height: 60),
          _buildbutton(context),
        ],
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Text('Farmer Registration',
          style: TextStyle(
              color: Color(0Xff303840), fontSize: 22, fontFamily: 'Helvetica')),
    );
  }

  Widget _buildlistButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Row(children: [
        Expanded(
          child: RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              children: [
                TextSpan(
                    text: 'Step 1 > ',
                    style: TextStyle(
                      color: Color(0Xff303840),
                      fontSize: 18,
                      fontFamily: 'Helvetica',
                    )),
                TextSpan(
                    text: '  Step 2',
                    style: TextStyle(
                      color: Color(0Xff303840),
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

  Widget _buildForm(BuildContext context) {
    return FormBuilder(
      key: _fbKey,
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
          margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
          decoration: BoxDecoration(
            color: Color(0XFFffffff),
            borderRadius: BorderRadius.circular(15),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 10.0,
                  offset: Offset(2.0, 5.0),
                  spreadRadius: 0.7)
            ],
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text('Land Registration Number', style: Styles.formLable),
                      SizedBox(height: 5),
                      FormBuilderTextField(
                        name: 'registration_name',
                        decoration: Styles.loginInputDecoration.copyWith(
                            labelText: 'registration_name',
                            labelStyle: Styles.inputText),
                        keyboardType: TextInputType.text,
                      ),
                    ])),
                SizedBox(width: 10),
                Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text('Land Type*', style: Styles.formLable),
                      SizedBox(height: 20),
                      FormBuilderDropdown(
                        name: 'landtype',
                        decoration: Styles.loginInputDecoration,
                        allowClear: true,
                        hint: Text('Select', style: Styles.inputText),
                        items: <String>['First Class', 'Second Class']
                            .map((select) => DropdownMenuItem(
                                  value: select,
                                  child: Text('$select'),
                                ))
                            .toList(),
                      ),
                    ])),
              ],
            ),
            SizedBox(height: 15),
            Row(children: [
              Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Text('Soil Type*', style: Styles.formLable),
                    SizedBox(height: 5),
                    FormBuilderDropdown(
                      name: 'soiltype',
                      decoration: Styles.loginInputDecoration,
                      allowClear: true,
                      hint: Text('Select', style: Styles.inputText),
                      items: <String>['Sold', 'Un sold']
                          .map((select) => DropdownMenuItem(
                                value: select,
                                child: Text('$select'),
                              ))
                          .toList(),
                    ),
                  ])),
              SizedBox(width: 10),
              Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Text('Total Acres*', style: Styles.formLable),
                    SizedBox(height: 5),
                    FormBuilderTextField(
                      name: 'total_acres',
                      decoration: Styles.loginInputDecoration.copyWith(
                          hintText: 'Total Acres*',
                          labelStyle: Styles.inputText),
                      keyboardType: TextInputType.text,
                    ),
                  ]))
            ]),
            SizedBox(height: 15),
            Row(children: [
              Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Text('Soil Recommended Crops', style: Styles.formLable),
                    SizedBox(height: 20),
                    FormBuilderDropdown(
                      name: 'recommende',
                      decoration: Styles.loginInputDecoration,
                      allowClear: true,
                      hint: Text('Select', style: Styles.inputText),
                      items: <String>[
                        'Soil Recommended 1',
                        'Soil Recommended 2',
                        'Soil Recommended 3'
                      ]
                          .map((select) => DropdownMenuItem(
                                value: select,
                                child: Text('$select'),
                              ))
                          .toList(),
                    ),
                  ])),
              SizedBox(width: 10),
              Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Text('Location', style: Styles.formLable),
                    SizedBox(height: 25),
                    FormBuilderTextField(
                      name: 'location',
                      decoration: Styles.loginInputDecoration.copyWith(
                          hintText: 'Location', labelStyle: Styles.inputText),
                      keyboardType: TextInputType.text,
                    ),
                  ])),
            ]),
            SizedBox(height: 20),
          ]),
        ),
      ),
    );
  }

  Widget _buildLoadbutton(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Row(children: [
          Expanded(
            child: SizedBox(),
          ),
          ElevatedButton(
            child: Text("Add more land",
                style: TextStyle(
                  color: Color(0Xff303840),
                  fontSize: 18,
                  fontFamily: 'Helvetica',
                )),
            style: ElevatedButton.styleFrom(
              primary: Color(0XFFF4F6F3),
              side: BorderSide(width: 1.0, color: Color(0Xff46B04A)),
            ),
            onPressed: () {},
          )
        ]));
  }

  Widget _buildbutton(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
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
                    onPressed: () {},
                  ))),
        ]));
  }
}
