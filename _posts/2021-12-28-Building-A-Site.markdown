---
page-title: Building a site
layout: post
title:  "Building a Site"
date:   2021-12-28 19:38:34 -0500
categories: jekyll web authoring faq
---

Building a Jekyll website on the School of Computing CSE server entails
starting with a Jekyll installation instance.
This example uses the Jekyll basic 'blog' template, with modifications
to the particular layout elements to render as my personal home page.
You can download a copy of the source code from my Github repository:

[https://github.com/waynemot/homepage_jekyll][git-project]

This home page is hosted by the CSE server in my 'public_html' directory.


Jekyll also offers powerful support for code snippets:

{% highlight ruby %}
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
{% endhighlight %}

Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll Talk][jekyll-talk].

[jekyll-docs]: https://jekyllrb.com/docs/home
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/
[home]: https://cse.unl.edu/~wmotycka
[git-project] https://github.com/waynemot/homepage_jekyll
