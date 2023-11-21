import 'package:flutter/material.dart';
import 'package:meal_monkey/common/color_extension.dart';
import 'package:meal_monkey/common_widget/round_icon_button.dart';
import 'package:meal_monkey/common_widget/round_textfield.dart';

class AddCardView extends StatefulWidget {
  const AddCardView({super.key});

  @override
  State<AddCardView> createState() => _AddCardViewState();
}

class _AddCardViewState extends State<AddCardView> {
  TextEditingController cardNumberTextField = TextEditingController();
  TextEditingController expMonthTextField = TextEditingController();
  TextEditingController expYearTextField = TextEditingController();
  TextEditingController securityCodeTextField = TextEditingController();
  TextEditingController firstNameTextField = TextEditingController();
  TextEditingController lastNameTextField = TextEditingController();
  bool removeCard = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      width: media.width,
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: TColor.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Add Credit/Debit Card',
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.close,
                  color: TColor.primaryText,
                  size: 25,
                ),
              ),
            ],
          ),
          Divider(
            color: TColor.secondaryText.withOpacity(0.4),
            height: 1,
          ),
          const SizedBox(
            height: 15,
          ),
          RoundTextField(
            placeHolder: 'Card Number',
            controller: cardNumberTextField,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                'Expiry',
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 90,
                child: RoundTextField(
                  placeHolder: 'MM',
                  controller: expMonthTextField,
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              SizedBox(
                width: 90,
                child: RoundTextField(
                  placeHolder: 'YYYY',
                  controller: expMonthTextField,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          RoundTextField(
            placeHolder: 'Security Code',
            controller: securityCodeTextField,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(
            height: 15,
          ),
          RoundTextField(
            placeHolder: 'First Name',
            controller: firstNameTextField,
          ),
          const SizedBox(
            height: 15,
          ),
          RoundTextField(
            placeHolder: 'Last Name',
            controller: lastNameTextField,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                "You can remove this card at anytime",
                style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              Switch(
                  value: removeCard,
                  activeColor: TColor.primary,
                  onChanged: (newValue) {
                    setState(() {
                      removeCard = newValue;
                    });
                  })
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          RoundIconButton(
            onPressed: () {},
            buttonText: 'Add Card',
            containerColor: TColor.primary,
            textColor: TColor.white,
            iconPathName: 'assets/images/add.png',
            fontSize: 15,
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
