# Overview
`retro-dict` is a collection of historical etymological dictionaries.

Transcription and typographical markup follow the guidelines
of the DTA base format which was developed for the _German Text Archive_
(DTA, https://www.deutschestextarchiv.de) on the basis of the
TEI P5 guidelines (Text Encoding Initiative, https://www.tei-c.org).
You can find the upstream version of the DTA base format
(schema and documentation in ODD) at
https://github.com/deutschestextarchiv/dtabf. `retro-dict` keeps
an unmodified set of schemas
(Relax NG and Schematron, under `share/validation`)
for convenience and easier off-line use of the collection's data.

All font properties are preserved. Printed characters are not normalized
to keep (partly) idiosyncratic transliterations as close to the
printed original as possible. Features that are only accountable to
media-specific constraints are removed: line breaks are generally
not preserved. Hyphenation is also not preserved, i.e. all hypenated words are
faithfully reconstructed. Signature marks, running titles or the exact
location of page numbers are not preserved. Page and column beginnings
are still recorded, though.
