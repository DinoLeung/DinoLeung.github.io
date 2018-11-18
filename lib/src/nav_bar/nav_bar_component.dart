import 'package:angular/angular.dart';
import 'package:angular_components/app_layout/material_persistent_drawer.dart';
import 'package:angular_components/content/deferred_content.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_components/material_icon/material_icon.dart';
import 'package:angular_components/material_list/material_list.dart';
import 'package:angular_components/material_list/material_list_item.dart';
import 'package:angular_components/material_toggle/material_toggle.dart';

@Component(
  selector: 'nav-bar',
  directives: [
    DeferredContentDirective,
    MaterialButtonComponent,
    MaterialIconComponent,
    MaterialPersistentDrawerDirective,
    MaterialToggleComponent,
    MaterialListComponent,
    MaterialListItemComponent,
  ],
  templateUrl: 'nav_bar_component.html',
  styleUrls: [
    'nav_bar_component.css',
    'package:angular_components/app_layout/layout.scss.css',
  ],
)
class AppBar {
  static List<String> prompts = [
    'I am a human...',
    'I write code...',
    'Look, I am illusive...',
    'It is a library written in Dart...'
  ];

  int index = 0;

  void selectItem(int index) {
    this.index = index;
  }
}
