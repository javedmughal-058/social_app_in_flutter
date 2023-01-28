import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isAuth =false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return isAuth ? authenticated() : unAuthenticated(size);
  }

  Widget authenticated(){
    return const Text('Authenticated user');
  }
  Widget unAuthenticated(Size size){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social Media App'),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Social Platform',style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800),),
          SizedBox(height: size.height*0.03,),
          Center(
            child: SizedBox(
              height: size.height*0.05,
              width: size.width*0.7,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                      side: BorderSide(width:1, color:Colors.orange),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                      ),
                      // padding: const EdgeInsets.all(8),
                  ),
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/google.png', height: 25, width: 25),
                        const Text('SignUp with Google'),
                      ],
              )),
            ),
          ),
          // const Spacer(),
          SizedBox(height: size.height*0.01,),
          const Text('Join with Single click',),
        ],
      ),
    );
  }
}
