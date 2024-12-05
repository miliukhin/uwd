# uwd: command-line Ukrainian Web Dictionaries

uwd looks up given word in various web dictionaries. Uses
html2text, mdr and w3m for displaying results.

## Install

Make dependencies: git go
Dependencies: mdr w3m html2text sed

Just run make:

```
sudo make install
```

## Usage

```
uwd -[serdh] <word>
        -i      install dependencies
        -v      query vesum for word's cases
        -e      get english translations from e2u.org.ua - default
        -c      cases table (lcorp.ulif.org.ua/dictua)
        -r      russian translations from r2u.org.ua
        -d      definition (sum.in.ua)
        -h      help
```

## Want to help out?

- Add new dictionaries, say, for synonyms
- Create a unified way of displaying results (maybe using sed) that will eliminate the need for w3m, html2text and mdr
- If nothing else, donate: https://miliukhin.xyz/donate !

## License

Ukrainian Web Dictionaries is free/libre software. This program is released under the GPLv3 license, which you can find in the file LICENSE.
