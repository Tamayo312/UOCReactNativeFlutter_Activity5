# Semantics class

The official Flutter documentation defines this class as:
>" A widget that annotates the widget tree with a description of the meaning of the widgets. Used by accessibility tools, search engines, and other semantic analysis software to determine the meaning of the application."

This explanation really sums up the functionality of the Semantics class but doesn't explain the importance this widget has in the process of developing an app and targeting a large and diverse userbase.

When we are involved in the process of designing our apps we often make the mistake of thinking about our potential users as people with our same set of characteristics. This situation can lead to our app missing a big source of users that may not find the functionality we provide enough for their own set of characteristics.

At this point Semantics makes its appearence, by using it to design our UIs we will have a very deep set of features that will keep our apps prepared to be used by people who may find difficulties using a device with a small screen.

This doesn't mean that without this class our app won't have accessibility features, many of Flutter's widgets have them implemented by default. So, why use Semantics then? Well, we should use the Semantics class when this default functionality is not enough.

Now that we understand the importance and use-cases of the Semantics class, let's get to work in some examples of its usage.



