#
# RubyRSS
# Copyright (c) 2006 Sergey Tikhonov <st@dairon.net>
# Distributed under MIT License
#

$html_templates = { "default" => '
<h3><a href="#link">#title</a></h3>
<ul>

#items-start:5
<li><a href="#item-link">#item-title</a> (#item-date)<br/>
    #item-desc:100</li>
#items-end

</ul>
'
}

$rss_templates = { "rss2.0" => '
<?xml version="1.0" encoding="UTF-8"?>
<opml version="1.0">
    <head>
        <title>#item-title</title>
    </head>
    <body>
        <outline title="#item-title" text="#item-title">
#items-start
          <outline text="#item-title" title="#item-title" type="rss" xmlUrl="#item-link" htmlUrl="#item-desc"/>
#items-end
        </outline>
      </outline>
    </body>
</opml>
'
}
