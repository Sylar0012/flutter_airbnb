import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/common/common_form_field.dart';
import 'package:flutter_airbnb/size.dart';

class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(-0.6, 0), // x,y
      child: Container(
        width: 420,
        height: 400,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(gap_l),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _buildFormTitle(),
                _buildFormField(),
                _buildFormSubmit(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormTitle() {
    return SizedBox();
  }

  Widget _buildFormField() {
    return CommformField();
  }

  Widget _buildFormSubmit() {
    return SizedBox();
  }
}
