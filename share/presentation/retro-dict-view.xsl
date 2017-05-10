<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
  xmlns:tei="http://www.tei-c.org/ns/1.0">

  <xsl:output method="html" media-type="text/html" cdata-section-elements="script style" indent="no"
    encoding="utf-8"/>
  <xsl:strip-space elements="tei:choice"/>

  <xsl:template match="tei:TEI">
    <html>
      <xsl:apply-templates/>
    </html>
  </xsl:template>

  <xsl:template match="tei:teiHeader">
    <head>
      <title>
        <xsl:value-of select="//tei:titleStmt/tei:title"/>
      </title>
      <style type="text/css">
        body{
            margin: 0px;
            font-family: Verdana, sans-serif;
            font-size: 1em;
            line-height: 1.3;
            max-width: 40em;
	}
        h1{
            font-size: 1.8em;
            padding-left: 4em;
            padding-bottom: 0.5em;
        }
        p{
            text-indent: 1.5em;
            padding-left: 4em;
            margin-bottom: 0em;
            margin-top: 0em;
        }
	table {text-indent: 0px;}
	td {vertical-align:top;}
	.title_page{
	    text-align:center;
	    border:1px solid black;
	    margin-top: 4em;
	    margin-left: 4em;
	    margin-bottom: 4em;
	    padding-top: 4em;
	    padding-bottom: 4em;
	}
        .c{
            text-align: center;
        }
        .b{
            font-weight: bold;
        }
        .i{
            font-style: italic;
	    border:1px dotted black;
	    padding-left:1px; padding-right:1px;
        }
        .k{
            font-variant: small-caps;
	    background-color: yellow;
	    padding-left:1px; padding-right:1px;
        }
        .smaller { font-size: 0.8em;}
        .larger { font-size: 1.2em;}
        .et {
		text-indent: 0px;
		margin-top: 0.5em;
		margin-bottom:0.5em;
		margin-left:5em;
	}
        .right {text-align: right;}
        .g{
            letter-spacing: 0.25em;
	    background-color:#ddd;
        }
        .page_number{
		background-color: gray;
		color: white;
		padding: 2px;
		margin: 2px;
		max-width: 4em;
	}
        .editorial{background-color: Salmon;}
        .s{text-decoration: line-through;}
	.antiqua{text-decoration:underline;}
	.hr{width:50%;}
      </style>
    </head>
  </xsl:template>

  <xsl:template match="tei:text">
    <body>
      <xsl:apply-templates/>
    </body>
  </xsl:template>

  <xsl:template match="tei:titlePage">
    <div class="title_page">
      <xsl:apply-templates/>
    </div>
  </xsl:template>

  <xsl:template match="tei:head">
    <h1 class="{translate(./@rendition, '#', '')}">
      <xsl:apply-templates/>
    </h1>
  </xsl:template>

  <xsl:template match="tei:p">
    <p class="{translate(./@rendition, '#', '')}">
      <xsl:apply-templates/>
    </p>
  </xsl:template>

  <xsl:template match="tei:hi">
    <span class="{translate(./@rendition, '#', '')}">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  <xsl:template match="tei:p/tei:pb">
    <span class="page_number">[<xsl:value-of select="./@n"/>]</span>
  </xsl:template>
  
  <xsl:template match="tei:pb">
    <div class="page_number">[<xsl:value-of select="./@n"/>]</div>
  </xsl:template>
  
  <xsl:template match="tei:lb">
    <br />
  </xsl:template>
  
  <xsl:template match="tei:milestone">
	  <hr class="{translate(./@rendition, '#', '')}"></hr>
  </xsl:template>
  
  <xsl:template match="tei:sic">
    <span class="editorial s"><xsl:apply-templates/></span>
  </xsl:template>
  <xsl:template match="tei:corr">
    <span class="editorial">|<xsl:apply-templates/></span>
  </xsl:template>  

  <xsl:template match="tei:table">
	  <table><xsl:apply-templates/></table>
  </xsl:template>

  <xsl:template match="tei:row">
	  <tr><xsl:apply-templates/></tr>
  </xsl:template>
  
  <xsl:template match="tei:cell">
	  <td class="{translate(./@rendition, '#', '')}"><xsl:apply-templates/></td>
  </xsl:template>

</xsl:stylesheet>
