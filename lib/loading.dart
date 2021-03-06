/*
 * @Author: indeex
 * @Date: 2021-10-13 20:10:08
 * @Email: indeex@qq.com
 */
import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Image.asset('assets/images/loading.png'),
          Center(
            child: Text(
              'Flutter企业站',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 36.0,
                  decoration: TextDecoration.none),
            ),
          )
        ],
      ),
    );
  }
}
