import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key=GlobalKey();
   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key:_key ,
      drawer:  drawer1(),
      appBar:AppBar(
        leading:  InkWell(
          onTap: (){
            _key.currentState!.openDrawer();
                      },
          child: Icon(Icons.menu),
        ),
      ) ,
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: Stack(
            children: [
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 20,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(10)
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 80,
                    height: 20,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
//How to add header in Flutter drawer?
Drawer drawer()
{
  return  Drawer(
    width: 200,
    child: ListView(
      children:  [
        const DrawerHeader(
            curve: Curves.bounceInOut,
            duration: Duration(milliseconds: 11),
            //-------------------------------------
            decoration: BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage('https://assets-global.website-files.com/5e39e095596498a8b9624af1/5f6e93d250a6d04f4eae9f02_Backgrounds-WFU-thumbnail-(size).jpg')
              ),
            ),
            child:  Align(
                alignment: Alignment.bottomLeft,
                child: Text('Asma\'a'))
        ),
        ListTile(
          leading: const Icon(Icons.home),
          trailing: const Icon(Icons.arrow_drop_down_sharp,size: 35,),
          title: const Text('Home'),
          subtitle: const Text('Home'),
          onTap: (){},
        ),
        ListTile(
          leading: const Icon(Icons.home),
          trailing: const Icon(Icons.arrow_drop_down_sharp,size: 35,),
          title: const Text('Home'),
          subtitle: const Text('Home'),
          onTap: (){},
        ),
        ListTile(
          leading: const Icon(Icons.home),
          trailing: const Icon(Icons.arrow_drop_down_sharp,size: 35,),
          title: const Text('Home'),
          subtitle: const Text('Home'),
          onTap: (){},
        ),

      ],
    ),
    // surfaceTintColor: Colors.green,
  );
}
Drawer drawer1()
{
  return  Drawer(
    //width: 200,
    child: ListView(
      children:  [
        const UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            // shape: BoxShape.circle,
              color: Colors.blueAccent,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(100),
                  bottomLeft: Radius.circular(1)
              )
          ),
          accountName:  Text('Asma\'a Alndhari'),
          accountEmail:  Text('asmaaalnadhari@gmail.com'),
          currentAccountPicture: CircleAvatar(
            radius: 50,
            backgroundColor: Colors.white70,
            child:  CircleAvatar(
              radius: 33,
              backgroundColor: Colors.purple,
              backgroundImage:  NetworkImage('https://assets-global.website-files.com/5e39e095596498a8b9624af1/5f6e93d250a6d04f4eae9f02_Backgrounds-WFU-thumbnail-(size).jpg')
              ,
            ),
          ),
          //currentAccountPictureSize: Size.square(90),
          otherAccountsPictures: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white70,
              child:  CircleAvatar(
                radius: 18,
                backgroundColor: Colors.purple,
              ),
            ),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white70,
              child:  CircleAvatar(
                radius: 18,
                backgroundColor: Colors.deepPurpleAccent,

              ),
            ),
          ],

        ),


        ListTile(
          leading: const Icon(Icons.home),
          trailing: const Icon(Icons.arrow_drop_down_sharp,size: 35,),
          title: const Text('Home'),
          subtitle: const Text('Home'),
          onTap: (){},
        ),
        ListTile(
          leading: const Icon(Icons.home),
          trailing: const Icon(Icons.arrow_drop_down_sharp,size: 35,),
          title: const Text('Home'),
          subtitle: const Text('Home'),
          onTap: (){},
        ),
        ListTile(
          leading: const Icon(Icons.home),
          trailing: const Icon(Icons.arrow_drop_down_sharp,size: 35,),
          title: const Text('Home'),
          subtitle: const Text('Home'),
          onTap: (){},
        ),

      ],
    ),
    // surfaceTintColor: Colors.green,
  );
}