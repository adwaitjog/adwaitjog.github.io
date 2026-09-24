# The main site is built by GitHub Pages (Jekyll). Course pages under teach/
# are still authored in jemdoc; run `make teach` after editing a teach/*.jemdoc.
# teach/mysite.conf adds the mobile viewport tag to every generated page.
teach:
	cd teach && jemdoc -c mysite.conf *.jemdoc

# Local preview at http://localhost:4000 (uses the Jekyll installed in ~/.gem).
serve:
	JEKYLL_NO_BUNDLER_REQUIRE=true ~/.gem/ruby/2.6.0/bin/jekyll serve

.PHONY: teach serve
