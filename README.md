# blogdown-shortcodes

- 📝 I still need to improve the example.Rmd files and tidy up the .R files. So these shortcodes work, but do require a bit of manual tinkering to work outside of my own websites. I'll fix this for a 1.0 release! Currently the ID attribute doesn't actually link, but they're helpful since the shortcode pulls from the row number, so I've manually written my IDs to correspond to that.

A (growing) collection of [Blogdown](https://github.com/rstudio/blogdown) shortcodes I've written myself in R.

If you are completely unfamiliar with Blogdown, R and/or RStudio, then you may struggle to use this. I would advise you to have a go at setting up a very basic Blogdown website and playing around with that first. If you're then interested in some of these shortcodes, come back here and you'll be able to understand this much better.

**Make sure you have library(tidyverse) installed before trying to use these shortcodes. Otherwise you can't read the CSV file. Whilst I'm sure readr works as well, for dev purposes I'm going with the full package in case I want to add functionality later.**

Published using the MIT license, so you can do with this whatever you want. I do appreciate acknowledgements, so feel free to do so! Starring the repo greatly helps, if you're in the mood. 💫

<!-- In Dutch, you can see these shortcodes in action on [my education website](https://www.lerenleukermaken.nl/). -->

A brief explanation with instructions on each shortcode is given below.

## Pinterest

This shortcode makes it easy to add a "Pin It" button underneath an image you put on your Blogdown site. It requires that you call the pinterest.R shortcode from your Rmd file. You maintain all your data (image used, alt-text used) in a separate CSV file and call your Pin by ID. The Example.Rmd shows you how to do this.

It requires you to put the Pinterest .js stuff from their Developer site in your header-html. Depending on the theme you're using, you have to figure that part out yourself. I use [PaperMod](https://github.com/adityatelange/hugo-PaperMod) myself so it goes into **extend_head.html** and includes the following:

```
<script
    type="text/javascript"
    async defer
    src="//assets.pinterest.com/js/pinit.js">
</script>
```

Install steps:

1. Put the pinterest.R file somewhere your Rmd can get to it (your /static/ folder would be best)
2. Put your main site URL in pinterest.R on line 16 where it says "https://www.your-site-url-here.com" without a trailing slash. This to help Pinterest grab the correct image (it seems to struggle otherwise).
3. Use and modify the R code listed in Example.Rmd to call the pinterest.R file from your blog post / page
4. Make sure your CSV file contains a correct image link + alt-text description for the image you want to pin
5. Copy & modify the pinterest.css file to your liking. It helps to centrally manage your pin image sizes. You may not want this, so feel free to remove/adjust.

## Downloads

A very basic downloads manager. It doesn't depend on a database to function, but on a CSV file. Examples included. By linking your PDF/ZIP/DOCX downloads into the CSV file, you are able to easily call up a nice-looking download-box anywhere on any page linking to your resource. It includes the option to have a screenshot (max height/width set to 150px) for your file too.

It's still a bit brute-force at the moment, but you can also easily group downloads together and offer all your documents in one centralised overview. Once I've figured out how to loop through a function more effectively, I'll update the code! 😎

Install steps:

1. Put the downloads.R file somewhere your Rmd can get to it (your /static/ folder would be best)
2. Use and modify the R code listed in Example.Rmd to call the pinterest.R file from your blog post / page
2. Put the lists.css file somewhere your theme tells you to
3. Make sure your CSV file contains correct IDs, links, descriptions & images for all your downloads

You can then call the download in your Rmd file as follows, where **xx** equals the ID for your download:

```
`r download(xx)`
```