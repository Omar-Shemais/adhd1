import 'package:adhd/Pages/sign_in.dart';
import 'package:flutter/material.dart';

import '../core/app_colors/app_colors.dart';
import '../testADHD/views/quiz_details/view.dart';

// ignore: camel_case_types
class ADHD_Container extends StatelessWidget {
  const ADHD_Container({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Image(image: AssetImage('Assets/Images/adhd.jpg'),width:300,),
          Text(
            'What is ADHA ?',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 12,
          ),
          Center(
              child: Text(
            'one of the most common neurobehavioral',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 17,
                fontWeight: FontWeight.w400),
          )),
          
          Center(
              child: Text(
            ' disorders of childhood. It is usually first ',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 17,
                fontWeight: FontWeight.w400),
          )),
         
          Center(
              child: Text(
            ' diagnosed in childhood and often lasts ',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 17,
                fontWeight: FontWeight.w400),
          )),
        
          Center(
              child: Text(
            ' into adulthood',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 17,
                fontWeight: FontWeight.w400),
          )),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class Questions_Container extends StatelessWidget {
   Questions_Container({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 85,
          ),
          Image(image: AssetImage('Assets/Images/qustions.jpg'),width: 233,),
          SizedBox(height: 10,),
          Text(
            '8 Questions',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
              child: Text(
            'This simple test has 8 quuestions that best',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400),
          )),
         
          Center(
              child: Text(
            ' describes how we felt aand conducted ',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 17,
                fontWeight: FontWeight.w400),
          )),
          
          Center(
              child: Text(
            ' yourself over that past 3 monthes ',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 17,
                fontWeight: FontWeight.w400),
          )),
          SizedBox(height: 100,),
          Center(
            child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const QuizDetailsView()),
                      );
                    },
                    child: Container(
                      height: 45,
                      width: 180,
                      decoration: BoxDecoration(
                          color: AppColors.blue,
                          borderRadius: BorderRadius.circular(35)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Test now',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Amiko'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.arrow_forward_outlined,
                            color: AppColors.black,
                            size: 20,
                          )
                        ],
                      ),
                    )),
          )
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class Comunity_Container extends StatelessWidget {
  const Comunity_Container({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 110,
          ),
          Image(image: AssetImage('Assets/Images/comunte.jpg'),width: 300,),
          SizedBox(
            height: 15,
          ),
          Text(
            'Community',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
              child: Text(
            'a group of individuals who are impacted ADHD',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 1,
                fontWeight: FontWeight.w400),
          )),
         
          Center(
              child: Text(
            ' by ADHD,including those with themselves',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400),
          )),
         
          Center(
              child: Text(
            ',thier family members,friends',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 17,
                fontWeight: FontWeight.w400),
          )),
          
          Center(
              child: Text(
            ' ,and caregivers. ',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400),
          )),
         
          Center(
              child: Text(
            '',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400),
          )),
         
          Center(
              child: Text(
            '',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400),
          )),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class Note_Container extends StatelessWidget {
  const Note_Container({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 105,
          ),
          const Image(image: AssetImage('Assets/Images/note.jpg'),width: 250,),
          const Text(
            'Note',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 12,
          ),
          const Center(
              child: Text(
            'This test is not a diagnostic test .please',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400),
          )),
          
          const Center(
              child: Text(
            ' consult your physician if you are  ',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400),
          )),
         
          const Center(
              child: Text(
            ' concerned about ADHD',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400),
          )),
          const SizedBox(
            height: 100,
          ),
          Center(
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignIn()),
                    );
                  },
                  child: Container(
                    height: 45,
                    width: 180,
                    decoration: BoxDecoration(
                        color: AppColors.blue,
                        borderRadius: BorderRadius.circular(35)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Let\'s go',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Amiko'),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.arrow_forward_outlined,
                          color: AppColors.black,
                          size: 20,
                        )
                      ],
                    ),
                  )))
        ],
      ),
    );
  }
}
