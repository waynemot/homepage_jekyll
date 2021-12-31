---
page-title: Building a site
layout: post
title:  "Building a Site"
date:   2021-12-28 19:38:34 -0500
categories: jekyll web authoring faq
---

Building a Jekyll website on the School of Computing CSE server entails
starting with a [Jekyll installation instance][jekyll-start].
This example uses the Jekyll basic 'blog' template, heavily modified
using a custom HTML header and home pages that apply
[University of Nebraska Web Developers Network][wdn] styling. This
is included within layout elements to render as my personal home page.
You can download a copy of the source code from my Github repository:

[https://github.com/waynemot/homepage_jekyll][git-project]

The Jekyll generated CSS, JavaScript and
index.html home page is hosted by the CSE server 
in my home public_html directory, **~wmotycka/public_html**.

### Jekyll Content and Presentation
Jekyll is an example of a 'low-code' framework that requires
Ruby and Jekyll packages installed
on the server-side to build content into the presentation HTML+CSS+JavaScript presented
to site visitors.
The content consists of files in [markdown][markdown], (.md) format with Jekyll-specific headers,
layout and includes files in [Liquid][liquid] and HTML syntax, and assets in
various formats, e.g. css/scss, images (png, jpg, svg, etc.), and javascript (js).
The layout and includes in Liquid/HTML provide the 'secret-sauce' to 
markdown allowing quick text markup, such as **bold** to be done, with
*italic* being equally simple, all within a style and layout you define.

The ease of 'content capture' is a feature of low-code development and
focuses effort on content not presentation.  Once a theme/style is established,
content is added via by new markdown documents.  This content can be mundane
text with embedded images or links, or leverage the features of markdown.
For example, Jekyll markdown offers support for code snippets:

{% highlight ruby %}
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Wayne')
#=> prints 'Hi, Wayne' to STDOUT.
{% endhighlight %}

This is very useful for rapidly making computer science and other technical representations.

Many other markdown controls can be used.

### Theme Presentation Styling
By manipulating the layout and includes files, and leveraging the power of 
Liquid, Ruby, CSS, jQuery + JavaScript,
a highly appealing and responsive web presence can be created. The specifics
on how are detailed in the Jekyll docs (links below.)

### Authoring Content
Many Integrated Development Environments (IDEs) support Jekyll development.
I have been using JetBrain's
RubyMine, but equally capable IDEs like
VisualStudio, NetBeans and Eclipse can be used that support HTML,
Javascript, and Ruby and/or Liquid support (with plugins as required).  You can
do development on CSCE, or your own system and then upload the project to deploy it on the CSE server.
I use Github to perform this upload step, which requires using [git][git] project management
to push up from my system and pull the changes down to CSCE. You can also use `sftp`, remote
filesystem mounting or similar network file copy mechanisms.

### Building Jekyll Projects
Jekyll uses a specific project directory layout, file naming convention, and configuration files
to inform the Jekyll builder on how to create the site.
In this example the Jekyll project directory is placed under my `~/public_html`
directory. Your build/install script can be adapted to accommodate wherever
you choose to place the project source.

Jekyll requires a build step, which composes the markdown, static HTML,
images, CSS and JavaScript into a site bundle (directory). This
build step requires using the capabilities provided by
the School of Computing's alternate server, **CSCE**. The **CSCE** server (csce.unl.edu)
is configured to support a wider array of technologies, including support
for Jekyll and Ruby. These capabilities are used to build your Jekyll
project code into the HTML, CSS, image and JavaScript assets used to
present it. Your current CSE login and password are used to log-in to
**CSCE**, and after login your home directory and subdirectories are the same
as used by CSE. This means file and directory changes made on **CSCE** are immediately 
effective on CSE due to the home directory being shared by the two servers.

Owing to the shared home directory nature of the CSE and CSCE servers,
editing content in your Jekyll project can be done on either CSE or CSCE,
or within your IDE and uploaded to your site-build (source) directory on CSCE.
Once the site is built on CSCE using the Jekyll build procedure, deployment
is as simple as copying the contents of the `_site` subdirectory under your
project into `~/public_html`. 

The entire process of building,
updating and deploying your home page content into your public_html
directory can also be automated using a shell script,
making updating your site as easy as uploading the new content and
running the script! 

{% highlight bash %}
#!/bin/bash

PATH=$PATH:${HOME}/bin

if [[ `uname -n` -eq "csce" ]]
then
  if [[ _site/index.html -nt ../index.html ]] # Determine if the site
  then
    jekyll build && cp -r _site/* ${HOME}/public_html/.
  fi
else
  echo "this script only executes on the CSCE system"
  exit 1
fi
{% endhighlight %}


Shell scripts can also be made to run under [crontab][crontab]
that compare the build directory `_site` file last-modified-date to the
current `public_html` files, building and copying them only if a change is made.

You may also want to host your site under a subdirectory of `~/public_html`, if so the
[.htaccess][htaccess] commands can be used that redirect/rewrite CSE-directed traffic 
to the directory containing your site pages/content.

### Jekyll Documentation

Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. 
File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, 
you can ask them on [Jekyll Talk][jekyll-talk]. Questions regarding the CSE systems should
be directed to the School of Computing systems administration group, <support@cse.unl.edu>.

[jekyll-docs]: https://jekyllrb.com/docs/home
[jekyll-start]: https://jekyllrb.com/docs/step-by-step/01-setup/
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/
[home]: https://cse.unl.edu/~wmotycka
[git-project]: https://github.com/waynemot/homepage_jekyll
[wdn]:  https://wdn.unl.edu
[htaccess]: https://www.redhat.com/sysadmin/beginners-guide-redirects-htaccess
[crontab]: https://www.man7.org/linux/man-pages/man1/crontab.1.html
[liquid]: https://shopify.github.io/liquid
[markdown]: https://www.markdownguide.org
[git]: https:/git-scm.com
