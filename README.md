# YouTube-subscriptions-to-Newsboat
Makes opml file downloaded from YouTube to Newsboat rss-reader format.

I just wanted to try if this is possible. Feel free to use and modify it.

I got the idea for doing this script from Bryan Jenks video in YouTube https://www.youtube.com/watch?v=XbdW9YZpKwk. Where he is using vim and macros to modify the opml file.

# Installation
No special installation stuff. Just copy the script and give it execution rights.

# Usage
Download the opml file from YouTube. Follow the link: https://www.youtube.com/subscription_manager and scroll down to see the download button. Default filename is set to subscription_manager.

Run the script and give the opml file as a argument.
```bash
yt-subs-list.sh subscription_manager
```
And then the script spits out a file called _list_ in the folder where you are working.

# Issues
There is one known issue that I posted. Can anyone help me for solving that.
