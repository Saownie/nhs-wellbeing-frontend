import 'package:flutter/material.dart';

class WellbeingItem extends StatelessWidget {
  WellbeingItem({super.key});

  var height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Wellbeing Item'),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
        children: [
          Container(
            width: width,
            height: height * 0.18,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                    image: AssetImage("images/image11.png"),
                    fit: BoxFit.cover)),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0x594f4f4f).withOpacity(0.35),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Text(
            'Author: Wellbeing expert name',
            style: TextStyle(color: Colors.grey),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: EdgeInsets.only(
                  left: 20.0, top: 15.0, right: 10.0, bottom: 10.0),
              children: [
                Text(
                  'Tips to reduce stress',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Text(
                    'Avoid caffeine, alcohol and nicotine. Caffeine and nicotine mimic the stress response in our bodies, and although alcohol is a depressant, in small quantities, it can act as a stimulant and can interfere with things like sleep'),
                SizedBox(
                  height: height * 0.01,
                ),
                Text('Try to get a good nights rest'),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                    'Ask for support from a colleague, family member or friend – there is no shame in doing this; we all need help at some point!'),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                    'Try to be realistic about what you will be able to achieve and communicate this with others – make those to-do lists achievable!'),
                SizedBox(
                  height: height * 0.01,
                ),
                Text('Manage your time effectively'),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                    'Take regular breaks! You will be more effective within your role, plus you will feel happier.'),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                    'Look after yourself, try to leave work on time, make time for the things you enjoy, and spend time with loved ones regularly'),
                SizedBox(
                  height: height * 0.03,
                ),
                Text(
                  'Health and Safety Executive – stress management:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'https://hse.gov.uk/stress/what-to-do.htm',
                  style: TextStyle(color: Colors.blue.shade800),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Text(
                  'ACAS:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text.rich(TextSpan(
                  text: 'Phone: ',
                  children: [
                    TextSpan(
                      text: '0300 123 1100',
                      style: TextStyle(color: Colors.blue.shade800),
                    )
                  ],
                )),
                Text.rich(TextSpan(
                  text: 'Website: ',
                  children: [
                    TextSpan(
                      text: 'https://acas.org.uk',
                      style: TextStyle(color: Colors.blue.shade800),
                    )
                  ],
                )),
                SizedBox(
                  height: height * 0.03,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
