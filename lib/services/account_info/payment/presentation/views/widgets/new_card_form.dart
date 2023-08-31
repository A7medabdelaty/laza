import 'package:flutter/cupertino.dart';
import 'package:laza/core/utils/widgets/custom_text_form_field.dart';

class NewCardForm extends StatelessWidget {
  const NewCardForm({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController numberController = TextEditingController();
    TextEditingController expController = TextEditingController();
    TextEditingController cvvController = TextEditingController();
    return Column(
      children: [
        CustomTextFormField(
          controller: nameController,
          hintText: 'Mrh Raju',
          labelText: 'Card Owner',
        ),
        const SizedBox(height: 15.0),
        CustomTextFormField(
          controller: numberController,
          hintText: '5254 7634 8734 7690',
          labelText: 'Card Number',
        ),
        const SizedBox(height: 15.0),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                controller: expController,
                hintText: '12/24',
                labelText: 'EXP',
              ),
            ),
            const SizedBox(width: 15.0),
            Expanded(
              child: CustomTextFormField(
                controller: cvvController,
                hintText: '7763',
                labelText: 'CVV',
              ),
            ),
          ],
        ),
        const SizedBox(height: 20.0),
      ],
    );
  }
}
