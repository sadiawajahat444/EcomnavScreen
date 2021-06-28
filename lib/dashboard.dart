import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
   @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
 //  List<dynamic> lst = [1, 2, 3, 4, 5, 6,7,8];
 //List<Map<String ,IconData>> c = [ 'Electronics', Icons.bolt,];
 //Category('Household',Icons.person),];
  @override
  Widget build(BuildContext context) {
        return Scaffold(
     appBar: AppBar(
           backgroundColor: Colors.white,
           title:Center(child: Text("Ecom App",style: TextStyle( color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold,))),
                
        actions:< Widget> [
                    IconButton(
                     onPressed: (){},
                      icon: const Icon(Icons.notifications,color: Colors.black,),
                    ),
                  ],
      ),

      body:  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children:<Widget> [
            ListTile(title: Text("items",style:TextStyle(fontSize: 20,fontWeight:FontWeight.bold)),
            trailing: Text("view more",style:TextStyle(fontSize: 18,color: Colors.purple,)),),
            Container(
              color: Colors.white,
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildCard('Macbook','5.0 (23Reviews)','assets/images/Macbook.png' ,), 
                  _buildCard('Macbookpro','5.0 (24Reviews)','assets/images/Macbookpro.png' ,), 
                  _buildCard('IPhone','5.0 (24Reviews)','assets/images/IPhone.png' ,), 
                  _buildCard('Note','5.0 (24Reviews)','assets/images/Note.png' ,), 

               //  _categoryCard('Icon(icons.chair, color:Colors.purple,size:16.0 ,),','Electronics','5 items',), 
                ],
                ),
                ),
           
          
          SizedBox(height: 20,),
          
            Text( 'More Categories', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),                          ),
          SizedBox(height: 20,),
             Container(
              color: Colors.white,
              height: 95,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
        //  _buildCategoryCard(_categories[index].icon,_categories[index].name), 
                    _categoryCard('Clothes','7 items',), 
                   _categoryCard('HouseHold','12 items',), 
                   _categoryCard('Aplliances','12 items',), 
                 _categoryCard('Others','12 items',), 

                ],
                ),
                ),
                   SizedBox(height: 20,),
          Row(children:[
           
                        Text( 'Popular Items', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,), ),
                           Text( 'View More ', style: TextStyle( fontSize: 18.0,color:Colors.purple,), ),
                               ],
                              ),
                      
                    
                    SizedBox(
                      height: 30,
                    ),
                    GridView.count(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,

                      children:<Widget> [
                        _product('assets/images/Macbook.png','Macbook','5.0 (23Reviews)',),
                      _product('assets/images/Note.png','Note','5.0 (2Reviews)',),
                      _product('assets/images/IPhone.png','IPhone','5.0 (13Reviews)',),
                     _product('assets/images/Macbook.png','Macbook','5.0 (23Reviews)',),
                      _product('assets/images/Note.png','Note','5.0 (2Reviews)',),
                      _product('assets/images/IPhone.png','IPhone','5.0 (13Reviews)',),
                       _product('assets/images/Macbook.png','Macbook','5.0 (23Reviews)',),
                      _product('assets/images/Note.png','Note','5.0 (2Reviews)',),
                      _product('assets/images/IPhone.png','IPhone','5.0 (13Reviews)',),
                      ]
                    ),],
                      ),
                    ),
             
            
           ),
                        
            );
  
  }
}


 
  Widget _buildCard(String model, String review,String image) {
      return
       Container(

                width: 200,
                    height: 200,
                margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                 color: Colors.white,
               ),
                        child: Column(
                        children:<Widget>[ 
                           // Image.asset( 'assets/images/Macbook.png',), 
                              Image.asset( image), 
                         
                          Text(model,style: TextStyle(fontSize:16,fontWeight: FontWeight.bold,),),
                          Row(
                            children:<Widget>[
                          Icon(Icons.star, color:Colors.yellow,size:16.0 ,),
                          Icon(Icons.star, color:Colors.yellow,size:16.0 ,),
                          Icon(Icons.star, color:Colors.yellow,size:16.0 ,),
                          Icon(Icons.star, color:Colors.yellow,size:16.0 ,),
                          Icon(Icons.star, color:Colors.yellow,size:16.0 ,),
                          Text(review,style:TextStyle(fontSize:12)),
                           ] , 
                           ),        
                                ],
       ),
                 
               );
   }

    Widget _categoryCard( String category,String items) {
      return Card(
       child: Column(children: [
             Container(
               // width: 200,
                  //  height: 200,
                margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                 color: Colors.white,
               ),
                        child: Row(
                        children:<Widget>[
                           // Image.asset( 'assets/images/Macbook.png',), 
                             // Image.asset( icon), 
                          
                          Icon(Icons.bolt, color:Colors.purple,size:30.0 ,),
                          Column(
                            children:<Widget>[
                          Text(category,style: TextStyle(fontSize:16,fontWeight: FontWeight.bold,),),
                          Text(items,style:TextStyle(fontSize:16)),
                           ] , 
                          )]
       ),
       ),
       ],  
          ),
           
               );
   }

   
  Widget _product(String image,String model, String review) {
      return   Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                 color: Colors.white,
               ),
                        child: Column(
                        children:<Widget>[ 
                           // Image.asset( 'assets/images/Macbook.png',), 
                              Image.asset( image), 
                         
                          Text(model,style: TextStyle(fontSize:16,fontWeight: FontWeight.bold,),),
                          Row(
                            children:<Widget>[
                          Icon(Icons.star, color:Colors.yellow,size:16.0 ,),
                          Icon(Icons.star, color:Colors.yellow,size:16.0 ,),
                          Icon(Icons.star, color:Colors.yellow,size:16.0 ,),
                          Icon(Icons.star, color:Colors.yellow,size:16.0 ,),
                          Icon(Icons.star, color:Colors.yellow,size:16.0 ,),
                          Text(review,style:TextStyle(fontSize:12)),
                           ] , 
                           ),        
                                ],
       ),  
               );
   }

 