# Jetpack Compose

Last Google I/O the Android Team officialy announced a new component called ANDROID JETPACK COMPOSE

I create a script so you can do some experiment and trying the power of jetpack compose.

## How to run
After clone this project, run this command:

```
./jetpack-compose.sh
```

if the script don't have permission as executable, run this command:

```
chmod +x jetpack-compose
```

It will take a while to download AOSP and setup to your local machine. So take your coffee! :coffee:
## Jetpack Compose
Jetpack Compose aims to be a declarative framework to build Android user interfaces easily using a Kotlin like this:

```kt
@Composable
fun foo(text: String){
  Text("greetings $text")
}
```

Once you watch the talk, you notice the Jetpack Compose team has been thinking a lot about the current Android API. They remark how the usage of extensions for some components, and bad decisions they made in the past, doesn't let the Android API properly evolve

## Generate View
how can you reuse a composable view onto your xml layout? You can generate it with @GenerateView annotation. Let's took for example:

```kt
@Composable
@GenerateView
fun greeting(text: String){
  Text("greetings $text")
}
```

```xml
<GreetingView
     android:id="@+id/gretting_view"
     app:text="@string/hello_world"/>
```

```kt
val greetingView: GreetingView = findViewById(R.id.gretting_view)
greetingView.setText("Hi, it is cool things!")
```

## What about performance issue?
Android team describe the possible implementation of a ScrollingList but if you review the repository there is no such component implemented for now. They describe a promising component like this:

```kt
@Composable
fun feeds(feeds: LiveData<List<NewsApi>>){
  ScorllingList(feeds.observe()){ feed ->
    FeedsWidget(feed)
  }
}
```

# **SPOILER ALERT**
The Android team is doing it great. Believe me when I say that this Compose API is way better than the current state of the art of Android development


Credit : [Pedro Gómez Blog](https://blog.karumi.com/android-jetpack-compose-review/)

### References
- https://developer.android.com/jetpack/compose/
- https://www.rivu.dev/writing-android-ui-code-in-jetpack-compose/
