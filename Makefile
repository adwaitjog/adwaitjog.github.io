# The main site is built by GitHub Pages (Jekyll). Course pages under teach/
# are still authored in jemdoc; run `make teach` after editing a teach/*.jemdoc.
teach:
	cd teach && jemdoc *.jemdoc

# Local preview at http://localhost:4000 (uses the Jekyll installed in ~/.gem).
serve:
	JEKYLL_NO_BUNDLER_REQUIRE=true ~/.gem/ruby/2.6.0/bin/jekyll serve

.PHONY: teach serve
