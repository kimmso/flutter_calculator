import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ios_calculator/src/components/black_button.dart';
import 'package:flutter_ios_calculator/src/components/grey_button.dart';
import 'package:flutter_ios_calculator/src/components/orange_button.dart';
import 'package:flutter_ios_calculator/src/constants/button_color.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: Column(
            children: [
              Expanded(flex: 2, child: _result()),
              Expanded(flex: 8, child: _buttons()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _result() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Align(
        alignment: Alignment.bottomRight,
        child: SelectableText(
          '0',
          style: TextStyle(
              fontSize: 70, fontWeight: FontWeight.w300, color: Colors.white),
        ),
      ),
    );
  }

  Widget _buttons() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _firstRow(),
        _secondRow(),
        _thirdRow(),
        _fourthRow(),
        _fifthRow(),
      ],
    );
  }

  Widget _firstRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GreyButton(onPressed: () {}, child: 'AC'),
          GreyButton(onPressed: () {}, child: '+/-'),
          GreyButton(onPressed: () {}, child: '%'),
          OrangeButton(
              isClick: false,
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.divide,
                color: ButtonColor.orange,
                size: 35,
              ),
              activeIcon: Icon(
                CupertinoIcons.divide,
                color: ButtonColor.white,
                size: 35,
              ))
        ],
      ),
    );
  }

  Widget _secondRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlackButton(onPressed: () {}, type: Type.ROUND, child: '7'),
          BlackButton(onPressed: () {}, type: Type.ROUND, child: '8'),
          BlackButton(onPressed: () {}, type: Type.ROUND, child: '9'),
          OrangeButton(
              isClick: false,
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.multiply,
                color: ButtonColor.orange,
                size: 35,
              ),
              activeIcon: Icon(
                CupertinoIcons.multiply,
                color: ButtonColor.white,
                size: 35,
              ))
        ],
      ),
    );
  }

  Widget _thirdRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlackButton(onPressed: () {}, type: Type.ROUND, child: '4'),
          BlackButton(onPressed: () {}, type: Type.ROUND, child: '5'),
          BlackButton(onPressed: () {}, type: Type.ROUND, child: '6'),
          OrangeButton(
              isClick: false,
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.minus,
                color: ButtonColor.orange,
                size: 35,
              ),
              activeIcon: Icon(
                CupertinoIcons.minus,
                color: ButtonColor.white,
                size: 35,
              ))
        ],
      ),
    );
  }

  Widget _fourthRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlackButton(onPressed: () {}, type: Type.ROUND, child: '1'),
          BlackButton(onPressed: () {}, type: Type.ROUND, child: '2'),
          BlackButton(onPressed: () {}, type: Type.ROUND, child: '3'),
          OrangeButton(
              isClick: false,
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.add,
                color: ButtonColor.orange,
                size: 35,
              ),
              activeIcon: Icon(
                CupertinoIcons.add,
                color: ButtonColor.white,
                size: 35,
              ))
        ],
      ),
    );
  }

  Widget _fifthRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlackButton(
            onPressed: () {},
            type: Type.FLAT,
            child: '0',
          ),
          BlackButton(
            onPressed: () {},
            type: Type.ROUND,
            child: '.',
          ),
          OrangeButton(
              isClick: false,
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.equal,
                color: ButtonColor.orange,
                size: 35,
              ),
              activeIcon: Icon(
                CupertinoIcons.equal,
                color: ButtonColor.white,
                size: 35,
              ))
        ],
      ),
    );
  }
}
