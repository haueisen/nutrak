# nutrak
Nutrition Scanning App

### Setup instructions

1. Clone github repo
2. Open `nutrak.xcodeproj` inside `nutrak` folder
3. Xcode will load the project and may ask to update signing configuration
4. Run on device or simulator

### Libraries used and why
- Charts: Swift built-in library for drawing the charts in scanning results screen

### Considerations

- No custom fonts were included in the app, the design shows Roboto font family while the Typography is using Inter font family
- Implemented light and dark modes
- Colors in the style guide are showing the wrong HEX. E.g Text medium emp is #565656 but the label says #686B6B. The real value and not the label was used for the app colors.
- Scanner is a class mocking the behavior of a business logic class which have no coupling with views.
- I opted to make the buttons on the nutrition results screen stick to the bottom of the screen instead of scroll with the results content.
- I slighty modified the layout of results screen since it is to add a chart to the results
- Due to time constrains, scanning screen was left placeholder and streak screen is incomplete.
- No AI generated code was used in this assignment. The only use of AI was to speed up documentation search.


## Task Approach

I first mapped the navigation path of the required pages and created placeholders to work on the navigation first.
I opted to do the scanning flow first but use a placeholder for the scanning screen so I won't spend time getting the camera video feed and permissions working.
It was the first time I worked with charts, so I used simple customizations to make them follow the app's colors.
I spent time making sure that everything was done with polish. I would rather have fewer features completed in the assignment but have them be very well done.