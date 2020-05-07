# R = ${{ github.repository }}
# U = ${{ github.actor }}
# P = ${{ secrets.GITHUB_TOKEN }}

define croak
$(error "The $(1) variable is required")
endef

ifeq ($(R),)
$(call croak,R)
endif

ifeq ($(U),)
$(call croak,U)
endif

ifeq ($(P),)
$(call croak,P)
endif

.PHONY: all
all:
	docker build -t docker.pkg.github.com/$(R)/mssqld-docker:latest - < Dockerfile
	docker login https://docker.pkg.github.com -u $(U) --password $(P)
	docker push docker.pkg.github.com/$(R)/mssqld-docker:latest
