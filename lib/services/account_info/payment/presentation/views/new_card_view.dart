import 'package:flutter/material.dart';
import 'package:laza/core/utils/widgets/arrow_back_icon.dart';
import 'package:laza/core/utils/widgets/custom_app_bar.dart';
import 'package:laza/core/utils/widgets/custom_button.dart';
import 'package:laza/services/account_info/payment/presentation/views/widgets/card_type_list.dart';
import 'package:laza/services/account_info/payment/presentation/views/widgets/new_card_form.dart';

class NewCardView extends StatelessWidget {
  const NewCardView({super.key});

  static const String routeName = 'new card view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        leadingWidget: ArrowBackIcon(),
        titleText: 'Add New Card',
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height -
                AppBar().preferredSize.height -
                MediaQuery.of(context).padding.top -
                MediaQuery.of(context).padding.bottom,
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    SizedBox(height: 20.0),
                    CardTypeList(),
                    SizedBox(height: 30.0),
                    NewCardForm(),
                  ],
                ),
              ),
              CustomButton(text: 'Add Card')
            ],
          ),
        ),
      ),
    );
  }
}
