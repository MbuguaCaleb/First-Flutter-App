**What is Flutter**

```
(a)It is a google UI Toolkit for building natively compiled apps for mobile,web and desktop.

(b)With it you can build IOS and Android apps using a single codebase.

(rather than tradiitonal router whether you have a java or kotlin codebase for your android app and a separate codebase for your ios app with swift.)

(c)Cross Platform-Mac/windows/linux

(d)It is extremely  fast.

{IT IS Faster than web based technologies  eg reactNative,Nativescript and
Ionic }

It is faster because it does not have that extra javascript bridge to the OEM user
Interface.

Flutter uses the native archutecture arm binary which makes flutter faster than all
of its competitors.


```

**The Dart Programming Language**

```

(a)Flutter uses an OOP language called dart.

(b)Dart brings in an optimized UI

(c)Fast on all platforms

(d)Similar to javascript with elements of java.


```

**Widgets**

```
Everything is a widget

Uses Material design

Scaffold,AppBar,Container,Image,Icon etc

Can be stateless or stateful.

Build method.

Flutter widgets are like components in react .

Every widget has got a build method which is similar to render in react.


```

**Overrriing**

```
In any object-oriented programming language, Overriding is a feature that allows a subclass or child class to provide a specific implementation of a method that is already provided by one of its super-classes or parent classes.

```

**Stateless Widgets**

```
Immutable state that can NOT be changed during runtime.

```

**Stateful Widgets**

```
Mutable state that can  be redrawn on the screen mutiple times.

```

**Commands**

```
(a)flutter create .

(b)Build method is very crucial in dart because it is where everything is rendered.


```

**MaterialAppClass**

```
A convenience widget that wraps a number of widgets that are commonly required for material design applications.

It employs the scaffold widget.

From the scaffold you may now mount various types of widgets.


```

**Scaffold**

```
It is a high level widget where you can have mutiple lower level widgets inside.
Text widget example:

Widget build(BuildContext context) {
    return MaterialApp(
        home: Text('Hello World',
            style: TextStyle(fontSize: 30.5,
            color: Colors.green[400])));
  }

You cannot assign texts directly..You should assingn texts from within the widget.


Its important to note the properties that fall into the scaffold and those that
do not.(example theme does not fall into the scaffold .)


```

**Widget Tree**

```
Flutter is basically a widget tree and that is how components are added
into your user interface.



```
