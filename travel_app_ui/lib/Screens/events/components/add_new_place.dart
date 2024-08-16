import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_confi.dart';

class AddNewPlace extends StatelessWidget {
  const AddNewPlace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(350),
      width: getProportionateScreenWidth(158),
      decoration:  BoxDecoration(
        color:const Color(0xFF6A6C93).withOpacity(0.09),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            width: 2,
            color: const Color(0xFFEBE8F6)
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: getProportionateScreenWidth(53),
            width: getProportionateScreenWidth(53),
            child: ElevatedButton(

                style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    padding: EdgeInsets.zero,
                    shape: const StadiumBorder()
                ),
                onPressed: (){}, child: Icon(Icons.add,color: Colors.white,size: getProportionateScreenWidth(35),)),
          ),
          const VerticalSpacing(of: 10,),
          const Text('Add New Place',style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold
          ),)
        ],
      ),
    );
  }
}