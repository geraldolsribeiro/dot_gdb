all:
	INTMAIN_DOCMD_DETAILS=false \
  INTMAIN_DOCMD_TOC=true \
  INTMAIN_DOCMD_SHOW_SOURCE=false \
  INTMAIN_DOCMD_SHOW_BANNER=false \
	intmain_docmd conf gdbinit README.md
