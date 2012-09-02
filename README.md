# Brewstrap

OSX Homebrew + rbenv/RVM + Chef Solo

To make it easier to automate the setup of OSX on a development team or across multiple personal machines. This script attempts to install XCode if it is not already installed. Installs homebrew. Then using your github credentials attempts to kick off a chef-solo run of a repository of your choosing. 

You can see an example repository here: https://github.com/schubert/brewstrap-example

### Running

    curl -L http://git.io/PvkgGw > /tmp/$USER-brewstrap.sh && bash /tmp/$USER-brewstrap.sh

If a solo.rb file is not present in your repo brewstrap will write one out
expecting cookbooks only to be in the "cookbooks" folder. If you have additional
folders you wish to include (for example site-cookbooks if you are using
Librarian Chef) then check in your own solo.rb:

    base_dir = File.expand_path(File.dirname(__FILE__))
    file_cache_path File.join(base_dir, "tmp", "cache")
    cookbook_path File.join(base_dir, "cookbooks"), File.join(base_dir, "site-cookbooks")

If a Cheffile from Librarian Chef is present, brewstrap will install the
librarian-chef gem and then attempt to run "librarian-chef install" before
launching chef solo.

* Homebrew: https://github.com/mxcl/homebrew
* RVM: http://rvm.beginrescueend.com/
* Chef: http://wiki.opscode.com/display/chef/Resources
* Librarian Chef: https://github.com/applicationsonline/librarian

### History

I have multiple machines at home and I get a new laptop every 2 years. Going through and setting things up everytime is a hassle. I could do migrations but I like to use the upgrade as an excuse to clear out any cruft that I may no longer be using.

### Legal

Chef and chef-solo are © 2010 Opscode (http://www.opscode.com/)

### License

MIT

