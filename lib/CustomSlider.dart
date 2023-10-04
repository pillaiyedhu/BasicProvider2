import 'package:day8_provider_try/ProgressValueProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomSlider extends StatefulWidget {
  CustomSliderState createState() {
    return CustomSliderState();
  }
}

class CustomSliderState extends State<CustomSlider> {


  void onChangeValue(double val) {
    Provider.of<ProgressValue>(context,listen: false).setprogress = val;
  }

  Widget build(BuildContext context) {
    var progress = Provider.of<ProgressValue>(context).getprogress;

    return Container(
      child: Slider(value: progress, onChanged: onChangeValue),
    );
  }
}
