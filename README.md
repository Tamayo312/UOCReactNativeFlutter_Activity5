<div style="text-align:center"><img src="https://github.com/almata/UOCReactNativeFlutter/blob/master/images/uoc_masterbrand_2linies_posititiu.png" width="430" height="110" /></div>

# New Trends in Mobile Development – 2020 / 21

# 🔵 Activity 5 − Third-party libraries, state management with Provider and data from API − 25%

## 🧘🏼‍♂️ Presentation

In this **Activity 5** we will work on one really important aspect of the development in Flutter that we have not seen yet: using third-party libraries. We will learn how to find and include them in our projects. We will also see a different approach to manage state: instead of the "lifting up state" strategy seen in Activity 4, we will use Provider to do the same in a much cleaner way.

## ‼️ GitHub

Please visit the repository for this activity [on GitHub](https://github.com/almata/UOCReactNativeFlutter/tree/master/Activity5) and clone it to your machine. You will get a local directory called **Activity5** including all files and resources required to solve the exercises in this activity.

## 🎯 Exercise 1 − Provider − 20%

You have to achieve exactly the same final result you had to achieve in **Activity 4 - Exercise 2 − Lifting up state**. Just as a reminder, see video below:

[![Activity 4 - Exercise 2 - lifting](http://img.youtube.com/vi/053c0CnPoXA/0.jpg)](http://www.youtube.com/watch?v=053c0CnPoXA "Activity 4 - Exercise 2 - lifting")

Please open **state_provider** project. It contains exactly the same code you saw in **lifting** project in **Activity 4**. As you can see, there are seven widgets, all of them extending `StatelessWidget`. When you tap on **Update counter** nothing happens. What we really want is to update the counter, as you can see in the video. Change whatever it takes in the code to achieve this result but this time use **provider** library.

Start by checking Flutter packages created and published by other Flutter developers at [pub.dev](https://pub.dev/flutter/packages) and you'll see that the package with most LIKES is [provider](https://pub.dev/packages/provider). Provider has become a _de facto_ standard for state management in Flutter. In **Activity 4** you saw the "lifting up state" strategy. While that strategy works perfectly fine, it can quickly become a bit tedious as an app grows in size and complexity. Provider helps us deal with state management when this happens.

* No class in this project can extend from `StatefulWidget`.
* Check [Installing section](https://pub.dev/packages/provider/install) for **provider** package and follow the instructions. This is how we add dependencies to third-party libraries in Flutter.
* Read official documentation for [Simple app state management](https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple).
* Read the article [Making sense of all those Flutter Providers](https://medium.com/flutter-community/making-sense-all-of-those-flutter-providers-e842e18f45dd).
* Watch video [Flutter Provider: The Essential Guide](https://www.youtube.com/watch?v=MkFjtCov62g&list=WL&index=1). This may very well be your best friend to understand how **provider** works. But please understand this video is a bit outdated. So check **provider** documentation and specially the [Example section](https://pub.dev/packages/provider/example) to understand how you need to use this library. 
* No class in this project can extend from `StatefulWidget`. (Yes, again :)

## 🎯 Exercise 2 − Pick some library − 10%

At this point, you already know how to use third-party libraries. So please have a look at what other Flutter developers have created and published in [pub.dev](https://pub.dev/flutter/packages) and pick a library with both **PUB POINTS >= 100** and **POPULARITY >= 80%** (see note below) and use it in a new project (name it **pub_dev_library**). Add some comments in main.dart explaining what library you have picked, what it is for, why you like it and how you are using it. 

* You obviously can't pick **provider** or **http**, as you have used **provider** in previous exercise and will use **http** in next one.
* Note: If you really want to use a library that does not match these requirements, please send **first** an email to albertmata@uoc.edu explaining what library you would like to use and why.

## 🎯 Exercise 3 − Async, http, JSON... whatever! (Capstone project) − 40%

Think about this exercise as a [capstone project](https://www.edglossary.org/capstone-project). You have already learnt how to create different screens and navigate from one to another using different techniques. You know how to add local and remote images, use custom fonts, add third-party libraries to your projects, use asynchronous code, create lists, design non-trivial UIs... You have actually learnt lots of things, so it's time to use all this knowledge to create a project from scratch to show us that you can actually code a nice and useful Flutter application. You decide how simple or complex your app will be, as long as you follow all these rules:

* You totally need to use the [http](https://pub.dev/packages/http) package to consume data from a real API on the internet.
* You may find free APIs on [public-apis repository on GitHub](https://github.com/public-apis/public-apis). Pick one that you find interesting. Some of them are quite complex, while some others are really easy to use.
* You totally need to use asynchronous code (as we did in last exercise in Activity 4) to consume data from the API.
* You can use any libraries you like, but please be sure their popularity and points are high.
* Ideally, your app should contain at least four screens. The nicer your UI, the higher your score will be. 
* Ideally, your app should do something useful. Keep in mind Apple rejects apps because of [Minimum Functionality](https://developer.apple.com/app-store/review/guidelines/#minimum-functionality). We will not be that strict here, but we do expect your app to do some serious work, given this is your Flutter capstone project.
* Ideally, users of your app should not need any instructions to understand what your app does and how it works. Users don't read instructions anyway, so... :)

Best of luck!!!

## 🎯 Exercise 4 − Pick some widget − 30%

If you have been following all messages in classroom board you already know what this last exercise is about. You have to choose a widget of your choice, investigate how it works and prepare an explanation and a Flutter project to share with all your classmates. If you have any questions regarding this exercise, please read message 21 on the board and contact your teacher by email as soon as possible.

# 🛠 How to submit your activity

1. Solve all exercises following instructions above ;)
1. Once you are done, you need to create a zip file with your solution and upload it to class's RAC/REC tool as you normally do. However, in order to upload as little data as possible, follow these instructions:
    * Create a new directory on your machine. Call it **Activity5Solution**. Create three subdirectories: **exercise1**, **exercise2** and **exercise3**.
    * For each project copy into its **exercise_X_** subdirectory only the **lib** directory and any other required directory/file (**assets**, **pubspec.yaml**, etc), but please **do not copy your entire Flutter project**. 
    * Add some screenshots (or even short videos/gifs!) of all your apps up and running (so we can see everything works on your machine, in case there is some problem in ours) into **Activity5Solution**.

1. Total size of your **Activity5Solution** directory should be under 10MB. Please double check you have followed previous instructions properly if it's much bigger than that.
1. Finally, compress your **Activity5Solution** directory and upload the zip file to class's RAC/REC tool.
