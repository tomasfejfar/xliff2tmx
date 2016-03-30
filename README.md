# XLIFF2TMX XSLT transformation

This XSL file can be easily used to convert any bilingual XLIFF file to bilingual TMX. It's with 80/20 rule in mind. It will probably work for most simple XLIFFs, but may break for more complex ones. 

## Usage

`xsltproc -o some.tmx xliff2tmx.xsl some.xlf`

## Batch usage

### In bash

`find . -name \*.xlf -exec xsltproc -o {}.tmx xliff2tmx.xsl {} \;`

## Using on windows

Either use any available XSLT processor you have or use `cygwin` to install `xsltproc`, that can be found in the `libxslt` package.  

## Contributing

Either create an issue or (better) create a pull request. 

## License

Licensed under [MIT](https://opensource.org/licenses/MIT).   
