## v1.1.0:

* [COOK-543] - php.ini template should be configurable
* [COOK-1067] - support for PECL zend extensions
* [COOK-1193] - update package names for EPEL 6
* [COOK-1348] - rescue Mixlib::ShellOut::ShellCommandFailed (chef 0.10.10)
* [COOK-1465] - fix pear extension template

## v1.0.2:

* [COOK-993] Add mhash-devel to centos php source libs
* [COOK-989] - bump version of php to 5.3.10
* Also download the .tar.gz instead of .tar.bz2 as bzip2 may not be in
  the base OS (e.g., CentOS 6 minimal)
