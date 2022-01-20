import 'package:flutter/material.dart';
import 'package:online_courses/screens/home_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFF5954),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Online learning" ,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 38,
                  ),),
                Text("is not the next" , style: TextStyle(
                    color: Colors.white,
                    fontSize: 30
                ),),
                Text("big things," ,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 38,
                  ),),
                Text("it is the now" , style: TextStyle(
                    color: Colors.white,
                    fontSize: 30
                ),),
                Text("BIG THINGS!" ,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 38,
                  ),),
              ],
            ),
          ),
          SizedBox(height: 22,),

          Stack(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                height: MediaQuery.of(context).size.height * .60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/splash.png"),
                        fit: BoxFit.cover
                    )
                ),
              ),
              Positioned(
                bottom: 40,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_) => HomeScreen()));
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 45 , vertical: 15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)

                        ),
                        child: Text("Continue" , style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                    )
                  )
              )
            ],
          )
          //background image
        ],
      ),
    );
  }
}
