import 'package:flutter/material.dart';
import 'package:laza/core/utils/widgets/arrow_back_icon.dart';
import 'package:laza/core/utils/widgets/custom_app_bar.dart';
import 'package:laza/core/utils/widgets/custom_button.dart';
import 'package:laza/core/utils/widgets/custom_switch_widget.dart';
import 'package:laza/core/utils/widgets/custom_text_form_field.dart';

class AddressView extends StatelessWidget {
  static const String routeName = 'address view';

  AddressView({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        leadingWidget: ArrowBackIcon(),
        titleText: 'Address',
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const SizedBox(height: 20.0),
                CustomTextFormField(
                  controller: nameController,
                  hintText: 'Type your name here',
                  labelText: 'Name',
                ),
                const SizedBox(height: 15.0),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextFormField(
                        controller: countryController,
                        hintText: 'Egypt',
                        labelText: 'Country',
                      ),
                    ),
                    const SizedBox(width: 15.0),
                    Expanded(
                      child: CustomTextFormField(
                        controller: cityController,
                        hintText: 'Cairo',
                        labelText: 'City',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                CustomTextFormField(
                  controller: phoneController,
                  hintText: '+2012345678910',
                  labelText: 'Phone Number',
                ),
                const SizedBox(height: 15.0),
                CustomTextFormField(
                  controller: addressController,
                  hintText: '15 amer st, tahrer sq, cairo',
                  labelText: 'Address',
                ),
                const SizedBox(height: 20.0),
                const CustomSwitchWidget(text: 'Save as primary address')
              ],
            ),
          ),
          const CustomButton(txt: 'Save Address'),
        ],
      ),
    );
  }
}
