Irssi builds for Windows (on Cygwin without perl). 
==================================================

### Irssi 1.1.1 builds:

  * **Windows downloads:**
    * [irssi-1.1.1-win-32bit-build1.7z](https://github.com/q3aql/irssi-win-builds/releases/download/v1.1.1/irssi-1.1.1-win-32bit-build1.7z)
    * [irssi-1.1.1-win-64bit-build1.7z](https://github.com/q3aql/irssi-win-builds/releases/download/v1.1.1/irssi-1.1.1-win-64bit-build1.7z)

  * **Source code:**
    * [irssi-1.1.1.tar.xz](https://github.com/q3aql/irssi-win-builds/releases/download/v1.1.1/irssi-1.1.1.tar.xz)
    * [irssi-1.1.1.tar.gz](https://github.com/q3aql/irssi-win-builds/releases/download/v1.1.1/irssi-1.1.1.tar.gz)

### How to use:

* **Instructions:**

    * Unzip the package with [7-zip](http://www.7-zip.org/) or [Winrar](http://www.rarlab.com/).
    * Copy the folder `irssi` to system. For example: `C:\Program Files\irssi`.
    * Open the folder `irssi`.
    * Run the script `irssi.cmd`.

### How to build irssi on Cygwin

  * Install [Cygwin](http://cygwin.com/) and add the following packages to the default configuration:

    ```shell
    * Devel/gcc-core
    * Devel/gcc-g++
    * Devel/gettext
    * Devel/gettext-devel (missing libintl.a)
    * Devel/libncurses-devel (terminfo support)
    * Devel/make
    * Devel/pkgconfig (detects glib2)
    * Interpreters/perl
    * Libs/glib2
    * Libs/glib2-devel
    * Libs/openssl
    * Libs/openssl-devel
    ````

  * Download [irssi-1.1.1.tar.gz](https://github.com/q3aql/irssi-win-builds/releases/download/v1.1.1/irssi-1.1.1.tar.gz) and save it to `C:\Cygwin\home\<User>\`.
  * Open a Cygwin terminal, and run the following commands:
  
    ```shell
    $ tar zxvf irssi-1.1.1.tar.gz
    $ cd irssi-1.1.1
    $ ./configure --with-proxy --with-bot --with-perl=no --prefix=/usr --enable-true-color
    $ make
    $ make install
    $ irssi
    ````

### External links:

  * [Irssi homepage](http://irssi.org/)
  * [Irssi source code (Github)](https://github.com/irssi/irssi)
  * [Cygwin homepage](https://www.cygwin.com/)
