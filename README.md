# riverpod_crud

A simple (and perhaps opinionated) crud Flutter project using riverpod and freezed to manage state and reactivity 

## Getting Started

Prereq: Flutter 2.2 and above

1) Clone the repo
2) Open in VSCode (preferred since generated files are hidden)
3) Run `flutter pub get` in the terminal

## Overview

This project has a somewhat opinionated view of the code structure and architecture of a Flutter project. There are many ways to structure a Flutter project and I am sure some will disagree. This is by no means meant to be a definitive way to put together a Flutter app. If you do find value in the way it is done, add a Star to the repo. You are free to fork and come up with changes yourself

I will unlikely take PR requests but simple improvement request are welcome. I may not spend a lot of time refining the code going forward. This is meant to be a starting point in understanding how to manage data, state and UI using riverpod in Flutter. I am by no means an expert in riverpod (slightly more in Flutter). Some choices may not be the best but it is a good starting point (IMO).

## Why 

I have always been interested in developing CRUD (Create / Read / Update / Delete) applications since they offer a variety of challenges compared to other types of applications such as highly UX driven or largely readonly applications.

A CRUD application needs to maintain the following:
1) State of the data through the data's lifecycle. Create, update and deletion
2) The UI elements need to display the correct information and need to be kept in sync when the data gets created, updated or deleted.
3) UI elements need to render all or part of the data in different forms

I chose riverpod as it can handle in a very clean way the first 2 points, state management and state notification (reactivity). This makes the rendering of the data easy without needing compromises or "hacks" depending on how the data is displayed.

## What is included

Focused on 2 main aspects.
1) CRUD data (Query and manipulation of data)
2) UI display and reactivity of that data

### The Architecture

The following is a breakdown of the parts of the app with each having their own responsibility.

**lib/data** 

Immutable (freezed code-gen) data objects that are lowest level data objects. They only hold information and no logic apart from being able to compare equality

**lib/models**

Immutable (freezed code-gen) models that contain the latest data and the status of the changes of the data through the `Workable` data class. Workable represents the various forms the data can be in such as loading (working), in error or invalid. This allows the UI to show progress, an error message etc.

**lib/state**

Riverpod's `StateNotifier` instances hold the state of the models. CRUD operations exist on these state classes which use commands to update any API/DB. Changing the state of the `StateNotifier` will notify any listeners of the changes.

**lib/providers**

These providers control the lifecycle of the `StateNotifier`s. The UI uses the `watch` or `read` functions to react to changes or to display information from the model.

**lib/commands**

Commands allow for external access to the data and represent a single action on the data. A command could use underlying services, API calls or local storage.

**lib/screens**

The UI with the display of data and reacting to user input. Input can manipulate data via the providers or navigate to other screens

## What is not included

This project does not (and will not) include the following.
* Advanced navigation or using Flutter 2 navigation system. There are so many ways to implement navigation it is easy to change that as you see fit.
* Login or authentication. This is a CRUD centric project. You can follow the patterns included in the project to add auth screens. 
* Fancy UI screens and animation. I deliberately chose not to put too much work into the styling as the focus was on how to implement the CRUD architecture. There are many ways to present data and to provide a rich user experience that forcing too much into this area might make it harder to do it your way.
* Any API or http calls. There are dummy implemented commands that you can reimplement to either call a backend server (over http or firebase etc) or a local database like sqflite.

## What can you do with it

You can start with the basic application and then alter or expand on it depending on your needs. Since it only (mostly) uses riverpod you are free to swap out the Flutter Navigation 1 to use whatever 3rd party package you want or to use Navigator 2.

Feel free to go to town on the styling and UX of it for your own purposes. 

Note: Changes to any of the freezed classes require running the following: `flutter pub run build_runner build --delete-conflicting-outputs`. 

## License

MIT