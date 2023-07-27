import 'package:app_comics_marvel1/config/helper/app_text_style.dart';
import 'package:app_comics_marvel1/domain/entities/comics.dart';
import 'package:app_comics_marvel1/presentation/widgets/shared/buttons_appbar.dart';
import 'package:flutter/material.dart';

class DraggableComicsSheet extends StatefulWidget {
  final Comics comics;
  const DraggableComicsSheet({super.key, required this.comics});

  @override
  State<DraggableComicsSheet> createState() => _DraggableComicsSheetState();
}

class _DraggableComicsSheetState extends State<DraggableComicsSheet> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const sheetPercentage = 0.1;
    return DraggableScrollableSheet(
      initialChildSize: sheetPercentage,
      minChildSize: sheetPercentage,
      maxChildSize: 0.4,
      builder: (context, scrollController) {
        return ListView(
          controller: scrollController,
          children: [
            Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  const Text(
                    'MORE ABOUT',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  ButtonsAppBar(
                      iconData: Icons.keyboard_arrow_down_rounded,
                      onPressed: () {})
                ],
              ),
            ),
            _ContainerDraggable(size: size, widget: widget)
          ],
        );
      },
    );
  }
}

class _ContainerDraggable extends StatelessWidget {
  const _ContainerDraggable({
    required this.size,
    required this.widget,
  });

  final Size size;
  final DraggableComicsSheet widget;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
        ),
        height: size.height * .4,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15.0),
                width: size.width * .2,
                height: size.height * .006,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(50)),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: size.width * .45,
                    height: size.height * .3,
                    child: Card(
                      elevation: 5,
                      clipBehavior: Clip.hardEdge,
                      child: Image.network(
                        '${widget.comics.thumbnail.path}.${widget.comics.thumbnail.extensionThumbnail}',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * .45,
                    height: size.height * .3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(child: Text(widget.comics.title,
                        overflow: TextOverflow.ellipsis,)),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey[100]
                          ),
                          padding: EdgeInsets.all(10),
                          height: size.height * .2,
                          width: size.width*1,
                          child: Text(
                            widget.comics.description == '#N/A'||widget.comics.description.isEmpty
                                ? 'Sin Descripción'
                                : widget.comics.description,
                            overflow: TextOverflow.clip,
                            style: TextStyleDetailComics().textStyleDetails(Colors.black),
                          ),
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('\$ ${widget.comics.prices[0].price}'),
                            ElevatedButton.icon(
                              style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(Colors.red),
                                foregroundColor: MaterialStatePropertyAll(Colors.white)
                              ),
                              onPressed: (){}, icon: Icon(Icons.monetization_on_outlined), label: Text('Adquirir'))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
