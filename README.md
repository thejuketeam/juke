Hey

Here's how this project is oriented:

Podsfile: manages packages (therefore, open this .xcassets file, not the default project file)

Main project: consists of mainly uiviewcontrollers for now. LoginViewController is configed with facebook so you can login easily. Remember to add your app id and secret in the .plist file
SearchViewController: search for people. Implement the searchdelegate.
LeftMenuViewController: subclass of one of the pods I'm using. It allows you to have that scroll to the left/right ability. It'll allow you to swap in between screens
That's really it...
Wrote the majority of this in Swift. Fair warning.
