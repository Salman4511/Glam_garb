import 'package:flutter/material.dart';
import 'package:glam_garb/shared/constants/constants.dart';

class ClickableTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final IconData leading;

  const ClickableTile({
    required this.title,
    required this.onTap, required this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListTile(
        onTap: onTap ,
        title: Text(
          title,
          style: TextStyle(fontSize: 18),
        ),
        trailing: Icon(Icons.arrow_forward_ios,color: baseColor,),
        leading: Icon(leading,color: baseColor,),
      ),
    );
  }
}
