# Copyright Cameron Jay Tuckerman-Lee 2024. All rights reserved.

.PHONY: dev
dev:
	@python3 -m http.server 8000 --directory .

.PHONY: dev-public
dev-public: public
	@python3 -m http.server 8000 --directory public

.PHONY: public
public:
	@mkdir -p public
	@cp index.html public/index.html
	@cp coffee.pdf public/coffee.pdf
	@cp guide.pdf public/guide.pdf
	@mkdir -p public/coffee
	@cp coffee/index.html public/coffee/index.html
	@mkdir -p public/guide
	@cp guide/index.html public/guide/index.html
	@mkdir -p public/guidebook
	@cp guidebook/index.html public/guidebook/index.html

.PHONY: clean
clean:
	@rm -rf public
