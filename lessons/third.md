# Third Module

## Using Container

* `Container` is similar to `div` tag in html
* `EdgeInsets` is used by **Box Model** i.e **Margin** and **Padding**
    + Has 2 functions : `all()` and `only()`
    + `all()` : adjusts measurement in all directions
    + `only()` : adjusts measurement in the specified direction.
  
        ```dart
        EdgeInset.only(left: 11.0, top: 15.0)
        ```
        
* Reference : [Container Class](https://api.flutter.dev/flutter/widgets/Container-class.html 'A convenience widget that combines common painting, positioning, and sizing widgets.' )

## Adding Style to Text

* Use `style` inside `Text()`  to customize the text styling
* Add font in *pubspec.yaml*

## Rows and Columns

* A list of children aligned vertically or horizontally
* `Column` and `Row` are widgets which we can assign a list of rows to columns or a list of columns to rows

## Adding Images from Assets

* We can add images by first adding them in assets in *pubspec.yaml*
    ```dart
    class BackgroundImage extends StatelessWidget {

      @override
      Widget build(BuildContext context) {
        AssetImage backgroundAsset =
            AssetImage('images/wallpapersden.com_anonymous-mask_1920x1080.jpg');
        Image image = Image(image: backgroundAsset);
        return Container(
          child: image,
        );
      }
    }
    ```

## Raised Button

<!-- Need Indepth explanation -->