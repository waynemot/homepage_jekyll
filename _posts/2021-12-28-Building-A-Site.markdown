---
page-title: Building a site
layout: post
title:  "Building a Site"
date:   2021-12-28 19:38:34 -0500
categories: jekyll web authoring faq
---

Building a Jekyll website on the School of Computing CSE server entails
starting with a Jekyll installation instance.
This example uses the Jekyll basic 'blog' template, heavily modified
using a custom HTML header and home pages that apply
[University of Nebraska Web Developers Network][wdn] styling. This
is included within layout elements to render as my personal home page.
You can download a copy of the source code from my Github repository:

[https://github.com/waynemot/homepage_jekyll][git-project]

and the index.html home page is hosted by the CSE server 
in my home public_html directory, **~wmotycka/public_html**.

One of the things that
Jekyll offers is support for code snippets:

{% highlight ruby %}
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
{% endhighlight %}

Many other markdown controls can be used, and leveraging the power of Ruby and jQuery + JavaScript,
a highly appealing and responsive web presence can be created.

Many Integrated Development Environments (IDEs) support Jekyll development 
as well. I have been using Jetbrain's
RubyMine, but equally capable Ruby IDEs like 
VisualStudio, NetBeans and Eclipse can be used.

Both CSE and CSCE servers offer many other resources, e.g. a MySQL database, that can be leveraged through
the use of Jekyll and Ruby.

Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll Talk][jekyll-talk].

[jekyll-docs]: https://jekyllrb.com/docs/home
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/
[home]: https://cse.unl.edu/~wmotycka
[git-project]: https://github.com/waynemot/homepage_jekyll
[wdn]:  https://wdn.unl.edu
