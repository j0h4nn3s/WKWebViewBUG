# WKWebViewBUG
This is a test project to show the bug I am experiencing with WKWebViews in a ScrollView.

To see the bug in action, do following steps:
1. Run the project in a simulator or preferably your personal device
2. Wait for the Websites to load
3. Scroll slowly through the scrollview 
4. You should see the Website "flash" when it leaves the scrollView to the left
5. You can also see changes in the Webpage "twitter.com": The menu button vanishes when scrolled to the left and the image slider in the last website vanished when out of bounds
