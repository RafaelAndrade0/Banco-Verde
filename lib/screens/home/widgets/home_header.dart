import 'package:banco_verde/screens/home/widgets/operation_item.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.green,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/bg_green6.jpg'),
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      padding: EdgeInsets.all(25),
      // height: size.height * .40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Banco Verde',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
              ),
              Row(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                          icon: SvgPicture.asset(
                            'assets/icons/notification.svg',
                          ),
                          onPressed: () {}),
                      Container(
                        padding: EdgeInsets.only(left: 5),
                        child: IconButton(
                          icon: SvgPicture.asset('assets/icons/menu.svg'),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'R\$ 2000,00',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Balanço',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white.withOpacity(.8),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              OperationItem(
                icon: Icons.money_off,
                title: 'Title 1',
              ),
              OperationItem(
                icon: Icons.money_off,
                title: 'Title 1',
              ),
              OperationItem(
                icon: Icons.money_off,
                title: 'Title 1',
              ),
              OperationItem(
                icon: Icons.money_off,
                title: 'Title 1',
              ),
            ],
          ),
          EventPhotos(),
        ],
      ),
    );
  }
}

class EventPhotos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      child: Container(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expandable(
              collapsed: ExpandableButton(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(.9),
                    ),
                    child: Icon(Icons.arrow_downward),
                  ),
                ),
              ),
              expanded: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      OperationItem(
                        icon: Icons.money_off,
                        title: 'Title 1',
                      ),
                      OperationItem(
                        icon: Icons.money_off,
                        title: 'Title 1',
                      ),
                      OperationItem(
                        icon: Icons.money_off,
                        title: 'Title 1',
                      ),
                      OperationItem(
                        icon: Icons.money_off,
                        title: 'Title 1',
                      ),
                    ],
                  ),
                  ExpandableButton(
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(Icons.arrow_upward),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
