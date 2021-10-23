################################################################################
#
# sdl_ttf
#
################################################################################

SDL_TTF_VERSION = 7dbd7cd826d6
SDL_TTF_SOURCE = $(SDL_TTF_VERSION).tar.gz
SDL_TTF_SITE = https://hg.libsdl.org/SDL_ttf/archive
SDL_TTF_LICENSE = Zlib
SDL_TTF_LICENSE_FILES = COPYING

SDL_TTF_INSTALL_STAGING = YES
SDL_TTF_DEPENDENCIES = sdl freetype
SDL_TTF_CONF_OPTS = \
	--without-x \
	--with-freetype-prefix=$(STAGING_DIR)/usr \
	--with-sdl-prefix=$(STAGING_DIR)/usr

SDL_TTF_MAKE_OPTS = INCLUDES="-I$(STAGING_DIR)/usr/include/SDL"  LDFLAGS="-L$(STAGING_DIR)/usr/lib"
$(eval $(autotools-package))
