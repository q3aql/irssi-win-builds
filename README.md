Irssi builds for Windows
========================

### Irssi 0.8.17 builds (without perl):

  * **Windows downloads:**
    * [irssi-0.8.17-win-32bit-build1.7z](https://github.com/clamsawd/irssi-win/releases/download/v0.8.17/irssi-0.8.17-win-32bit-build1.7z)
    * [irssi-0.8.17-win-64bit-build1.7z](https://github.com/clamsawd/irssi-win/releases/download/v0.8.17/irssi-0.8.17-win-64bit-build1.7z)
  
  * **Source code:**
    * [irssi-0.8.17.tar.bz2](https://github.com/clamsawd/irssi-win/releases/download/v0.8.17/irssi-0.8.17.tar.bz2)
    * [irssi-0.8.17.tar.gz](https://github.com/clamsawd/irssi-win/releases/download/v0.8.17/irssi-0.8.17.tar.gz)

### How to use:

* **Instructions:**

    * Unzip the package with [7-zip](http://www.7-zip.org/) or [Winrar](http://www.rarlab.com/).
    * Copy the folder `irssi` to system. For example: `C:\Program Files\irssi`.
    * (_**Optional**_) Add the folder to [PATH](https://www.google.es/search?q=add+folder+to+PATH+on+Windows) variable.
    * Open the folder `irssi`.
    * Run the script `irssi.cmd` or `irssi-with-term.vbs`.

### How to build irssi on Cygwin

  * Install [Cygwin](http://cygwin.com/) and add the following packages to the default configuration:

    * `Devel/gcc-core`
    * `Devel/gcc-g++`
    * `Devel/gettext`
    * `Devel/gettext-devel (missing libintl.a)`
    * `Devel/libncurses-devel (terminfo support)`
    * `Devel/make`
    * `Devel/pkgconfig (detects glib2)`
    * `Interpreters/perl`
    * `Libs/glib2`
    * `Libs/glib2-devel`
    * `Libs/openssl`
    * `Libs/openssl-devel`

  * Download [irssi-0.8.17.tar.bz2](https://github.com/clamsawd/irssi-win/releases/download/v0.8.17/irssi-0.8.17.tar.bz2) and save it to `C:\Cygwin\home\<User>\`.
  * Open a Cygwin terminal, and run the following commands:

    * `$ tar jzvf irssi-0.8.17.tar.bz2`
    * `$ cd irssi-0.8.17`
    * `$ ./configure --with-proxy --with-perl=no --prefix=/usr`
    * `$ make`
    * `$ make install`
    * `$ irssi`

### External links:

  * [Irssi homepage](http://irssi.org/)
  * [Irssi source code (Github)](https://github.com/irssi/irssi)
  * [Cygwin homepage](https://www.cygwin.com/)
