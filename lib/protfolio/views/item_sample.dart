import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class ItemSample extends StatefulWidget {
  const ItemSample(
      {final Key? key,
      required final this.imageUrl,
      this.nameFrameWork,
      this.link})
      : super(key: key);

  final String imageUrl;
  final String? nameFrameWork;
  final String? link;

  @override
  State<ItemSample> createState() => _ItemSampleState();
}

class _ItemSampleState extends State<ItemSample> {
  bool show = false;

  @override
  Widget build(final BuildContext context) => GestureDetector(
    onTap: (){
      Utils.launchURL(widget.link!);
    },
    child: Column(
          children: [
            MouseRegion(
              onEnter: (final value) {
                setState(() {
                  show = true;
                });
              },
              onExit: (final value) {
                setState(() {
                  show = false;
                });
              },
              child: Container(
                height: 350,
                width: 380,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Utils.primaryColor,
                      width: 4,
                      style: BorderStyle.solid),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Stack(
                  fit: StackFit.passthrough,
                  alignment: Alignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      child: Image(
                        image: NetworkImage(
                          widget.imageUrl,
                        ),
                        fit: BoxFit.cover,
                        isAntiAlias: true,
                        gaplessPlayback: true,
                        loadingBuilder:
                            (final context, final child2, final loadingProgress) {
                          if (loadingProgress == null) {
                            return FadeInUp(
                              delay: const Duration(milliseconds: 500),
                              duration: const Duration(milliseconds: 300),
                              child: child2,
                            );
                          }
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                        semanticLabel: 'mohammad kazeminejad',
                        excludeFromSemantics: true,
                      ),
                    ),
                    AnimatedScale(
                      scale: show?1:0,
                      duration: const Duration(milliseconds: 500),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.greenAccent.withOpacity(.7),
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Develope with ${widget.nameFrameWork}',
                                  style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20,),
                                ),
                                const SizedBox(height: 10,),
                                const Text(
                                  'Click Here',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12,),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
  );
}
