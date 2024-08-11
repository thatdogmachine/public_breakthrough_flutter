import 'package:flutter/material.dart';
import 'package:my_flutter_app/functions.dart';
import 'package:my_flutter_app/variables.dart';
import 'package:my_flutter_app/variables_course_activities.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'custom_widgets.dart';

class CourseActivitiesPage extends StatefulWidget {
  const CourseActivitiesPage({super.key});

  @override
  CourseActivitiesPageState createState() => CourseActivitiesPageState();
}

class CourseActivitiesPageState extends State<CourseActivitiesPage> {
  List<bool> isOpen = List.empty(growable: true);
  List<bool> activitiesCompleted = List.empty(growable: true);
  List<String> textOfCourseActivities =
      List.empty(growable: true); // see also: variables_course_activities.dart

  late ScrollController _scrollController;

  @override
  void initState() {
    if (textOfCourseActivities.isEmpty) {
      // TODO: To understand these next 3 lines, make them a comment
      // with // and explore what happens
      textOfCourseActivities =
          List<String>.filled(assetsCourseActivities.length, '');
      activitiesCompleted =
          List<bool>.filled(assetsCourseActivities.length, false);
      isOpen = List<bool>.filled(assetsCourseActivities.length, false);
    }
    super.initState();
    _loadCheckboxStates();
    _loadMarkdownData();
    _scrollController = ScrollController();
  }

  Future<void> _loadMarkdownData() async {
    print('assetsCourseActivities length: ${assetsCourseActivities.length}');
    for (int i = 0; i < assetsCourseActivities.length; i++) {
      print(
          'i is: $i and assetsCourseActivities[$i] is: ${assetsCourseActivities[i]}');
      try {
        var textCourseActivity =
            await readMarkdownFromAssets(assetsCourseActivities[i].toString());
        textOfCourseActivities[i] = textCourseActivity;
      } catch (e) {
        print("Error reading file in readMarkdownFromAssets: $e");
      }
    }
  }

  Future<void> _loadCheckboxStates() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      for (int i = 0; i < assetsCourseActivities.length; i++) {
        activitiesCompleted[i] = prefs.getBool('courseActivity$i') ?? false;
      }
    });
  }

  Future<void> _saveCheckboxState(String key, bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }

  @override
  Widget build(BuildContext context) {
    // _loadMarkdownData();
    return Scaffold(
      appBar: AppBar(
        title: courseActivitiesPageTitle,
      ),
      body: Scrollbar(
        controller: _scrollController,
        thumbVisibility: true,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              for (var i = 0; i < mapCourseActivities.entries.length; i++)
                CustomExpansionPanelList(
                  titleAlign: TextAlign.center,
                  title:
                      'Activity $i:\n${mapCourseActivities.entries.elementAt(i).key}',
                  activity: activitiesCompleted[i],
                  checkbox: 'courseActivity$i',
                  isOpen: isOpen[i],
                  onExpansionChanged: (bool isExpanded) {
                    setState(() {
                      _loadMarkdownData();
                      // reduces hot reload effort on MacOs
                      // but not on web. Elsewhere untested
                      isOpen[i] = isExpanded;
                    });
                  },
                  onCheckboxChanged: (bool? value) {
                    setState(() {
                      activitiesCompleted[i] = value ?? false;
                      _saveCheckboxState('courseActivity$i', value ?? false);
                      switch (activitiesCompleted[i]) {
                        case true:
                          isOpen[i] = false;
                          break;
                        case false:
                          isOpen[i] = true;
                          break;
                      }
                    });
                  },
                  buttonCopyContentList: mapCourseActivities.entries
                          .elementAt(i)
                          .value['buttonCopyContent'] ??
                      [],
                  buttonCopyTextList: mapCourseActivities.entries
                          .elementAt(i)
                          .value['buttonCopyText'] ??
                      [],
                  markdownData: textOfCourseActivities[i],
                )
            ],
          ),
        ),
      ),
    );
  }
}
