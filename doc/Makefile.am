
include $(top_srcdir)/wnck/src/filelist.am

book_name = $(PACKAGE_TARNAME)
doc_input = $(addprefix $(top_srcdir)/wnck/wnckmm/,$(wnckmm_files_hg:.hg=.h))

docimagesdir = $(libdocdir)/images
dist_docimages_DATA = 

include $(top_srcdir)/doc/doc-reference.am

# These are copied here by mm-common:
dist_noinst_DATA += \
	doc-install.pl \
	doc-postprocess.pl \
	tagfile-to-devhelp2.xsl \
	doxygen.css
