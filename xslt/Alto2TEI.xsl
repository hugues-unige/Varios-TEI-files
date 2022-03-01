<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:alto="http://www.loc.gov/standards/alto/ns-v4#"
    xpath-default-namespace="http://www.loc.gov/standards/alto/ns-v4#" version="2.0"
    exclude-result-prefixes="#all">
    <xsl:output method="xml" indent="yes"
        xpath-default-namespace="http://www.tei-c.org/release/xml/tei/custom/schema/relaxng/tei_all.rng"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="/">
        <TEI xmlns="http://www.tei-c.org/ns/1.0">
            <teiHeader>
                <fileDesc>
                    <titleStmt>
                        <title/>
                        <respStmt>
                            <name/>
                            <resp>Codificación TEI</resp>
                        </respStmt>
                    </titleStmt>
                    <publicationStmt>
                        <authority role="rightsHolder">Bibliothèque Universitaire de
                            Genève</authority>
                        <availability status="restricted">
                            <licence n="cc by nc sa"
                                target="https://creativecommons.org/licenses/by-nc-sa/4.0/"/>
                        </availability>
                    </publicationStmt>
                    <sourceDesc>
                        <biblFull>
                            <titleStmt>
                                <title type="titulo_completo"/>
                                <title type="titulo_breve"/>
                            </titleStmt>
                            <editionStmt>
                                <p/>
                            </editionStmt>
                            <publicationStmt>
                                <publisher/>
                                <pubPlace ref="">geonames : - Carmona:
                                    https://www.geonames.org/2520118/carmona.html - Madrid :
                                    https://www.geonames.org/3117735/madrid.html - Barcelona :
                                    https://www.geonames.org/3128760/barcelona.html - Reus :
                                    https://www.geonames.org/3111933/reus.html - Sevilla :
                                    https://www.geonames.org/2510911/sevilla.html - Pamplona :
                                    https://www.geonames.org/3114472/pamplona.html - Játiva :
                                    https://www.geonames.org/2516345/xativa.html </pubPlace>
                                <date cert=""></date>
                            </publicationStmt>
                        </biblFull>
                        <msDesc>
                            <msIdentifier>
                                <country>Suisse</country>
                                <settlement>Genève</settlement>
                                <repository>Bibliothèque Universitaire de Genève <ref
                                        target="https://unige.swisscovery.slsp.ch/permalink/41SLSP_UGE/btt5ev/alma991008229029705502"
                                    /></repository>
                                <!-- Vérifier si le lien convient au BCN-->
                                <idno type="cote"/>
                                <!-- Pas de cote disponible pour ce corpus ? -->
                                <idno type="DOI"/>
                                <altIdentifier>
                                    <idno type="num_impresor"/>
                                </altIdentifier>
                            </msIdentifier>
                            <msContents>
                                <summary/>
                                <msItem>
                                    <locus/>
                                    <title/>
                                </msItem>
                            </msContents>
                            <physDesc>
                                <objectDesc>
                                    <supportDesc>
                                        <support>
                                            <dim>in-4</dim>
                                        </support>
                                        <extent unite="página"> 4 </extent>
                                        <condition>Bueno</condition>
                                    </supportDesc>
                                    <layoutDesc>
                                        <p>2 columnas</p>
                                    </layoutDesc>
                                </objectDesc>
                                <decoDesc>
                                    <decoNote n="" type="num_grabados"/>
                                    <decoNote type="lista_grabados"> </decoNote>
                                    <decoNote type="ornamento">
                                        <list> </list>
                                    </decoNote>
                                </decoDesc>
                            </physDesc>
                        </msDesc>
                    </sourceDesc>
                </fileDesc>
                <encodingDesc>
                    <projectDesc>
                        <p>Este archivo fue creado en el marco del proyecto Desenrollando el
                            Cordel/Démêler le cordel/Untangling the cordel, dirigido por la
                            profesora Constance Carta de la Universidad de Ginebra, con el apoyo de
                            la Fundación filantrópica Famille Sandoz-Monique de Meuron.</p>
                    </projectDesc>
                    <classDecl>
                        <taxonomy xml:id="dato_bne">
                            <bibl>El portal de datos bibliográficos de la Biblioteca Nacional de
                                España</bibl>
                        </taxonomy>
                    </classDecl>
                    <editorialDecl corresp="#automaticTranscription">
                        <correction>
                            <p>OCR non corregido</p>
                        </correction>
                        <normalization>
                            <p>Se conservan la ortografía, las mayúsculas y las cursivas del texto
                                original.</p>
                        </normalization>
                        <punctuation>
                            <p>Se conserva la puntuación original.</p>
                        </punctuation>
                    </editorialDecl>
                </encodingDesc>
                <profileDesc>
                    <langUsage>
                        <language ident="es">Español</language>
                    </langUsage>
                    <textClass>
                        <keywords scheme="#dato_bne">
                            <term type="tipo_texto"/>
                            <term type="tipo_estrofa"/>
                            <term type="verso_prosa">Verso</term>
                            <term type="sagrado_profano"/>
                        </keywords>
                    </textClass>
                </profileDesc>
                <revisionDesc>
                    <change/>
                </revisionDesc>
            </teiHeader>
            <sourceDoc>
                <xsl:for-each select="//alto">
                    <xsl:element name="surface" namespace="http://www.tei-c.org/ns/1.0">
                        <xsl:attribute name="id">
                            <xsl:value-of
                                select="substring-before(self::alto/Description/sourceImageInformation/fileName, '.')"
                            />
                        </xsl:attribute>
                        <xsl:element name="graphic">
                            <xsl:attribute name="url">
                                <xsl:text>www.portail_DH//arks:/</xsl:text>
                                <xsl:text>f</xsl:text>
                                <xsl:value-of
                                    select="substring-before(substring(self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                <xsl:text>/full/full/0/native.</xsl:text>
                                <xsl:value-of
                                    select="substring-after(./Description/sourceImageInformation/fileName, '.')"
                                />
                            </xsl:attribute>
                        </xsl:element>
                        <xsl:for-each select="./Layout/Page/PrintSpace/TextBlock">
                            <xsl:choose>
                                <xsl:when test="@TAGREFS = 'BT12'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="id">
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:value-of select="./@TAGREFS"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="n">
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="type">
                                            <xsl:value-of
                                                select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT12']/@LABEL"
                                            />
                                        </xsl:attribute>
                                        <xsl:attribute name="subtype">
                                            <xsl:text>none</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="points">
                                            <xsl:variable name="value"
                                                select="./Shape/Polygon/@POINTS"/>
                                            <xsl:analyze-string select="$value"
                                                regex="([0-9]+)\s([0-9]+)">
                                                <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                </xsl:matching-substring>
                                            </xsl:analyze-string>
                                        </xsl:attribute>
                                        <xsl:attribute name="source">
                                            <xsl:text>www.portail_DH//arks:/</xsl:text>
                                            <xsl:text>f</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/native</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of
                                                select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT12']/@LABEL"
                                            />
                                        </xsl:attribute>
                                        <xsl:for-each select="./TextLine">
                                            <xsl:element name="zone">
                                                <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextBlock"
                                                  level="multiple"/>
                                                  <xsl:value-of select="./@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1" count="TextLine"
                                                  level="multiple"/>
                                                </xsl:attribute>
                                                <xsl:attribute name="type">
                                                  <xsl:text>DefaultLine</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="subtype">
                                                  <xsl:text>none</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="points">
                                                  <xsl:variable name="value"
                                                  select="./Shape/Polygon/@POINTS"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                </xsl:attribute>
                                                <xsl:attribute name="source">
                                                  <xsl:text>www.portail_DH//arks:/</xsl:text>
                                                  <xsl:text>f</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                                  <xsl:text>/</xsl:text>
                                                  <xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/native</xsl:text>
                                                </xsl:attribute>
                                                <xsl:element name="path">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextBlock"
                                                  level="multiple"/>
                                                  <xsl:value-of select="./@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextLine"
                                                  level="multiple"/>
                                                  <xsl:text>1</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./@BASELINE"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                </xsl:element>
                                                <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                </xsl:element>
                                            </xsl:element>
                                        </xsl:for-each>
                                    </xsl:element>
                                </xsl:when>
                                <xsl:when test="@TAGREFS = 'BT14'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="id">
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:value-of select="./@TAGREFS"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="n">
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="type">
                                            <xsl:value-of
                                                select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT14']/@LABEL"
                                            />
                                        </xsl:attribute>
                                        <xsl:attribute name="subtype">
                                            <xsl:text>none</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="points">
                                            <xsl:variable name="value"
                                                select="./Shape/Polygon/@POINTS"/>
                                            <xsl:analyze-string select="$value"
                                                regex="([0-9]+)\s([0-9]+)">
                                                <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                </xsl:matching-substring>
                                            </xsl:analyze-string>
                                        </xsl:attribute>
                                        <xsl:attribute name="source">
                                            <xsl:text>www.portail_DH//arks:/</xsl:text>
                                            <xsl:text>f</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/native</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of
                                                select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT14']/@LABEL"
                                            />
                                        </xsl:attribute>
                                        <xsl:for-each select="./TextLine">
                                            <xsl:choose>
                                                <xsl:when test="./@TAGREFS = 'LT40'">
                                                  <xsl:element name="zone">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1_"
                                                  count="TextBlock" level="multiple"/> 
                                                  <xsl:value-of select="./@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1"
                                                  count="TextLine" level="multiple"/>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="type">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT40']/@LABEL, ':')"
                                                  />
                                                  </xsl:attribute>
                                                  <xsl:attribute name="subtype">
                                                  <xsl:value-of
                                                  select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT40']/@LABEL, ':')"
                                                  />
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value"
                                                  select="./Shape/Polygon/@POINTS"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="source">
                                                  <xsl:text>www.portail_DH//arks:/</xsl:text>
                                                  <xsl:text>f</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                                  <xsl:text>/</xsl:text>
                                                  <xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/native</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:element name="path">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1_"
                                                  count="TextBlock" level="multiple"/> 
                                                  <xsl:value-of select="./@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1_"
                                                  count="TextLine" level="multiple"/> 
                                                  <xsl:text>1</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./@BASELINE"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                  </xsl:element>
                                                  <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                  </xsl:element>
                                                  </xsl:element>
                                                </xsl:when>
                                                <xsl:when test="./@TAGREFS = 'LT69'">
                                                  <xsl:element name="zone">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1_"
                                                  count="TextBlock" level="multiple"/> 
                                                  <xsl:value-of select="./@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1"
                                                  count="TextLine" level="multiple"/>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="type">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT69']/@LABEL, ':')"
                                                  />
                                                  </xsl:attribute>
                                                  <xsl:attribute name="subtype">
                                                  <xsl:value-of
                                                  select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT69']/@LABEL, ':')"
                                                  />
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value"
                                                  select="./Shape/Polygon/@POINTS"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="source">
                                                  <xsl:text>www.portail_DH//arks:/</xsl:text>
                                                  <xsl:text>f</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                                  <xsl:text>/</xsl:text>
                                                  <xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/native</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:element name="path">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1_"
                                                  count="TextBlock" level="multiple"/> 
                                                  <xsl:value-of select="./@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1_"
                                                  count="TextLine" level="multiple"/> 
                                                  <xsl:text>1</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./@BASELINE"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                  </xsl:element>
                                                  <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                  </xsl:element>
                                                  </xsl:element>
                                                </xsl:when>
                                                <xsl:when test="./@TAGREFS = 'LT74'">
                                                  <xsl:element name="zone">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1_"
                                                  count="TextBlock" level="multiple"/> 
                                                  <xsl:value-of select="./@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1"
                                                  count="TextLine" level="multiple"/>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="type">
                                                  <xsl:value-of
                                                  select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT74']"
                                                  />
                                                  </xsl:attribute>
                                                  <xsl:attribute name="subtype">
                                                  <xsl:text>none</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value"
                                                  select="./Shape/Polygon/@POINTS"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="source">
                                                  <xsl:text>www.portail_DH//arks:/</xsl:text>
                                                  <xsl:text>f</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                                  <xsl:text>/</xsl:text>
                                                  <xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/native</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:element name="path">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1_"
                                                  count="TextBlock" level="multiple"/> 
                                                  <xsl:value-of select="./@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1_"
                                                  count="TextLine" level="multiple"/> 
                                                  <xsl:text>1</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./@BASELINE"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                  </xsl:element>
                                                  <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                  </xsl:element>
                                                  </xsl:element>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                  <xsl:element name="zone">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextBlock"
                                                  level="multiple"/>
                                                  <xsl:value-of select="./@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1" count="TextLine"
                                                  level="multiple"/>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="type">
                                                  <xsl:text>DefaultLine</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="subtype">
                                                  <xsl:text>none</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value"
                                                  select="./Shape/Polygon/@POINTS"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="source">
                                                  <xsl:text>www.portail_DH//arks:/</xsl:text>
                                                  <xsl:text>f</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                                  <xsl:text>/</xsl:text>
                                                  <xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/native</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:element name="path">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextBlock"
                                                  level="multiple"/>
                                                  <xsl:value-of select="./@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextLine"
                                                  level="multiple"/>
                                                  <xsl:text>1</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./@BASELINE"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                  </xsl:element>
                                                  <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                  </xsl:element>
                                                  </xsl:element>
                                                </xsl:otherwise>
                                            </xsl:choose>

                                        </xsl:for-each>
                                    </xsl:element>
                                </xsl:when>
                                <xsl:when test="@TAGREFS = 'BT16'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="id">
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:value-of select="./@TAGREFS"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="n">
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="type">
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT16']/@LABEL, ':')"/>

                                        </xsl:attribute>
                                        <xsl:attribute name="subtype">
                                            <xsl:value-of
                                                select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT16']/@LABEL, ':')"
                                            />
                                        </xsl:attribute>
                                        <xsl:attribute name="points">
                                            <xsl:variable name="value"
                                                select="./Shape/Polygon/@POINTS"/>
                                            <xsl:analyze-string select="$value"
                                                regex="([0-9]+)\s([0-9]+)">
                                                <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                </xsl:matching-substring>
                                            </xsl:analyze-string>
                                        </xsl:attribute>
                                        <xsl:attribute name="source">
                                            <xsl:text>www.portail_DH//arks:/</xsl:text>
                                            <xsl:text>f</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/native</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of
                                                select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT16']/@LABEL"
                                            />
                                        </xsl:attribute>
                                         <xsl:for-each select="./TextLine">
                                            <xsl:choose>
                                                <xsl:when test="./@TAGREFS = 'LT40'">
                                                  <xsl:element name="zone">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1_"
                                                  count="TextBlock" level="multiple"/> 
                                                  <xsl:value-of select="./@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1"
                                                  count="TextLine" level="multiple"/>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="type">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT40']/@LABEL, ':')"
                                                  />
                                                  </xsl:attribute>
                                                  <xsl:attribute name="subtype">
                                                  <xsl:value-of
                                                  select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT40']/@LABEL, ':')"
                                                  />
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value"
                                                  select="./Shape/Polygon/@POINTS"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="source">
                                                  <xsl:text>www.portail_DH//arks:/</xsl:text>
                                                  <xsl:text>f</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                                  <xsl:text>/</xsl:text>
                                                  <xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/native</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:element name="path">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1_"
                                                  count="TextBlock" level="multiple"/> 
                                                  <xsl:value-of select="./@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1_"
                                                  count="TextLine" level="multiple"/> 
                                                  <xsl:text>1</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./@BASELINE"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                  </xsl:element>
                                                  <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                  </xsl:element>
                                                  </xsl:element>
                                                </xsl:when>
                                                <xsl:when test="./@TAGREFS = 'LT69'">
                                                  <xsl:element name="zone">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1_"
                                                  count="TextBlock" level="multiple"/> 
                                                  <xsl:value-of select="./@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1"
                                                  count="TextLine" level="multiple"/>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="type">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT69']/@LABEL, ':')"
                                                  />
                                                  </xsl:attribute>
                                                  <xsl:attribute name="subtype">
                                                  <xsl:value-of
                                                  select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT69']/@LABEL, ':')"
                                                  />
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value"
                                                  select="./Shape/Polygon/@POINTS"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="source">
                                                  <xsl:text>www.portail_DH//arks:/</xsl:text>
                                                  <xsl:text>f</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                                  <xsl:text>/</xsl:text>
                                                  <xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/native</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:element name="path">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1_"
                                                  count="TextBlock" level="multiple"/> 
                                                  <xsl:value-of select="./@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1_"
                                                  count="TextLine" level="multiple"/> 
                                                  <xsl:text>1</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./@BASELINE"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                  </xsl:element>
                                                  <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                  </xsl:element>
                                                  </xsl:element>
                                                </xsl:when>
                                                <xsl:when test="./@TAGREFS = 'LT74'">
                                                  <xsl:element name="zone">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1_"
                                                  count="TextBlock" level="multiple"/> 
                                                  <xsl:value-of select="./@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1"
                                                  count="TextLine" level="multiple"/>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="type">
                                                  <xsl:value-of
                                                  select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT74']"
                                                  />
                                                  </xsl:attribute>
                                                  <xsl:attribute name="subtype">
                                                  <xsl:text>none</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value"
                                                  select="./Shape/Polygon/@POINTS"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="source">
                                                  <xsl:text>www.portail_DH//arks:/</xsl:text>
                                                  <xsl:text>f</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                                  <xsl:text>/</xsl:text>
                                                  <xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/native</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:element name="path">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1_"
                                                  count="TextBlock" level="multiple"/> 
                                                  <xsl:value-of select="./@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1_"
                                                  count="TextLine" level="multiple"/> 
                                                  <xsl:text>1</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./@BASELINE"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                  </xsl:element>
                                                  <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                  </xsl:element>
                                                  </xsl:element>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                  <xsl:element name="zone">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextBlock"
                                                  level="multiple"/>
                                                  <xsl:value-of select="./@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1" count="TextLine"
                                                  level="multiple"/>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="type">
                                                  <xsl:text>DefaultLine</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="subtype">
                                                  <xsl:text>none</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value"
                                                  select="./Shape/Polygon/@POINTS"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="source">
                                                  <xsl:text>www.portail_DH//arks:/</xsl:text>
                                                  <xsl:text>f</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                                  <xsl:text>/</xsl:text>
                                                  <xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/native</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:element name="path">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextBlock"
                                                  level="multiple"/>
                                                  <xsl:value-of select="./@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextLine"
                                                  level="multiple"/>
                                                  <xsl:text>1</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./@BASELINE"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                  </xsl:element>
                                                  <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                  </xsl:element>
                                                  </xsl:element>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </xsl:for-each>
                                    </xsl:element>
                                </xsl:when>
                                <xsl:when test="@TAGREFS = 'BT17'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="id">
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:value-of select="./@TAGREFS"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="n">
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="type">
                                            <xsl:value-of
                                                select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT17']/@LABEL"
                                            />
                                        </xsl:attribute>
                                        <xsl:attribute name="subtype">
                                            <xsl:text>none</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="points">
                                            <xsl:variable name="value"
                                                select="./Shape/Polygon/@POINTS"/>
                                            <xsl:analyze-string select="$value"
                                                regex="([0-9]+)\s([0-9]+)">
                                                <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                </xsl:matching-substring>
                                            </xsl:analyze-string>
                                        </xsl:attribute>
                                        <xsl:attribute name="source">
                                            <xsl:text>www.portail_DH//arks:/</xsl:text>
                                            <xsl:text>f</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/native</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of
                                                select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT17']/@LABEL"
                                            />
                                        </xsl:attribute>
                                    </xsl:element>
                                </xsl:when>
                                <xsl:when test="@TAGREFS = 'BT21'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="id">
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:value-of select="./@TAGREFS"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="n">
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="type">
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT21']/@LABEL, ':')"/>
                                            
                                        </xsl:attribute>
                                        <xsl:attribute name="subtype">
                                            <xsl:value-of
                                                select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT21']/@LABEL, ':')"
                                            />
                                        </xsl:attribute>
                                        <xsl:attribute name="points">
                                            <xsl:variable name="value"
                                                select="./Shape/Polygon/@POINTS"/>
                                            <xsl:analyze-string select="$value"
                                                regex="([0-9]+)\s([0-9]+)">
                                                <xsl:matching-substring>
                                                    <xsl:for-each select="$value">
                                                        <xsl:value-of select="regex-group(1)"/>
                                                        <xsl:text>,</xsl:text>
                                                        <xsl:value-of select="regex-group(2)"/>
                                                        <xsl:text> </xsl:text>
                                                    </xsl:for-each>
                                                </xsl:matching-substring>
                                            </xsl:analyze-string>
                                        </xsl:attribute>
                                        <xsl:attribute name="source">
                                            <xsl:text>www.portail_DH//arks:/</xsl:text>
                                            <xsl:text>f</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/native</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of
                                                select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT21']/@LABEL"
                                            />
                                        </xsl:attribute>
                                    </xsl:element>
                                </xsl:when>
                                <xsl:when test="@TAGREFS = 'BT19'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="id">
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:value-of select="./@TAGREFS"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="n">
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="type">
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT19']/@LABEL, ':')"
                                            />
                                        </xsl:attribute>
                                        <xsl:attribute name="subtype">
                                            <xsl:value-of
                                                select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT19']/@LABEL, ':')"
                                            />
                                        </xsl:attribute>
                                        <xsl:attribute name="points">
                                            <xsl:variable name="value"
                                                select="./Shape/Polygon/@POINTS"/>
                                            <xsl:analyze-string select="$value"
                                                regex="([0-9]+)\s([0-9]+)">
                                                <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                </xsl:matching-substring>
                                            </xsl:analyze-string>
                                        </xsl:attribute>
                                        <xsl:attribute name="source">
                                            <xsl:text>www.portail_DH//arks:/</xsl:text>
                                            <xsl:text>f</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/native</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of
                                                select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT19']/@LABEL"
                                            />
                                        </xsl:attribute>
                                        <xsl:for-each select="./TextLine">
                                            <xsl:element name="zone">
                                                <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextBlock"
                                                  level="multiple"/>
                                                  <xsl:value-of select="./@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1" count="TextLine"
                                                  level="multiple"/>
                                                </xsl:attribute>
                                                <xsl:attribute name="type">
                                                  <xsl:text>DefaultLine</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="subtype">
                                                  <xsl:text>none</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="points">
                                                  <xsl:variable name="value"
                                                  select="./Shape/Polygon/@POINTS"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                </xsl:attribute>
                                                <xsl:attribute name="source">
                                                  <xsl:text>www.portail_DH//arks:/</xsl:text>
                                                  <xsl:text>f</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                                  <xsl:text>/</xsl:text>
                                                  <xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/native</xsl:text>
                                                </xsl:attribute>
                                                <xsl:element name="path">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextBlock"
                                                  level="multiple"/>
                                                  <xsl:value-of select="./@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextLine"
                                                  level="multiple"/>
                                                  <xsl:text>1</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./@BASELINE"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                </xsl:element>
                                                <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                </xsl:element>
                                            </xsl:element>
                                        </xsl:for-each>
                                    </xsl:element>
                                </xsl:when>
                                <xsl:when test="@TAGREFS = 'BT20'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="id">
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:value-of select="./@TAGREFS"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="n">
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="type">
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT19']/@LABEL, ':')"
                                            />
                                        </xsl:attribute>
                                        <xsl:attribute name="subtype">
                                            <xsl:value-of
                                                select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT20']/@LABEL, ':')"
                                            />
                                        </xsl:attribute>
                                        <xsl:attribute name="points">
                                            <xsl:variable name="value"
                                                select="./Shape/Polygon/@POINTS"/>
                                            <xsl:analyze-string select="$value"
                                                regex="([0-9]+)\s([0-9]+)">
                                                <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                </xsl:matching-substring>
                                            </xsl:analyze-string>
                                        </xsl:attribute>
                                        <xsl:attribute name="source">
                                            <xsl:text>www.portail_DH//arks:/</xsl:text>
                                            <xsl:text>f</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/native</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of
                                                select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT20']/@LABEL"
                                            />
                                        </xsl:attribute>
                                        <xsl:for-each select="./TextLine">
                                            <xsl:element name="zone">
                                                <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextBlock"
                                                  level="multiple"/>
                                                  <xsl:value-of select="./@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1" count="TextLine"
                                                  level="multiple"/>
                                                </xsl:attribute>
                                                <xsl:attribute name="type">
                                                  <xsl:text>DefaultLine</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="subtype">
                                                  <xsl:text>none</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="points">
                                                  <xsl:variable name="value"
                                                  select="./Shape/Polygon/@POINTS"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                </xsl:attribute>
                                                <xsl:attribute name="source">
                                                  <xsl:text>www.portail_DH//arks:/</xsl:text>
                                                  <xsl:text>f</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                                  <xsl:text>/</xsl:text>
                                                  <xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/native</xsl:text>
                                                </xsl:attribute>
                                                <xsl:element name="path">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextBlock"
                                                  level="multiple"/>
                                                  <xsl:value-of select="./@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextLine"
                                                  level="multiple"/>
                                                  <xsl:text>1</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./@BASELINE"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                </xsl:element>
                                                <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                </xsl:element>
                                            </xsl:element>
                                        </xsl:for-each>
                                    </xsl:element>
                                </xsl:when>
                                <xsl:when test="@TAGREFS = 'BT21'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="id">
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:value-of select="./@TAGREFS"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="n">
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="type">
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT21']/@LABEL, ':')"/>

                                        </xsl:attribute>
                                        <xsl:attribute name="subtype">
                                            <xsl:value-of
                                                select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT21']/@LABEL, ':')"
                                            />
                                        </xsl:attribute>
                                        <xsl:attribute name="points">
                                            <xsl:variable name="value"
                                                select="./Shape/Polygon/@POINTS"/>
                                            <xsl:analyze-string select="$value"
                                                regex="([0-9]+)\s([0-9]+)">
                                                <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                </xsl:matching-substring>
                                            </xsl:analyze-string>
                                        </xsl:attribute>
                                        <xsl:attribute name="source">
                                            <xsl:text>www.portail_DH//arks:/</xsl:text>
                                            <xsl:text>f</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/native</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of
                                                select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT21']/@LABEL"
                                            />
                                        </xsl:attribute>
                                    </xsl:element>
                                </xsl:when>
                                <xsl:when test="@TAGREFS = 'BT25'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="id">
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:value-of select="./@TAGREFS"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="n">
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="type">
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT25']/@LABEL, ':')"/>

                                        </xsl:attribute>
                                        <xsl:attribute name="subtype">
                                            <xsl:value-of
                                                select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT25']/@LABEL, ':')"
                                            />
                                        </xsl:attribute>
                                        <xsl:attribute name="points">
                                            <xsl:variable name="value"
                                                select="./Shape/Polygon/@POINTS"/>
                                            <xsl:analyze-string select="$value"
                                                regex="([0-9]+)\s([0-9]+)">
                                                <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                </xsl:matching-substring>
                                            </xsl:analyze-string>
                                        </xsl:attribute>
                                        <xsl:attribute name="source">
                                            <xsl:text>www.portail_DH//arks:/</xsl:text>
                                            <xsl:text>f</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/native</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of
                                                select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT25']/@LABEL"
                                            />
                                        </xsl:attribute>
                                        <xsl:for-each select="./TextLine">
                                            <xsl:element name="zone">
                                                <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextBlock"
                                                  level="multiple"/>
                                                  <xsl:value-of select="./@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1" count="TextLine"
                                                  level="multiple"/>
                                                </xsl:attribute>
                                                <xsl:attribute name="type">
                                                  <xsl:text>DefaultLine</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="subtype">
                                                  <xsl:text>none</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="points">
                                                  <xsl:variable name="value"
                                                  select="./Shape/Polygon/@POINTS"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                </xsl:attribute>
                                                <xsl:attribute name="source">
                                                  <xsl:text>www.portail_DH//arks:/</xsl:text>
                                                  <xsl:text>f</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                                  <xsl:text>/</xsl:text>
                                                  <xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/native</xsl:text>
                                                </xsl:attribute>
                                                <xsl:element name="path">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextBlock"
                                                  level="multiple"/>
                                                  <xsl:value-of select="./@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextLine"
                                                  level="multiple"/>
                                                  <xsl:text>1</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./@BASELINE"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                </xsl:element>
                                                <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                </xsl:element>
                                            </xsl:element>
                                        </xsl:for-each>
                                    </xsl:element>
                                </xsl:when>
                                <xsl:when test="@TAGREFS = 'BT28'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="id">
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:value-of select="./@TAGREFS"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="n">
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="type">
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT28']/@LABEL, ':')"/>

                                        </xsl:attribute>
                                        <xsl:attribute name="subtype">
                                            <xsl:value-of
                                                select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT28']/@LABEL, ':')"
                                            />
                                        </xsl:attribute>
                                        <xsl:attribute name="points">
                                            <xsl:variable name="value"
                                                select="./Shape/Polygon/@POINTS"/>
                                            <xsl:analyze-string select="$value"
                                                regex="([0-9]+)\s([0-9]+)">
                                                <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                </xsl:matching-substring>
                                            </xsl:analyze-string>
                                        </xsl:attribute>
                                        <xsl:attribute name="source">
                                            <xsl:text>www.portail_DH//arks:/</xsl:text>
                                            <xsl:text>f</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/native</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of
                                                select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT28']/@LABEL"
                                            />
                                        </xsl:attribute>
                                        <xsl:for-each select="./TextLine">
                                            <xsl:element name="zone">
                                                <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextBlock"
                                                  level="multiple"/>
                                                  <xsl:value-of select="./@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1" count="TextLine"
                                                  level="multiple"/>
                                                </xsl:attribute>
                                                <xsl:attribute name="type">
                                                  <xsl:text>DefaultLine</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="subtype">
                                                  <xsl:text>none</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="points">
                                                  <xsl:variable name="value"
                                                  select="./Shape/Polygon/@POINTS"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                </xsl:attribute>
                                                <xsl:attribute name="source">
                                                  <xsl:text>www.portail_DH//arks:/</xsl:text>
                                                  <xsl:text>f</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                                  <xsl:text>/</xsl:text>
                                                  <xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/native</xsl:text>
                                                </xsl:attribute>
                                                <xsl:element name="path">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextBlock"
                                                  level="multiple"/>
                                                  <xsl:value-of select="./@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextLine"
                                                  level="multiple"/>
                                                  <xsl:text>1</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./@BASELINE"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                </xsl:element>
                                                <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                </xsl:element>
                                            </xsl:element>
                                        </xsl:for-each>
                                    </xsl:element>
                                </xsl:when>
                                <xsl:when test="@TAGREFS = 'BT29'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="id">
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:value-of select="./@TAGREFS"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="n">
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="type">
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT29']/@LABEL, ':')"/>

                                        </xsl:attribute>
                                        <xsl:attribute name="subtype">
                                            <xsl:value-of
                                                select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT29']/@LABEL, ':')"
                                            />
                                        </xsl:attribute>
                                        <xsl:attribute name="points">
                                            <xsl:variable name="value"
                                                select="./Shape/Polygon/@POINTS"/>
                                            <xsl:analyze-string select="$value"
                                                regex="([0-9]+)\s([0-9]+)">
                                                <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                </xsl:matching-substring>
                                            </xsl:analyze-string>
                                        </xsl:attribute>
                                        <xsl:attribute name="source">
                                            <xsl:text>www.portail_DH//arks:/</xsl:text>
                                            <xsl:text>f</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/native</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of
                                                select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT29']/@LABEL"
                                            />
                                        </xsl:attribute>
                                        <xsl:for-each select="./TextLine">
                                            <xsl:element name="zone">
                                                <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextBlock"
                                                  level="multiple"/>
                                                  <xsl:value-of select="./@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1" count="TextLine"
                                                  level="multiple"/>
                                                </xsl:attribute>
                                                <xsl:attribute name="type">
                                                  <xsl:text>DefaultLine</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="subtype">
                                                  <xsl:text>none</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="points">
                                                  <xsl:variable name="value"
                                                  select="./Shape/Polygon/@POINTS"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                </xsl:attribute>
                                                <xsl:attribute name="source">
                                                  <xsl:text>www.portail_DH//arks:/</xsl:text>
                                                  <xsl:text>f</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                                  <xsl:text>/</xsl:text>
                                                  <xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/native</xsl:text>
                                                </xsl:attribute>
                                                <xsl:element name="path">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextBlock"
                                                  level="multiple"/>
                                                  <xsl:value-of select="./@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextLine"
                                                  level="multiple"/>
                                                  <xsl:text>1</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./@BASELINE"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                </xsl:element>
                                                <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                </xsl:element>
                                            </xsl:element>
                                        </xsl:for-each>
                                    </xsl:element>
                                </xsl:when>
                                <xsl:when test="@TAGREFS = 'BT95'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="id">
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:value-of select="./@TAGREFS"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="n">
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="type">
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT95']/@LABEL, ':')"/>

                                        </xsl:attribute>
                                        <xsl:attribute name="subtype">
                                            <xsl:value-of
                                                select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT95']/@LABEL, ':')"
                                            />
                                        </xsl:attribute>
                                        <xsl:attribute name="points">
                                            <xsl:variable name="value"
                                                select="./Shape/Polygon/@POINTS"/>
                                            <xsl:analyze-string select="$value"
                                                regex="([0-9]+)\s([0-9]+)">
                                                <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                </xsl:matching-substring>
                                            </xsl:analyze-string>
                                        </xsl:attribute>
                                        <xsl:attribute name="source">
                                            <xsl:text>www.portail_DH//arks:/</xsl:text>
                                            <xsl:text>f</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/native</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of
                                                select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT95']/@LABEL"
                                            />
                                        </xsl:attribute>
                                        <xsl:for-each select="./TextLine">
                                            <xsl:element name="zone">
                                                <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextBlock"
                                                  level="multiple"/>
                                                  <xsl:value-of select="./@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1" count="TextLine"
                                                  level="multiple"/>
                                                </xsl:attribute>
                                                <xsl:attribute name="type">
                                                  <xsl:text>DefaultLine</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="subtype">
                                                  <xsl:text>none</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="points">
                                                  <xsl:variable name="value"
                                                  select="./Shape/Polygon/@POINTS"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                </xsl:attribute>
                                                <xsl:attribute name="source">
                                                  <xsl:text>www.portail_DH//arks:/</xsl:text>
                                                  <xsl:text>f</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                                  <xsl:text>/</xsl:text>
                                                  <xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/native</xsl:text>
                                                </xsl:attribute>
                                                <xsl:element name="path">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextBlock"
                                                  level="multiple"/>
                                                  <xsl:value-of select="./@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextLine"
                                                  level="multiple"/>
                                                  <xsl:text>1</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./@BASELINE"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                </xsl:element>
                                                <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                </xsl:element>
                                            </xsl:element>
                                        </xsl:for-each>
                                    </xsl:element>
                                </xsl:when>
                                <xsl:when test="@TAGREFS = 'BT97'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="id">
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:value-of select="./@TAGREFS"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="n">
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="type">
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT97']/@LABEL, ':')"/>

                                        </xsl:attribute>
                                        <xsl:attribute name="subtype">
                                            <xsl:value-of
                                                select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT97']/@LABEL, ':')"
                                            />
                                        </xsl:attribute>
                                        <xsl:attribute name="points">
                                            <xsl:variable name="value"
                                                select="./Shape/Polygon/@POINTS"/>
                                            <xsl:analyze-string select="$value"
                                                regex="([0-9]+)\s([0-9]+)">
                                                <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                </xsl:matching-substring>
                                            </xsl:analyze-string>
                                        </xsl:attribute>
                                        <xsl:attribute name="source">
                                            <xsl:text>www.portail_DH//arks:/</xsl:text>
                                            <xsl:text>f</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/native</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of
                                                select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT97']/@LABEL"
                                            />
                                        </xsl:attribute>
                                        <xsl:for-each select="./TextLine">
                                            <xsl:element name="zone">
                                                <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextBlock"
                                                  level="multiple"/>
                                                  <xsl:value-of select="./@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1" count="TextLine"
                                                  level="multiple"/>
                                                </xsl:attribute>
                                                <xsl:attribute name="type">
                                                  <xsl:text>DefaultLine</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="subtype">
                                                  <xsl:text>none</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="points">
                                                  <xsl:variable name="value"
                                                  select="./Shape/Polygon/@POINTS"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                </xsl:attribute>
                                                <xsl:attribute name="source">
                                                  <xsl:text>www.portail_DH//arks:/</xsl:text>
                                                  <xsl:text>f</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                                  <xsl:text>/</xsl:text>
                                                  <xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/native</xsl:text>
                                                </xsl:attribute>
                                                <xsl:element name="path">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextBlock"
                                                  level="multiple"/>
                                                  <xsl:value-of select="./@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextLine"
                                                  level="multiple"/>
                                                  <xsl:text>1</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./@BASELINE"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                </xsl:element>
                                                <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                </xsl:element>
                                            </xsl:element>
                                        </xsl:for-each>
                                    </xsl:element>
                                </xsl:when>
                                <xsl:when test="@TAGREFS = 'BT205'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="id">
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:value-of select="./@TAGREFS"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="n">
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="type">
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT205']/@LABEL, ':')"/>

                                        </xsl:attribute>
                                        <xsl:attribute name="subtype">
                                            <xsl:value-of
                                                select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT205']/@LABEL, ':')"
                                            />
                                        </xsl:attribute>
                                        <xsl:attribute name="points">
                                            <xsl:variable name="value"
                                                select="./Shape/Polygon/@POINTS"/>
                                            <xsl:analyze-string select="$value"
                                                regex="([0-9]+)\s([0-9]+)">
                                                <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                </xsl:matching-substring>
                                            </xsl:analyze-string>
                                        </xsl:attribute>
                                        <xsl:attribute name="source">
                                            <xsl:text>www.portail_DH//arks:/</xsl:text>
                                            <xsl:text>f</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/native</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of
                                                select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT205']/@LABEL"
                                            />
                                        </xsl:attribute>
                                        <xsl:for-each select="./TextLine">
                                            <xsl:choose>
                                                <xsl:when test="./@TAGREFS = 'LT40'">
                                                  <xsl:element name="zone">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1_"
                                                  count="TextBlock" level="multiple"/> 
                                                  <xsl:value-of select="./@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1"
                                                  count="TextLine" level="multiple"/>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="type">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT40']/@LABEL, ':')"
                                                  />
                                                  </xsl:attribute>
                                                  <xsl:attribute name="subtype">
                                                  <xsl:value-of
                                                  select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT40']/@LABEL, ':')"
                                                  />
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value"
                                                  select="./Shape/Polygon/@POINTS"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="source">
                                                  <xsl:text>www.portail_DH//arks:/</xsl:text>
                                                  <xsl:text>f</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                                  <xsl:text>/</xsl:text>
                                                  <xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/native</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:element name="path">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1_"
                                                  count="TextBlock" level="multiple"/> 
                                                  <xsl:value-of select="./@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1_"
                                                  count="TextLine" level="multiple"/> 
                                                  <xsl:text>1</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./@BASELINE"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                  </xsl:element>
                                                  <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                  </xsl:element>
                                                  </xsl:element>
                                                </xsl:when>
                                                <xsl:when test="./@TAGREFS = 'LT69'">
                                                  <xsl:element name="zone">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1_"
                                                  count="TextBlock" level="multiple"/> 
                                                  <xsl:value-of select="./@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1"
                                                  count="TextLine" level="multiple"/>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="type">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT69']/@LABEL, ':')"
                                                  />
                                                  </xsl:attribute>
                                                  <xsl:attribute name="subtype">
                                                  <xsl:value-of
                                                  select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT69']/@LABEL, ':')"
                                                  />
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value"
                                                  select="./Shape/Polygon/@POINTS"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="source">
                                                  <xsl:text>www.portail_DH//arks:/</xsl:text>
                                                  <xsl:text>f</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                                  <xsl:text>/</xsl:text>
                                                  <xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/native</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:element name="path">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1_"
                                                  count="TextBlock" level="multiple"/> 
                                                  <xsl:value-of select="./@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1_"
                                                  count="TextLine" level="multiple"/> 
                                                  <xsl:text>1</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./@BASELINE"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                  </xsl:element>
                                                  <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                  </xsl:element>
                                                  </xsl:element>
                                                </xsl:when>
                                                <xsl:when test="./@TAGREFS = 'LT74'">
                                                  <xsl:element name="zone">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1_"
                                                  count="TextBlock" level="multiple"/> 
                                                  <xsl:value-of select="./@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1"
                                                  count="TextLine" level="multiple"/>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="type">
                                                  <xsl:value-of
                                                  select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT74']"
                                                  />
                                                  </xsl:attribute>
                                                  <xsl:attribute name="subtype">
                                                  <xsl:text>none</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value"
                                                  select="./Shape/Polygon/@POINTS"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="source">
                                                  <xsl:text>www.portail_DH//arks:/</xsl:text>
                                                  <xsl:text>f</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                                  <xsl:text>/</xsl:text>
                                                  <xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/native</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:element name="path">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1_"
                                                  count="TextBlock" level="multiple"/> 
                                                  <xsl:value-of select="./@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text>  <xsl:number format="1_"
                                                  count="TextLine" level="multiple"/> 
                                                  <xsl:text>1</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./@BASELINE"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                  </xsl:element>
                                                  <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                  </xsl:element>
                                                  </xsl:element>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                  <xsl:element name="zone">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextBlock"
                                                  level="multiple"/>
                                                  <xsl:value-of select="./@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1" count="TextLine"
                                                  level="multiple"/>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="type">
                                                  <xsl:text>DefaultLine</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="subtype">
                                                  <xsl:text>none</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value"
                                                  select="./Shape/Polygon/@POINTS"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="source">
                                                  <xsl:text>www.portail_DH//arks:/</xsl:text>
                                                  <xsl:text>f</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                                  <xsl:text>/</xsl:text>
                                                  <xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/native</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:element name="path">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextBlock"
                                                  level="multiple"/>
                                                  <xsl:value-of select="./@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextLine"
                                                  level="multiple"/>
                                                  <xsl:text>1</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./@BASELINE"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                  </xsl:element>
                                                  <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                  </xsl:element>
                                                  </xsl:element>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </xsl:for-each>
                                    </xsl:element>
                                </xsl:when>
                                <xsl:when test="@TAGREFS = 'BT206'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="id">
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:value-of select="./@TAGREFS"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="n">
                                            <xsl:number format="1" count="TextBlock"
                                                level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="type">
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT206']/@LABEL, ':')"/>

                                        </xsl:attribute>
                                        <xsl:attribute name="subtype">
                                            <xsl:value-of
                                                select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT206']/@LABEL, ':')"
                                            />
                                        </xsl:attribute>
                                        <xsl:attribute name="points">
                                            <xsl:variable name="value"
                                                select="./Shape/Polygon/@POINTS"/>
                                            <xsl:analyze-string select="$value"
                                                regex="([0-9]+)\s([0-9]+)">
                                                <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                </xsl:matching-substring>
                                            </xsl:analyze-string>
                                        </xsl:attribute>
                                        <xsl:attribute name="source">
                                            <xsl:text>www.portail_DH//arks:/</xsl:text>
                                            <xsl:text>f</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/native</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of
                                                select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT97']/@LABEL"
                                            />
                                        </xsl:attribute>
                                        <xsl:for-each select="./TextLine">
                                            <xsl:element name="zone">
                                                <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextBlock"
                                                  level="multiple"/>
                                                  <xsl:value-of select="./@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1" count="TextLine"
                                                  level="multiple"/>
                                                </xsl:attribute>
                                                    <xsl:attribute name="type">
                                                        <xsl:value-of
                                                            select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT74']"
                                                        />
                                                    </xsl:attribute>
                                                <xsl:attribute name="subtype">
                                                    <xsl:text>none</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="points">
                                                  <xsl:variable name="value"
                                                  select="./Shape/Polygon/@POINTS"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                </xsl:attribute>
                                                <xsl:attribute name="source">
                                                  <xsl:text>www.portail_DH//arks:/</xsl:text>
                                                  <xsl:text>f</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(substring(ancestor-or-self::alto/Description/sourceImageInformation/fileName, 12), '.')"/>
                                                  <xsl:text>/</xsl:text>
                                                  <xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/native</xsl:text>
                                                </xsl:attribute>
                                                <xsl:element name="path">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of
                                                  select="ancestor::TextBlock/@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextBlock"
                                                  level="multiple"/>
                                                  <xsl:value-of select="./@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextLine"
                                                  level="multiple"/>
                                                  <xsl:text>1</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./@BASELINE"/>
                                                  <xsl:analyze-string select="$value"
                                                  regex="([0-9]+)\s([0-9]+)">
                                                  <xsl:matching-substring>
                                                  <xsl:for-each select="$value">
                                                  <xsl:value-of select="regex-group(1)"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="regex-group(2)"/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>
                                                  </xsl:matching-substring>
                                                  </xsl:analyze-string>
                                                  </xsl:attribute>
                                                </xsl:element>
                                                <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                </xsl:element>
                                            </xsl:element>
                                        </xsl:for-each>
                                    </xsl:element>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:for-each>
                    </xsl:element>
                </xsl:for-each>
            </sourceDoc>
            <text>
                <body>
                    <xsl:apply-templates/>
                </body>
            </text>
        </TEI>
    </xsl:template>
    <xsl:template match="alto/Tags"/>
    <xsl:template match="alto/Description"/>
    <xsl:template match="alto/Layout"/>
    <xsl:template match="alto">
        <xsl:element name="div" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:element name="pb" namespace="http://www.tei-c.org/ns/1.0">
                <xsl:attribute name="n">
                    <xsl:value-of
                        select="substring-before(substring(Description/sourceImageInformation/fileName, 12), '.')"/>
                    <xsl:apply-templates/>
                </xsl:attribute>
                <xsl:attribute name="facs">
                    <xsl:value-of
                        select="substring-before(Description/sourceImageInformation/fileName, '.')"/>
                    <xsl:apply-templates/>
                </xsl:attribute>
            </xsl:element>
            <xsl:for-each select="Layout/Page/PrintSpace/TextBlock">
                <xsl:choose>
                    <xsl:when test="@TAGREFS = 'BT12'">
                        <xsl:element name="head" namespace="http://www.tei-c.org/ns/1.0">
                            <xsl:attribute name="type">
                                <xsl:text></xsl:text>
                            </xsl:attribute>
                            <xsl:for-each select="./TextLine/String">
                                <xsl:element name="lb" namespace="http://www.tei-c.org/ns/1.0"/>
                                <xsl:value-of select="@CONTENT"/>
                                <xsl:apply-templates/>
                            </xsl:for-each>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="@TAGREFS = 'BT14'">
                        <xsl:choose>
                            <xsl:when
                                test="child::*/child::String[matches(@CONTENT, '([A-Z].{0,7}[.,]) ([A-Z¿¡].*)')]">
                                <xsl:for-each select=".//String">
                                    <xsl:variable name="value"
                                        select="@CONTENT[ancestor::TextBlock[@TAGREFS = 'BT14']]"/>
                                    <xsl:analyze-string select="$value"
                                        regex="([A-Z].{{0,7}}[.,]) ([A-Z¿¡].*)">
                                        <xsl:matching-substring>
                                            <xsl:for-each select="regex-group(1)">
                                                <xsl:element name="sp"
                                                    namespace="http://www.tei-c.org/ns/1.0">
                                                    <xsl:element name="speaker"
                                                        namespace="http://www.tei-c.org/ns/1.0">
                                                        <xsl:value-of select="regex-group(1)"/>
                                                    </xsl:element>
                                                    <xsl:element name="l"
                                                        namespace="http://www.tei-c.org/ns/1.0">
                                                        <xsl:value-of select="regex-group(2)"/>
                                                    </xsl:element>
                                                </xsl:element>
                                            </xsl:for-each>
                                        </xsl:matching-substring>
                                        <xsl:non-matching-substring>
                                            <xsl:element name="l"
                                                namespace="http://www.tei-c.org/ns/1.0">
                                                <xsl:value-of select="$value"/>
                                            </xsl:element>
                                        </xsl:non-matching-substring>
                                    </xsl:analyze-string>
                                </xsl:for-each>
                            </xsl:when>
                            <xsl:when
                                test="child::*/child::String[matches(@CONTENT, '([A-Z]{3,}(.)$)')]">
                                <xsl:for-each select="./String">
                                    <xsl:variable name="value"
                                        select="@CONTENT[ancestor::TextBlock[@TAGREFS = 'BT14']]"/>
                                    <xsl:analyze-string select="$value" regex="([A-Z]{{3,}}(.)?$)">
                                        <xsl:matching-substring>
                                            <xsl:for-each select="regex-group(1)">
                                                <xsl:element name="div"
                                                    namespace="http://www.tei-c.org/ns/1.0">
                                                    <xsl:attribute name="n">
                                                        <xsl:value-of select="regex-group(0)"/>
                                                    </xsl:attribute>
                                                    <xsl:element name="head"
                                                        namespace="http://www.tei-c.org/ns/1.0">
                                                        <xsl:attribute name="type">
                                                            <xsl:text>titulo_estrofa</xsl:text>
                                                        </xsl:attribute>
                                                        <xsl:value-of select="$value"/>
                                                    </xsl:element>
                                                </xsl:element>
                                            </xsl:for-each>
                                        </xsl:matching-substring>
                                        <xsl:non-matching-substring>
                                            <xsl:element name="l"
                                                namespace="http://www.tei-c.org/ns/1.0">
                                                <xsl:value-of select="$value"/>
                                            </xsl:element>
                                        </xsl:non-matching-substring>
                                    </xsl:analyze-string>
                                </xsl:for-each>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:element name="p" namespace="http://www.tei-c.org/ns/1.0">
                                    <xsl:for-each select="./TextLine/String">
                                        <xsl:element name="lb"
                                            namespace="http://www.tei-c.org/ns/1.0"/>
                                            <xsl:value-of select="@CONTENT"/>
                                            <xsl:apply-templates/>
                                    </xsl:for-each>
                                </xsl:element>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:when test="@TAGREFS = 'BT19'">
                        <xsl:for-each select="./TextLine/String">
                        <xsl:element name="fw" namespace="http://www.tei-c.org/ns/1.0">
                            <xsl:attribute name="type">
                                <xsl:text>reclamo</xsl:text>
                            </xsl:attribute>
                                <xsl:value-of select="@CONTENT"/>
                                <xsl:apply-templates/>
                        </xsl:element>
                        </xsl:for-each>
                    </xsl:when>
                    <xsl:when test="@TAGREFS = 'BT21'">
                        <xsl:for-each select="./TextLine/String">
                            <xsl:element name="fw" namespace="http://www.tei-c.org/ns/1.0">
                                <xsl:attribute name="type">
                                    <xsl:text>reclamo</xsl:text>
                                </xsl:attribute>
                                <xsl:value-of select="@CONTENT"/>
                                <xsl:apply-templates/>
                            </xsl:element>
                        </xsl:for-each>
                    </xsl:when>
                    <xsl:when test="@TAGREFS = 'BT25'">
                        <xsl:for-each select="./TextLine/String">
                            <xsl:element name="fw" namespace="http://www.tei-c.org/ns/1.0">
                                <xsl:attribute name="type">
                                    <xsl:text>paginaNum</xsl:text>
                                </xsl:attribute>
                                <xsl:apply-templates/>
                            </xsl:element>
                        </xsl:for-each>
                    </xsl:when>
                    <xsl:when test="@TAGREFS = 'BT29'">
                        <xsl:element name="note" namespace="http://www.tei-c.org/ns/1.0">
                            <xsl:element name="p" namespace="http://www.tei-c.org/ns/1.0">
                                <xsl:for-each select="./TextLine/String">
                                    <xsl:element name="lb" namespace="http://www.tei-c.org/ns/1.0"/>
                                    <xsl:apply-templates/>
                                </xsl:for-each>
                            </xsl:element>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="@TAGREFS = 'BT95'">
                        <xsl:element name="fw" namespace="http://www.tei-c.org/ns/1.0">
                            <xsl:attribute name="type">
                                <xsl:text>impresorNum</xsl:text>
                            </xsl:attribute>
                                <xsl:for-each select="./TextLine/String">
                                    <xsl:apply-templates/>
                                </xsl:for-each>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="@TAGREFS = 'BT97'">
                        <xsl:element name="fw" namespace="http://www.tei-c.org/ns/1.0">
                            <xsl:attribute name="type">
                                <xsl:text>numeroPliego</xsl:text>
                            </xsl:attribute>
                            <xsl:for-each select="./TextLine/String">
                                <xsl:apply-templates/>
                            </xsl:for-each>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="@TAGREFS = 'BT205'">
                        <xsl:element name="lg" namespace="http://www.tei-c.org/ns/1.0">
                            <xsl:for-each select="./TextLine/String">
                                <xsl:element name="l" namespace="http://www.tei-c.org/ns/1.0">
                                    <xsl:value-of select="@CONTENT"/>
                                    <xsl:apply-templates/>
                                </xsl:element>
                            </xsl:for-each>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="@TAGREFS = 'BT206'">
                        <xsl:element name="head" namespace="http://www.tei-c.org/ns/1.0">
                            <xsl:attribute name="type">
                                <xsl:text></xsl:text>
                            </xsl:attribute>
                            <xsl:for-each select="./TextLine/String">
                                <xsl:element name="lb" namespace="http://www.tei-c.org/ns/1.0"/>
                                <xsl:value-of select="@CONTENT"/>
                                <xsl:apply-templates/>
                            </xsl:for-each>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="@ID = 'eSc_dummyblock_'">
                        <xsl:for-each select="./TextLine/String">
                            <xsl:choose>
                                <xsl:when test="@CONTENT[matches(., '^[0-9]+$')]">
                                    <xsl:element name="fw" namespace="http://www.tei-c.org/ns/1.0">
                                        <xsl:attribute name="type">
                                            <xsl:text>paginaNum</xsl:text>
                                        </xsl:attribute>
                                        <xsl:value-of select="./@CONTENT"/>
                                        <xsl:apply-templates/>
                                    </xsl:element>
                                </xsl:when>
                                <xsl:when test="@CONTENT[matches(., 'PARTE|parte')]">
                                    <xsl:element name="head" namespace="http://www.tei-c.org/ns/1.0">
                                        <xsl:attribute name="type">
                                            <xsl:text>titulo_parte</xsl:text>
                                        </xsl:attribute>
                                        <xsl:element name="lb"
                                            namespace="http://www.tei-c.org/ns/1.0"/>
                                        <xsl:value-of select="./@CONTENT"/>
                                        <xsl:apply-templates/>
                                    </xsl:element>
                                </xsl:when>
                                <xsl:when test="@CONTENT[matches(., '^([A-Z]+\s[A-Z]+\s[A-Z]+)')]">
                                    <xsl:element name="head" namespace="http://www.tei-c.org/ns/1.0">
                                        <xsl:attribute name="type">
                                            <xsl:text>titulo</xsl:text>
                                        </xsl:attribute>
                                        <xsl:element name="lb"
                                            namespace="http://www.tei-c.org/ns/1.0"/>
                                        <xsl:value-of select="./@CONTENT"/>
                                        <xsl:apply-templates/>
                                    </xsl:element>
                                </xsl:when>
                                <xsl:when test="@CONTENT[matches(., '(^[\(]?(Nú(ù)?mero))')]">
                                    <xsl:element name="fw" namespace="http://www.tei-c.org/ns/1.0">
                                        <xsl:attribute name="type">
                                            <xsl:text>impresorNum</xsl:text>
                                        </xsl:attribute>
                                        <xsl:value-of select="./@CONTENT"/>
                                        <xsl:apply-templates/>
                                        <xsl:apply-templates/>
                                    </xsl:element>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:for-each select="@CONTENT">
                                        <xsl:element name="lb"
                                            namespace="http://www.tei-c.org/ns/1.0"/>
                                        <xsl:value-of select="."/>
                                        <xsl:apply-templates/>
                                    </xsl:for-each>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                    </xsl:when>
                </xsl:choose>
            </xsl:for-each>
        </xsl:element>
        <xsl:if test="Layout/Page/PrintSpace/TextBlock/TextLine/@TAGREFS = 'LT40'">
            <xsl:element name="trailer" namespace="http://www.tei-c.org/ns/1.0">
                <xsl:for-each select="//String//ancestor::TextLine[@TAGREFS = 'LT40']">
                    <xsl:value-of select="./String/@CONTENT"/>
                    <xsl:apply-templates/>
                </xsl:for-each>
            </xsl:element>
        </xsl:if>
        <xsl:if test="Layout/Page/PrintSpace/TextBlock/@TAGREFS = 'BT28'">
            <xsl:element name="div" namespace="http://www.tei-c.org/ns/1.0">
                <xsl:attribute name="type">
                    <xsl:text>colofon</xsl:text>
                </xsl:attribute>
                <xsl:element name="p" namespace="http://www.tei-c.org/ns/1.0">
                    <xsl:for-each select="//TextLine/String//ancestor::TextBlock[@TAGREFS = 'BT28']">
                        <xsl:element name="lb" namespace="http://www.tei-c.org/ns/1.0"/>
                        <xsl:value-of select="./TextLine/String/@CONTENT"/>
                        <xsl:apply-templates/>
                    </xsl:for-each>
                </xsl:element>
            </xsl:element>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
