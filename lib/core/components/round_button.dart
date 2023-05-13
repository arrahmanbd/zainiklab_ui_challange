


import '../export.dart';

class RoundButton extends StatelessWidget {

  const RoundButton({
    Key? key ,
    this.buttonColor = AppColor.activeColor  ,
    this.textColor = AppColor.whiteColor ,
    required this.title ,
    required this.onPress ,
    this.width = 60 ,
    this.height = 50 ,
  this.loading = false
  }) : super(key: key);


  final bool loading;
  final String title ;
  final double height , width  ;
  final VoidCallback onPress ;
  final Color textColor, buttonColor ;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor ,
          borderRadius: BorderRadius.circular(50)
        ),
        child: loading ?
        const Center(child: CircularProgressIndicator()) :
        Center(
          child: Text(title , style:  Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),),
        ),
      ),
    );
  }
}