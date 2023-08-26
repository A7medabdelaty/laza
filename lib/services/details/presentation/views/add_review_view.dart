import 'package:flutter/material.dart';
import 'package:laza/core/utils/widgets/arrow_back_icon.dart';
import 'package:laza/core/utils/widgets/custom_app_bar.dart';
import 'package:laza/core/utils/widgets/custom_button.dart';
import 'package:laza/services/details/presentation/views/widgets/custom_star_slider.dart';

import 'widgets/add_review_name_field.dart';
import 'widgets/add_review_text_area.dart';

class AddReviewView extends StatelessWidget {
  const AddReviewView({super.key});

  static const String routeName = 'add review';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        leadingWidget: ArrowBackIcon(),
        titleText: 'Add Review',
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25.0),
                    AddReviewNameField(),
                    SizedBox(height: 20.0),
                    AddReviewTextArea(),
                    SizedBox(height: 20.0),
                    CustomStarSlider(),
                  ],
                ),
              ),
              CustomButton(txt: 'Submit Review'),
            ],
          ),
        ),
      ),
    );
  }
}
