# GitUp Here

Small app to open GitUp from the Finder's toolbar.

Put the application somewhere suitable (e.g. `/Applications`), Command + drag it to the Finder's toolbar to place it in a conveniently accessible spot. 

Then, whenever you are browsing a folder which is a git repository, no matter how deep you are or if the currently selected item in the Finder is a folder or a file, clicking the icon in the Finder's toolbar will open GitUp in that repository. You can also drag and drop files or folders on the icon and it'll open their parent repository.

The app is a simple shell script wrapped in an `.app` bundle with the excellent [Platypus](http://www.sveinbjorn.org/platypus).
