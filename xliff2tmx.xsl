<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="utf-8" indent="yes" />
    <xsl:strip-space elements="*"/>
    
    <xsl:template match="/">
        <xsl:variable name="source" select="//file/@source-language" />
        <xsl:variable name="target" select="//file/@target-language" />
        <xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE tmx SYSTEM "tmx14.dtd"&gt;
</xsl:text>
        <xsl:comment> Created with XLIFF2TMX XSL by @tomasfejfar / https://github.com/tomasfejfar/xliff2tmx </xsl:comment>
        <xsl:element name="tmx">
            <xsl:attribute name="version">
                <xsl:text>1.4</xsl:text>
            </xsl:attribute>
            <xsl:element name="header">
                <xsl:attribute name="srclang">
                    <xsl:value-of select="$source" />
                </xsl:attribute>
                <xsl:attribute name="creationtool">
                    <xsl:text>XLIFF to TMX XSLT</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="datatype">
                    <xsl:text>unknown</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="adminlang">
                    <xsl:value-of select="$source"/>
                </xsl:attribute>
                <xsl:attribute name="o-tmf">
                    <xsl:text>XXX</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="segtype">
                    <xsl:text>sentence</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="creationtoolversion">
                    <xsl:text>1.0</xsl:text>
                </xsl:attribute>
                <prop type="defclient"></prop>
                <prop type="defproject"></prop>
                <prop type="defdomain"></prop>
                <prop type="defsubject"></prop>
                <prop type="description"></prop>
                <prop type="targetlang">
                    <xsl:value-of select="$target" />
                </prop>
                <prop type="name">6tm</prop>
            </xsl:element>
            <xsl:element name="body">
                <xsl:apply-templates select="//file/body/trans-unit" />
            </xsl:element>
        </xsl:element>
    </xsl:template>

    <xsl:template match="trans-unit">
        <xsl:element name="tu">
            <xsl:apply-templates select="source" />
            <xsl:apply-templates select="target" />
        </xsl:element>
    </xsl:template>

    <xsl:template match="source">
        <xsl:variable name="source" select="//file/@source-language" />
        <xsl:element name="tuv">
            <xsl:attribute name="xml:lang">
                <xsl:value-of select="$source" />
            </xsl:attribute>
            <xsl:element name="seg">
                <xsl:value-of select="." />
            </xsl:element>
        </xsl:element>
    </xsl:template>

    <xsl:template match="target">
        <xsl:variable name="target" select="//file/@target-language" />
        <xsl:element name="tuv">
            <xsl:attribute name="xml:lang">
                <xsl:value-of select="$target" />
            </xsl:attribute>
            <xsl:element name="seg">
                <xsl:value-of select="." />
            </xsl:element>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>
