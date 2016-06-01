# XLIFF2TMX XSLT transformation

This XSL file can be easily used to convert any bilingual XLIFF file to bilingual TMX. It's with 80/20 rule in mind. It will probably work for most simple XLIFFs, but may break for more complex ones. 

## Usage

`xsltproc -o some.tmx xliff2tmx.xsl some.xlf`

## Validation

To validate the resulting TMX file you can use the bundled TMX1.4 DTD file. 

`xmllint --valid --noout some.tmx`

Please note, that the DTD file needs to be in the same directory. Alternatively you can [download the DTD](http://www.ttt.org/oscarstandards/tmx/tmx14.dtd) from source. 

## Batch usage

### In bash

`find . -name \*.xlf -exec xsltproc -o {}.tmx xliff2tmx.xsl {} \;`

## Using on windows

Either use any available XSLT processor you have or use `cygwin` to install `xsltproc`, that can be found in the `libxslt` package. If you get `find: missing argument to '-exec'` error, try running the command in bash. 

## Contributing

Either create an issue or (better) create a pull request. Also if it does not work for your specific file, you can send attach the file to the issue (or contact me for secure transport channel). 

## License

Licensed under [MIT](https://opensource.org/licenses/MIT). 

Made with ❤ for [Lenka](http://www.jsemlenka.cz/) 
