# TODO
## Models
- [] Move to model so posts can magically work with posts/{id}
- [] Separate finished content (post-render) from raw-text markdown (pre-render) in models/db

# Rails / Data Layout
## Routing
Landing page: `/blog`
Individual posts: `/blog/{title}` or `/blog/{id}`
About: `/about`

## Models
`blog`:
- title
- date
- tags: unbounded list/hash of single-word (all lower, letters, dashes, e.g. `tag` or `this-is-a-tag`)
- visible: boolean, whether or not the article is surfaced in the UI / published to RSS feed. Still available at route.
- content: markdown content
- content_parsed: html content


# Goals
`bjs-io` is designed to be a personal software-dude website, offering a brief insight into me, a landing spot for my blog posts, and a display of my "portfolio".

## Overall Design
- Content is king; writing new content should be a breeze, and it should always be the main show
- Should be centered, with some minor margin
- Should be readable on mobile
- Should be minimalistic, but not quite Dan Luu

## Insight
Brief description of myself, my professional values, and my goals.

## Blog Posts
Posting should be _easy_ - I want as little friction as possible into writing and pushing a post. It should be as simple as `g add . && g commit -m "new-blog-post" && g push`.
- New posts should automatically appear as the "most recent" or "top" post - this implies **a landing page** with an **ordered list**
- New posts should automatically be given a URL - this implies a **RESTful routing based on convention**; perfect for rails

Posts should easily include text, code blocks, links (out and intra (allowing for easy multi-part blogs)), and gifs.
Posts need to be easily editable.
- Posts should be **whole `.md` files**
	- Ideally, gifs and links should be supported from markdown itself, and not cross-stitched in the view - only one edit required

- [Joel on Software](https://www.joelonsoftware.com/2000/11/08/painless-bug-tracking/) has a date, author, title, and _group_ (rather than tag). His posts are more like `blog/developer/1` `blog/pm/1` than `blog/1`.
Joel always has his menu-bar available on the left of the site; I'm not a fan of this distraction.
He does link to his RSS feed at the bottom, which I like. 
Finally, the end of the post has a "previous" and "next" button; I think I'd rather have "related" or "go back".

- [Troy Hunt](https://www.troyhunt.com/weekly-update-193/) has shit everywhere. His header bar scrolls with and always overlays, while his hero page leads the blog. We get the title, then a bunch of social media links :vomit:. Content, then he ends with references, _more_ social media, then a description of himself as a footer. Followed by "also on troy's blog" with an _awful_ preview, and then comments.
I like the footer; but I would like more of a text-only, Dan Luu style footer. Barebones, maybe a little cute, who knows.

I'm surprised by a few things; this website is TACKY and I never noticed until now. Comment sections are _also_ tacky; maybe they wouldn't be so bad if they were just plaintext. All in all; I don't want my posts to look anything like this.

- [Dan Luu](https://danluu.com/metrics-analytics/) is the fucking man. We get a header, a linebreak, then pure, raw, unadulterated CONTENT. I want my posts to look like this, but in Github-style markdown. He finishes with an Appendix/Footnotes, but also has a similar layout to joels left and right arrows, but with titles in place of dates; I think this is nice. I would do this. I take back my thoughts from Joel's. 
I like that Dan has a small amount of links at the bottom of his posts as well - maybe this is worth considering for myself.

### Design
- Should have _only_ header/intro, content, footer; no sidebar, no overlay.
- Header should contain date and title
- Footer should contain RSS feed, link to "about", link to previous/next articles with title

## Landing Page
- Should include a "preview" of recent/top posts
	- [Joel on Software](https://www.joelonsoftware.com/) uses a no-scroll landing page, with "What's new?" and "Reading lists" sections
	- [Troy Hunt](https://www.troyhunt.com/) uses a paginated scroll with inline trimmed-content 
	- [Dan Luu](https://danluu.com/) uses an entire-selection, date + links to post titles inline

Joel's "What's New?" section works well for a prolific writer, which I probably am not. He also has the ability to either set preview snippets, or use inline trimmed-content.
Troy's paginated scroll allows for complete explorability; but who the hell is really going to do that? I prefer tags + filtering - ideally with a feel like `fzf`. 
Dan's blog is beautiful. It's simply, it's informative, it's quickly explorable.

I think my ideal would be a slightly prettier, filterable version of Dan's blog. I like roughly tweet-length previews, and I do like the ability to set preview snippets; it'll force me to think critically about what I'm really writing about.

Dan's is probably the easiest to attempt to emulate from the start. It's also similar to PG's. That's a reasonable MVP. The goal is to write.

### Design
- No scrolling or pagination (maybe one day?)
- Automatically linked and dated blog posts
- A little nicer than Dan's view; but not much

## Extra Features
- Tags supporting a search + filter system
- Configurable, tweet-length previews automatically read from `.md` file
- Dark mode; I mean, c'mon, I'm me.
- EMOJIS ARE ESSENTIAL
- Setup RSS feed
