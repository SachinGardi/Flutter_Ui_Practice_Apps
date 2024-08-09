import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:rive_bottom_navigation_bar/model/nav_item_model.dart';
const Color bottomNavBgColor = Color(0xff17203A);

class BottomNavWithAnimatedIcons extends StatefulWidget {
  const BottomNavWithAnimatedIcons({super.key});

  @override
  State<BottomNavWithAnimatedIcons> createState() => _BottomNavWithAnimatedIconsState();
}

class _BottomNavWithAnimatedIconsState extends State<BottomNavWithAnimatedIcons> {

  List<SMIBool> riveIconInput = [];
  List<StateMachineController?> controllers = [];
  int _selectedNavIndex = 0;
  List<String> pages = ['Chat','Search','History','Notification','Profile'];


  @override
  void dispose() {
    for(var controller in controllers){
      controller!.dispose();
    }
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    void animateTheIcon(int index){
      riveIconInput[index].change(true);
      Future.delayed(const Duration(seconds: 1),(){
        riveIconInput[index].change(false);
      });
    }

    void riveOnInit(Artboard artboard,{required String stateMachineName}){
      StateMachineController? controller = StateMachineController.fromArtboard(artboard, stateMachineName);
      artboard.addController(controller!);
      controllers.add(controller);
      riveIconInput.add(controller.findInput<bool>('active') as SMIBool);
    }




    return Scaffold(
      body: Center(child: Text(pages[_selectedNavIndex]),),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 60,
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 24,vertical: 15),
          decoration: BoxDecoration(
            color: bottomNavBgColor.withOpacity(0.8),
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: bottomNavBgColor.withOpacity(0.3),
                offset: const Offset(0, 20),
                blurRadius: 20
              )
            ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(bottomNavItem.length, (index) {
              final riveIcon = bottomNavItem[index].rive;
             return GestureDetector(
                  onTap:() {
                    animateTheIcon(index);
                    setState(() {
                      _selectedNavIndex = index;
                    });

                  },
               child: Column(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                    AnimatedBar(isActive: index == _selectedNavIndex),
                    SizedBox(height: 30,width: 30,
                      child: Opacity(
                        opacity: _selectedNavIndex == index?1:0.5,
                        child: RiveAnimation.asset(riveIcon.src,
                          artboard: riveIcon.artboard,
                          onInit: (artboard) {
                            riveOnInit(artboard,stateMachineName:riveIcon.stateMachineName);
                          },
                        ),
                      ),
                    ),
                 ],
               ),
             );
            }),
          ),
        ),
      ),
    );
  }
}

class AnimatedBar extends StatelessWidget {
  const AnimatedBar({
    super.key,
    required this.isActive
  });
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(bottom: 2),
        height: 4,
        width: isActive?20:0,
        decoration: BoxDecoration(
          color: const Color(0xFF81B4FF),
          borderRadius: BorderRadius.circular(12)
        ),
        duration: const Duration(milliseconds:200)
    );
  }
}
