# retro-dict: historical etymological dictionaries
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
Upstream changes to the DTA base format schemas will lead to
updates of existing `retro-dict` data.

During transcription, all font properties are preserved.
Printed characters are generally not normalized
to keep (the partly) idiosyncratic transliterations as close to the
printed original as possible. However, features that are only accountable to
media-specific constraints are removed: line breaks are not preserved
except in verse quotations.
Hyphenation is also not preserved, i.e. all hypenated words are
faithfully reconstructed. Words that are split across pages are only recorded
on the page they begin on.
Signature marks, running titles or the exact
location of page numbers are not preserved. Page and column beginnings
are still recorded, though.

In order to view the transcripts in a web browser after cloning
or checking out this repository you may have to set up a webserver
running locally on your machine in order to have the XSL applied automatically.
An easy way to do this is:

```user@host:trunk$ python -m SimpleHTTPServer```

and then pointing your browser to http://localhost:8000/.
