# adwaitjog.github.io

Personal website of Adwait Jog, built with Jekyll and served by GitHub Pages.
Pushing to `master` publishes the site; there is no local build step.

## Editing content

| What | Where |
| --- | --- |
| Name, title, contact links, nav menu | `_config.yml` |
| Home page text (About, Highlights) | `index.html` |
| Publications | `_data/publications.yml` (newest first) |
| Courses | `_data/teaching.yml` (newest first) |
| Styles | `assets/css/main.css` |
| Page frame (header, footer) | `_layouts/default.html` |
| PDFs, slides, CV | `docs/` |

To add a paper, copy an existing entry at the top of `_data/publications.yml`.
`type` controls the publications filter and is one of
`conference | journal | workshop | book | patent | thesis | report`.
Relative URLs (for example `docs/pdf/foo.pdf`) are resolved from the site root.

Course pages in `teach/` are generated with [jemdoc](https://jemdoc.jaboc.net/):
edit the `.jemdoc` file and run `make teach`.

## Local preview (optional)

```sh
make serve   # then open http://localhost:4000; Ctrl-C to stop
```

This runs Jekyll 3.10, the version GitHub Pages uses. Edits are picked up on
save; refresh the browser to see them (changes to `_config.yml` need a restart).
