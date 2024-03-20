import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:onboarding_page/content.dart';

class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  int currentIndex = 0;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfdd8c3),
      body:Center(
        child: Container(
          height: 500,
          width: 200,
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: contents.length,
                  onPageChanged: (int index){
                    setState(() {
                      currentIndex =index;
                    });
                  },
                  itemBuilder: (_,i){
                  return Column(
                    
                    children: [
                      const SizedBox(height: 60,),
                     const Text("Welcom to",style: TextStyle(fontSize: 16),),
                     const Text("Plantly",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                     Image.asset(contents[i].image),
                
                      Text( contents[i].discription,
                     style: TextStyle(fontSize: 14),
                     textAlign: TextAlign.center,
                     )
                    ],
                  );
                }),
              ),
          
               Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: List.generate(
                    contents.length,
                    (index) => buildDot(index, context),
                  ),
                ),
              ),
              SizedBox(height: 10,),
               ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                    backgroundColor: Color(0xFF405549)
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(fontSize: 18,color: Colors.white),
                  ),
                ),
                SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
    );
  }
     
  }
