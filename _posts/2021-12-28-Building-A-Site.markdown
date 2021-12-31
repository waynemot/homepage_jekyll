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

and the index.html home page is hosted by the CSE server 
in my home public_html directory, **~wmotycka/public_html**.

Jekyll is an example of a 'low-code' framework that requires
limited commands on the server-side to publish content. The
content consists of files in markdown, (.md) with specific headers.
Markdown allows quick text markup, such as **bold** to be done, with
*italic* being equally simple. 

Using Jekyll for computer science topics, one of the more useful things that
Jekyll offers is support for code snippets:

{% highlight ruby %}
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
{% endhighlight %}

Many other markdown controls can be used, and leveraging the power of Ruby, CSS, jQuery + JavaScript,
a highly appealing and responsive web presence can be created.

###Building Jekyll Projects
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
project into `~/public_html`. The entire process of building,
updating and deploying your home page content into your public_html
directory can also be automated using a shell script,
making updating your site as easy as uploading the new content and
running the script! Shell scripts can also be made to run under [crontab][crontab]
that compare the build directory `_site` file last-modified-date to the
current `public_html` files, building and copying them only if a change is made.

Many Integrated Development Environments (IDEs) support Jekyll development 
as well. I have been using Jetbrain's
RubyMine, but equally capable IDEs like 
VisualStudio, NetBeans and Eclipse can be used that support HTML, 
Javascript, and Ruby and/or Liquid support plugins as required.

School of computing home pages are hosted on CSE.  A second server, CSCE is also available. While
the same home page files are served by either CSE or CSCE, each server offer a different 
set of capabilities that your web pages may want to leverage. Simple
[.htaccess][htaccess] commands can be used that redirect CSE-directed traffic to the CSCE 
version of your page content.  CSCE offers a wider range of server capabilities, at the
expense of added configuration complexity.
Both CSE and CSCE servers offer many common server resources, e.g. a MySQL database, 
that can be leveraged through the use of Jekyll and Ruby.

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
