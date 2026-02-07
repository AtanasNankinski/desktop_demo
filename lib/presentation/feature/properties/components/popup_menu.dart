part of '../properties_screen.dart';

class PropertiesPopupMenu extends StatefulWidget {
  const PropertiesPopupMenu({super.key});

  @override
  State<PropertiesPopupMenu> createState() => _PopupMenuState();
}

class _PopupMenuState extends State<PropertiesPopupMenu> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Menu>(
      icon: const Icon(Icons.more_vert),
      onSelected: (Menu item) {},
      itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
        const PopupMenuItem<Menu>(
          value: Menu.optionOne,
          child: ListTile(
            leading: Icon(Icons.visibility_outlined),
            title: Text('Option 1'),
          ),
        ),
        const PopupMenuItem<Menu>(
          value: Menu.optionTwo,
          child: ListTile(
            leading: Icon(Icons.share_outlined),
            title: Text('Option 2'),
          ),
        ),
        const PopupMenuItem<Menu>(
          value: Menu.optionThree,
          child: ListTile(
            leading: Icon(Icons.link_outlined),
            title: Text('Option 3'),
          ),
        ),
        const PopupMenuDivider(),
        const PopupMenuItem<Menu>(
          value: Menu.optionFour,
          child: ListTile(
            leading: Icon(Icons.delete_outline),
            title: Text('Option 4'),
          ),
        ),
        const PopupMenuItem<Menu>(
          value: Menu.optionFive,
          child: ListTile(
            leading: Icon(Icons.download_outlined),
            title: Text('Option 5'),
          ),
        ),
        const PopupMenuItem<Menu>(
          value: Menu.optionSix,
          child: ListTile(
            leading: Icon(Icons.access_alarms),
            title: Text('Option 6'),
          ),
        ),
        const PopupMenuItem<Menu>(
          value: Menu.optionSeven,
          child: ListTile(
            leading: Icon(Icons.account_tree_outlined),
            title: Text('Option 7'),
          ),
        ),
        const PopupMenuItem<Menu>(
          value: Menu.optionEight,
          child: ListTile(
            leading: Icon(Icons.adb_rounded),
            title: Text('Option 8'),
          ),
        ),
        const PopupMenuItem<Menu>(
          value: Menu.optionNine,
          child: ListTile(
            leading: Icon(Icons.add_chart_rounded),
            title: Text('Option 9'),
          ),
        ),
        const PopupMenuItem<Menu>(
          value: Menu.optionTen,
          child: ListTile(
            leading: Icon(Icons.add_circle),
            title: Text('Option 10'),
          ),
        ),
      ],
    );
  }
}

enum Menu {
  optionOne,
  optionTwo,
  optionThree,
  optionFour,
  optionFive,
  optionSix,
  optionSeven,
  optionEight,
  optionNine,
  optionTen
}
