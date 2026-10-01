# adwaitjog.github.io

Personal website of Adwait Jog, built with Jekyll and served by GitHub Pages.
Pushing to `master` publishes the site (GitHub builds it; there is no build step to run).

## Where things live

| What | Where |
| --- | --- |
| Name, title, contact links, top menu | `_config.yml` |
| Home page (About, Highlights) | `index.html` |
| Publications (with BibTeX for the Cite button) | `_data/publications.yml` |
| News (home page shows the latest 5) | `_data/news.yml` |
| Research group: research areas, people, alumni, collaborators | `_data/group.yml` |
| Courses | `_data/teaching.yml` |
| Page frame (header, footer, theme toggle, Cite script) | `_layouts/default.html` |
| Reusable snippets (publication entry, news list, icons) | `_includes/` |
| Styles (light and dark themes) | `assets/css/main.css` |
| PDFs, slides, CV | `docs/` |
| Course pages (jemdoc) | `teach/` |

All lists are kept newest first.

### Adding a paper

Copy an entry at the top of `_data/publications.yml`. Main fields:

- `type` sets the Publications filter: `conference`, `workshop`, `thesis`, or one of
  `journal | book | patent | report` (shown under **Other**).
- `url` is the title link (prefer the DOI); `links` are the buttons (DOI, PDF, Slides, Artifact, …).
- `bibtex: |` holds the BibTeX entry shown by the **Cite** button.

Relative paths such as `docs/pdf/foo.pdf` resolve from the site root.

### Adding news

Add an item at the top of `_data/news.yml` with a `date` such as `"March 2027"`
(month names or three-letter abbreviations) and `text`, which may contain links.

### Generated automatically

- `sitemap.xml`, `robots.txt` and the news feed `feed.xml`
- The footer's "Last updated" date (the date of the latest push)
- Icons: `favicon.svg`, `favicon.ico`, `apple-touch-icon.png`, `site.webmanifest`;
  the link-preview image is `assets/img/og-banner.png`

## Course pages

Pages in `teach/` are generated with [jemdoc](https://jemdoc.jaboc.net/). Edit the
`.jemdoc` file and run `make teach`; `teach/mysite.conf` adds the mobile viewport tag.

## Local preview (optional)

```sh
make serve   # then open http://localhost:4000; Ctrl-C to stop
```

This runs Jekyll 3.10, the version GitHub Pages uses. Edits are picked up on save;
refresh the browser to see them (changes to `_config.yml` need a restart).
