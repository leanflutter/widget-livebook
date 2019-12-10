import '../../includes.dart';

// This is the type used by the popup menu below.
enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

class SlicePopupMenuButton extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SlicePopupMenuButton';

  @override
  Widget build(BuildContext context) {
    // This menu button widget updates a _selection field (of type WhyFarther,
    // not shown here).
    return PopupMenuButton<WhyFarther>(
      onSelected: (WhyFarther result) {
        // setState(() {
        //   _selection = result;
        // });
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.harder,
          child: Text('Working a lot harder'),
        ),
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.smarter,
          child: Text('Being a lot smarter'),
        ),
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.selfStarter,
          child: Text('Being a self-starter'),
        ),
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.tradingCharter,
          child: Text('Placed in charge of trading charter'),
        ),
      ],
    );
  }
}
