import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/ui/styles.dart';

class PageWeather extends StatefulWidget {
  @override
  _PageWeatherState createState() {
    return _PageWeatherState();
  }
}

class _PageWeatherState extends State<PageWeather> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFffffff),
      body:  NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)=>[_buildAppbar(context)],
          body: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context){
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
         SizedBox(height: 20),
        //_bulidTopBOx(context),
        ],
      ),
    );
 }

Widget _buildAppbar(BuildContext context){
    return SliverAppBar(  
      expandedHeight: 470,
      leading: IconButton(
        icon: Image.asset('assets/images/back.png'), 
              onPressed: () { },
        ),
        
       backgroundColor: Color(0Xffd6fed8),
        leadingWidth: 70,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title:Text('GhanSikaman',style: TextStyle(color: Color(0Xff191127),fontSize: 20,),textAlign: TextAlign.center,),
        elevation: 0,      
        actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_none_outlined,color:Color(0Xff303840),),
        ), 
        ],  
      floating: false,
      pinned: true,
      toolbarHeight: 40,
      flexibleSpace: FlexibleSpaceBar(
        background: _bulidTopBOx(context),
      ),
      
    );
  }

 
  Widget _bulidTopBOx(BuildContext context){
    return Container( 
       color: Color(0XFFffffff),
       padding: EdgeInsets.fromLTRB(0, 0, 0, 80),  
      child: Stack(
        alignment: Alignment.topCenter,
        clipBehavior: Clip.none,
        children: [
          _bulidWeek(context),
          Positioned(
           bottom: -60,            
           child: _bulidWind(context),
            )
        ]
     )
    );
  }

  Widget _bulidWeek(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0Xffffffff),
                Color(0Xffcffed1)
              ],
      )),
     padding: EdgeInsets.fromLTRB(20, 160, 20, 100),
      child:Container(
        padding: EdgeInsets.fromLTRB(20, 60, 20, 30),
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0Xff303840),
          boxShadow: <BoxShadow>[
            BoxShadow(color: Colors.black.withOpacity(0.07),blurRadius: 10.0,offset: Offset(2.0, 5.0), spreadRadius: 0.7 )
          ],
        ),
         child: Stack(
           alignment: Alignment.topCenter,
           clipBehavior: Clip.none,
           children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/sun.png",width: 120,),
                 RichText(
                  textAlign:TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(text: '32°C ',style: TextStyle(color: Color(0Xffffffff),fontSize:40)),
                      TextSpan(text: '22°C \n',style: TextStyle(color: Color(0Xffffffff),fontSize:24)),
                      TextSpan( text: 'Partly Cloudy',style: TextStyle(color: Color(0Xffffffff),fontSize:20,))
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 134.0,
              child: Container(
              alignment: Alignment.center,
              //padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
              width: 163,height:34,
              decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Color(0Xff46B04A),
              ),
                child:  Text('Monday, 06 Sep',style: TextStyle(color: Color(0XFFffffff),fontSize:16))
                ),
            ),              
           ]
         )
       ),
    );
  }

  Widget _bulidWind(BuildContext context){
    return Container( 
      width: (MediaQuery.of(context).size.width * 0.88),   
      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
      alignment: Alignment.center,
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0Xffffffff),             
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black.withOpacity(0.07),blurRadius: 10.0,offset: Offset(4.0, 5.0), spreadRadius: 0.7 )
        ],
      ),    
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset("assets/images/wind.png"),
              SizedBox(height: 15,),
              Text('8 km/h',style: TextStyle(color: Color(0XFF83877E),fontSize:20)),
              SizedBox(height: 10,),
              Text('Wind',style: TextStyle(color: Color(0XFF83877E),fontSize:16)),                  
            ]
          ),
          Column(
            children: [
              Image.asset("assets/images/precipitition.png"),
              SizedBox(height: 15,),
              Text('45%',style: TextStyle(color: Color(0XFF83877E),fontSize:20)),
              SizedBox(height: 10,),
              Text('Humidity',style: TextStyle(color: Color(0XFF83877E),fontSize:16)),                  
            ]
          ),
          Column(
            children: [
              Image.asset("assets/images/humidity.png"),
              SizedBox(height: 15,),
              Text('10 %',style: TextStyle(color: Color(0XFF83877E),fontSize:20)),
              SizedBox(height: 10,),
              Text('Precipitation',style: TextStyle(color: Color(0XFF83877E),fontSize:16)),                 
            ]
          )
        ]
      )    
    );
  }

  

 

 
 

}

