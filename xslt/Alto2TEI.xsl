<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:alto="http://www.loc.gov/standards/alto/ns-v4#"
    xpath-default-namespace="http://www.loc.gov/standards/alto/ns-v4#" version="2.0"
    exclude-result-prefixes="xs">
    <xsl:output encoding="UTF-8" method="xml" indent="yes" omit-xml-declaration="yes"
        xpath-default-namespace="http://www.tei-c.org/release/xml/tei/custom/schema/relaxng/tei_all.rng"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="/">
        <TEI xmlns="http://www.tei-c.org/ns/1.0">
            <xsl:attribute name="xml:id">
                <xsl:value-of
                    select="substring(//alto[1]/Description/sourceImageInformation/fileName, 1, 10)"
                />
            </xsl:attribute>
            <teiHeader>
                <fileDesc>
                    <titleStmt>
                        <title>*À COMPLETER*</title>
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
                                *À COMPLETER*
                                <title type="titulo_breve"/>
                                *À COMPLETER*
                            </titleStmt>
                            <editionStmt>
                                <p/>
                            </editionStmt>
                            <publicationStmt>
                                <publisher/>
                                *À COMPLETER* / [s.n]
                                <pubPlace ref="">
                                       # - Carmona:https://www.geonames.org/2520118/carmona.html 
                                        - Madrid :  https://www.geonames.org/3117735/madrid.html
                                        - Barcelona :https://www.geonames.org/3128760/barcelona.html 
                                        - Reus : https://www.geonames.org/3111933/reus.html 
                                        - Sevilla : https://www.geonames.org/2510911/sevilla.html 
                                        - Pamplona : https://www.geonames.org/3114472/pamplona.html 
                                        - Játiva : https://www.geonames.org/2516345/xativa.html 
                                    </pubPlace>
                                <date cert=""/>
                                *À COMPLETER* /  [s.a]
                            </publicationStmt>
                        </biblFull>
                        <msDesc>
                            <msIdentifier>
                                <country>Suisse</country>
                                <settlement>Genève</settlement>
                                <repository>Bibliothèque Universitaire de Genève <ref
                                        target="https://unige.swisscovery.slsp.ch/permalink/41SLSP_UGE/btt5ev/alma991008229029705502"
                                    /></repository>
                                <idno type="cote"/>
                                <idno type="DOI"/>
                                <altIdentifier>
                                    <idno type="num_impresor"/>
                                    *À COMPLETER*
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
                                            <material>*À COMPLETER*: Pour indiquer la couleur du papier @subtype : verde, amarillo, azul, naranja, rosa</material>
                                        </support>
                                        <extent>
                                            <xsl:element name="measure"
                                                namespace="http://www.tei-c.org/ns/1.0">
                                                <xsl:attribute name="unit">
                                                  <xsl:text>página</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="quantity">
                                                  <xsl:value-of
                                                  select="substring(//alto[last()]/Description/sourceImageInformation/fileName, 12, 1)"
                                                  />
                                                </xsl:attribute>
                                            </xsl:element>
                                            <xsl:value-of
                                                select="substring(//alto[last()]/Description/sourceImageInformation/fileName, 12, 1)"/>
                                            <xsl:text> p.</xsl:text>
                                        </extent>
                                        <condition>Bueno</condition>
                                    </supportDesc>
                                    <layoutDesc>
                                        <p>2 columnas</p>
                                        *À VERIFIER*
                                    </layoutDesc>
                                </objectDesc>
                                <decoDesc>
                                    <xsl:element name="summary"
                                        namespace="http://www.tei-c.org/ns/1.0">
                                        <xsl:attribute name="n">
                                            <xsl:value-of
                                                select="count(//alto/Layout/Page/PrintSpace/TextBlock[@TAGREFS = 'BT224'])"
                                            />
                                        </xsl:attribute>  *À VERIFIER* Uno dos tres cuatro cinco seis grabados
                                        (p.1) </xsl:element>
                                    <xsl:if
                                        test="//alto/Layout/Page/PrintSpace/TextBlock[@TAGREFS = 'BT224']">
                                        <xsl:element name="decoNote"
                                            namespace="http://www.tei-c.org/ns/1.0">
                                            <xsl:attribute name="type">
                                                <xsl:text>lista_grabados</xsl:text>
                                            </xsl:attribute>
                                            <xsl:element name="list">
                                            <xsl:for-each
                                                select="//alto/Layout/Page/PrintSpace/TextBlock[@TAGREFS = 'BT224']">
                                                <xsl:element name="item">
                                                  <xsl:attribute name="corresp">
                                                  <xsl:text>grabado_v_</xsl:text>
                                                  <xsl:value-of
                                                  select="substring(//alto[1]/Description/sourceImageInformation/fileName, 8, 3)"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1"
                                                  count="TextBlock[@TAGREFS = 'BT224']"
                                                  level="multiple"/>
                                                  <xsl:text>.xml</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:text>grabado_v_</xsl:text>
                                                  <xsl:value-of
                                                  select="substring(//alto[1]/Description/sourceImageInformation/fileName, 8, 3)"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1"
                                                  count="TextBlock[@TAGREFS = 'BT224']"
                                                  level="multiple"/>
                                                </xsl:element>
                                            </xsl:for-each>
                                        </xsl:element>
                                        </xsl:element>
                                    </xsl:if>
                                    <xsl:if
                                        test="//alto/Layout/Page/PrintSpace/TextBlock[@TAGREFS = 'BT225']">
                                        <xsl:element name="decoNote"
                                            namespace="http://www.tei-c.org/ns/1.0">
                                            <xsl:attribute name="type">
                                                <xsl:text>lista_ornamentos</xsl:text>
                                            </xsl:attribute>
                                            <xsl:element name="list">
                                            <xsl:for-each
                                                select="//alto/Layout/Page/PrintSpace/TextBlock[@TAGREFS = 'BT225']">
                                                <xsl:element name="item">
                                                  <xsl:attribute name="corresp">
                                                  <xsl:text>ornamento_v_</xsl:text>
                                                  <xsl:value-of
                                                  select="substring(//alto[1]/Description/sourceImageInformation/fileName, 8, 3)"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1"
                                                  count="TextBlock[@TAGREFS = 'BT225']"
                                                  level="multiple"/>
                                                  </xsl:attribute>
                                                  <xsl:text>ornamento_v_</xsl:text>
                                                  <xsl:value-of
                                                  select="substring(//alto[1]/Description/sourceImageInformation/fileName, 8, 3)"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1"
                                                  count="TextBlock[@TAGREFS = 'BT225']"
                                                  level="multiple"/>
                                                </xsl:element>
                                            </xsl:for-each>
                                        </xsl:element>
                                        </xsl:element>
                                    </xsl:if>
                                </decoDesc>
                                <additions> *À COMPLETER* Quand l’adresse de vente a été remplacée par une autre ( papier collé) + plus pour les cachets ? </additions>
                            </physDesc>
                            <history>
                                <origin> <p>*À COMPLETER*:nom de l’imprimeur </p>
                                </origin>
                                <provenance><p>*À COMPLETER*: nom du vendeur ( si plusieurs vendeurs le premier supposé)</p>
                                </provenance>
                                <acquisition><p>*À COMPLETER* autres propriétaires</p><stamp></stamp></acquisition>
                            </history>
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
                        <keywords xml:base="http://datos.bne.es/tema/">
                            <term target="XX4876797.html" type="tipo_texto">Sainetes</term>
                            <term type="tipo_estrofa"/>
                            <term type="verso_prosa">Verso</term>
                            <term type="sagrado_profano">Profano</term>
                        </keywords>
                    </textClass>
                </profileDesc>
                <revisionDesc>
                    <xsl:element name="change">
                        <xsl:attribute name="when">
                            <xsl:value-of select="
                                    format-date(current-date(),
                                    '[Y0001]-[M01]-[D01]')"/>
                        </xsl:attribute>
                        <xsl:attribute name="who">
                            <xsl:text>#PJ</xsl:text>
                        </xsl:attribute>
                        <xsl:text>Création du fichier TEI P5 et encodage du corps du
                        texte</xsl:text>
                    </xsl:element>
                </revisionDesc>
            </teiHeader>
            <sourceDoc xml:id="automaticTranscription">
                <xsl:for-each select="//alto">
                    <xsl:element name="surface" namespace="http://www.tei-c.org/ns/1.0">
                        <xsl:attribute name="xml:id">
                            <xsl:value-of
                                select="substring-before(self::alto/Description/sourceImageInformation/fileName, '.')"
                            />
                        </xsl:attribute>
                        <xsl:attribute name="type">
                            <xsl:text>page</xsl:text>
                        </xsl:attribute>
                        <xsl:attribute name="cert">
                            <xsl:text>silver</xsl:text>
                        </xsl:attribute>
                        <xsl:element name="graphic">
                            <xsl:attribute name="url">
                                <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                <xsl:text>fedora_</xsl:text>
                                <xsl:value-of
                                    select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                <xsl:text>/</xsl:text>
                                <xsl:text>full/full/0/default.</xsl:text>
                                <xsl:value-of
                                    select="substring-after(./Description/sourceImageInformation/fileName, '.')"
                                />
                            </xsl:attribute>
                        </xsl:element>
                        <xsl:for-each select="./Layout/Page/PrintSpace/TextBlock">
                            <xsl:choose>
                                <xsl:when test="@TAGREFS = 'BT234'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="xml:id">
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
                                                select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT234']/@LABEL"
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
                                            <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                            <xsl:text>fedora_</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/default</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT234']/@LABEL"/>
                                        </xsl:attribute>
                                        <xsl:for-each select="./TextLine">
                                            <xsl:element name="zone">
                                                <xsl:attribute name="xml:id">
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
                                                  <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                                  <xsl:text>fedora_</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>/</xsl:text>
<xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/default</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="corresp">
                                                    <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT83']/@LABEL"/>
                                                </xsl:attribute>
                                                <xsl:element name="path">
                                                  <xsl:attribute name="xml:id">
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
                                                  <xsl:attribute name="corresp">
                                                  <xsl:text>HeadingLine</xsl:text>
                                                  </xsl:attribute>
                                                </xsl:element>
                                                <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                </xsl:element>
                                            </xsl:element>
                                        </xsl:for-each>
                                    </xsl:element>
                                </xsl:when>
                                <xsl:when test="@TAGREFS = 'BT226'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="xml:id">
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
                                                select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT226']/@LABEL"
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
                                            <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                            <xsl:text>fedora_</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/default</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT226']/@LABEL"/>
                                        </xsl:attribute>
                                        <xsl:for-each select="./TextLine">
                                            <xsl:choose>
                                                <xsl:when test="./@TAGREFS = 'LT82'">
                                                  <xsl:element name="zone">
                                                  <xsl:attribute name="xml:id">
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
                                                  select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT82']/@LABEL, ':')"
                                                  />
                                                  </xsl:attribute>
                                                  <xsl:attribute name="subtype">
                                                  <xsl:value-of
                                                  select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT82']/@LABEL, ':')"
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
                                                  <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                                  <xsl:text>fedora_</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>/</xsl:text>
<xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/default</xsl:text>
                                                  </xsl:attribute>
                                                      <xsl:attribute name="corresp">
                                                          <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT82']/@LABEL"/>
                                                      </xsl:attribute>
                                                  <xsl:element name="path">
                                                  <xsl:attribute name="xml:id">
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
                                                  <xsl:attribute name="corresp">
                                                  <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT82']/@LABEL"/>
                                                  </xsl:attribute>
                                                  </xsl:element>
                                                  <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                  </xsl:element>
                                                  </xsl:element>
                                                </xsl:when>
                                                <xsl:when test="./@TAGREFS = 'LT81'">
                                                  <xsl:element name="zone">
                                                  <xsl:attribute name="xml:id">
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
                                                  select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT81']/@LABEL, ':')"
                                                  />
                                                  </xsl:attribute>
                                                  <xsl:attribute name="subtype">
                                                  <xsl:value-of
                                                  select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT81']/@LABEL, ':')"
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
                                                  <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                                  <xsl:text>fedora_</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>/</xsl:text>
<xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/default</xsl:text>
                                                  </xsl:attribute>
                                                      <xsl:attribute name="corresp">
                                                          <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT81']/@LABEL"/>
                                                      </xsl:attribute>
                                                  <xsl:element name="path">
                                                  <xsl:attribute name="xml:id">
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
                                                  <xsl:attribute name="corresp">
                                                  <xsl:value-of  select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT81']/@LABEL"/>
                                                  </xsl:attribute>
                                                  </xsl:element>
                                                  <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                  </xsl:element>
                                                  </xsl:element>
                                                </xsl:when>
                                                <xsl:when test="./@TAGREFS = 'LT83'">
                                                  <xsl:element name="zone">
                                                  <xsl:attribute name="xml:id">
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
                                                      select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT83']/@LABEL"
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
                                                  <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                                  <xsl:text>fedora_</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>/</xsl:text>
<xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/default</xsl:text>
                                                  </xsl:attribute>
                                                      <xsl:attribute name="corresp">
                                                          <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT83']/@LABEL"/>
                                                      </xsl:attribute>
                                                  <xsl:element name="path">
                                                  <xsl:attribute name="xml:id">
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
                                                  <xsl:attribute name="corresp">
                                                  <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT83']/@LABEL"/>
                                                  </xsl:attribute>
                                                  </xsl:element>
                                                  <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                  </xsl:element>
                                                  </xsl:element>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                  <xsl:element name="zone">
                                                  <xsl:attribute name="xml:id">
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
                                                  <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                                  <xsl:text>fedora_</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>/</xsl:text>
<xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/default</xsl:text>
                                                  </xsl:attribute>
                                                      <xsl:attribute name="corresp">
                                                          <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT83']/@LABEL"/>
                                                      </xsl:attribute>
                                                  <xsl:element name="path">
                                                  <xsl:attribute name="xml:id">
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
                                                  <xsl:attribute name="corresp"> 
                                                  <xsl:text>DefaultLine</xsl:text>  </xsl:attribute>
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
                                <xsl:when test="@TAGREFS = 'BT225'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="xml:id">
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
                                                select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT225']/@LABEL, ':')"/>

                                        </xsl:attribute>
                                        <xsl:attribute name="subtype">
                                            <xsl:value-of
                                                select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT225']/@LABEL, ':')"
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
                                            <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                            <xsl:text>fedora_</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/default</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT225']/@LABEL"/>
                                        </xsl:attribute>
                                        <xsl:for-each select="./TextLine">
                                            <xsl:choose>
                                                <xsl:when test="./@TAGREFS = 'LT82'">
                                                  <xsl:element name="zone">
                                                  <xsl:attribute name="xml:id">
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
                                                  select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT82']/@LABEL, ':')"
                                                  />
                                                  </xsl:attribute>
                                                  <xsl:attribute name="subtype">
                                                  <xsl:value-of
                                                  select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT82']/@LABEL, ':')"
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
                                                  <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                                  <xsl:text>fedora_</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>/</xsl:text>
<xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/default</xsl:text>
                                                  </xsl:attribute>
                                                      <xsl:attribute name="corresp">
                                                          <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT82']/@LABEL"/>
                                                      </xsl:attribute>
                                                  <xsl:element name="path">
                                                  <xsl:attribute name="xml:id">
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
                                                  <xsl:attribute name="corresp">
                                                  <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT82']/@LABEL"/>
                                                  </xsl:attribute>
                                                  </xsl:element>
                                                  <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                  </xsl:element>
                                                  </xsl:element>
                                                </xsl:when>
                                                <xsl:when test="./@TAGREFS = 'LT81'">
                                                  <xsl:element name="zone">
                                                  <xsl:attribute name="xml:id">
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
                                                  select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT81']/@LABEL, ':')"
                                                  />
                                                  </xsl:attribute>
                                                  <xsl:attribute name="subtype">
                                                  <xsl:value-of
                                                  select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT81']/@LABEL, ':')"
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
                                                  <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                                  <xsl:text>fedora_</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>/</xsl:text>
<xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/default</xsl:text>
                                                  </xsl:attribute>
                                                      <xsl:attribute name="corresp">
                                                          <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT81']/@LABEL"/>
                                                      </xsl:attribute>
                                                  <xsl:element name="path">
                                                  <xsl:attribute name="xml:id">
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
                                                  <xsl:attribute name="corresp">
                                                  <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT81']/@LABEL"/>
                                                  </xsl:attribute>
                                                  </xsl:element>
                                                  <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                  </xsl:element>
                                                  </xsl:element>
                                                </xsl:when>
                                                <xsl:when test="./@TAGREFS = 'LT83'">
                                                  <xsl:element name="zone">
                                                  <xsl:attribute name="xml:id">
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
                                                      select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT83']/@LABEL"
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
                                                  <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                                  <xsl:text>fedora_</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>/</xsl:text>
<xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/default</xsl:text>
                                                  </xsl:attribute>
                                                      <xsl:attribute name="corresp">
                                                          <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT83']/@LABEL"/>
                                                      </xsl:attribute>
                                                  <xsl:element name="path">
                                                  <xsl:attribute name="xml:id">
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
                                                  <xsl:attribute name="corresp">
                                                  <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT83']/@LABEL"/>
                                                  </xsl:attribute>
                                                  </xsl:element>
                                                  <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                  </xsl:element>
                                                  </xsl:element>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                  <xsl:element name="zone">
                                                  <xsl:attribute name="xml:id">
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
                                                  <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                                  <xsl:text>fedora_</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>/</xsl:text>
<xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/default</xsl:text>
                                                  </xsl:attribute>
                                                      <xsl:attribute name="corresp">
                                                          <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT83']/@LABEL"/>
                                                      </xsl:attribute>
                                                  <xsl:element name="path">
                                                  <xsl:attribute name="xml:id">
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
                                                  <xsl:attribute name="corresp"> 
                                                  <xsl:text>DefaultLine</xsl:text> 
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
                                <xsl:when test="@TAGREFS = 'BT230'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="xml:id">
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
                                                select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT230']/@LABEL"
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
                                            <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                            <xsl:text>fedora_</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/default</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT230']/@LABEL"/>
                                        </xsl:attribute>
                                    </xsl:element>
                                </xsl:when>
                                <xsl:when test="@TAGREFS = 'BT224'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="xml:id">
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
                                                select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT224']/@LABEL, ':')"/>

                                        </xsl:attribute>
                                        <xsl:attribute name="subtype">
                                            <xsl:value-of
                                                select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT224']/@LABEL, ':')"
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
                                            <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                            <xsl:text>fedora_</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/default</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT224']/@LABEL"/>
                                        </xsl:attribute>
                                    </xsl:element>
                                </xsl:when>
                                <xsl:when test="@TAGREFS = 'BT233'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="xml:id">
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
                                                select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT233']/@LABEL, ':')"
                                            />
                                        </xsl:attribute>
                                        <xsl:attribute name="subtype">
                                            <xsl:value-of
                                                select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT233']/@LABEL, ':')"
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
                                            <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                            <xsl:text>fedora_</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/default</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT233']/@LABEL"/>
                                        </xsl:attribute>
                                        <xsl:for-each select="./TextLine">
                                            <xsl:element name="zone">
                                                <xsl:attribute name="xml:id">
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
                                                  <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                                  <xsl:text>fedora_</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>/</xsl:text>
<xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/default</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="corresp">
                                                    <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT83']/@LABEL"/>
                                                </xsl:attribute>
                                                <xsl:element name="path">
                                                  <xsl:attribute name="xml:id">
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
                                <xsl:when test="@TAGREFS = 'BT232'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="xml:id">
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
                                                select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT232']/@LABEL, ':')"
                                            />
                                        </xsl:attribute>
                                        <xsl:attribute name="subtype">
                                            <xsl:value-of
                                                select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT232']/@LABEL, ':')"
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
                                            <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                            <xsl:text>fedora_</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/default</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT232']/@LABEL"/>
                                        </xsl:attribute>
                                        <xsl:for-each select="./TextLine">
                                            <xsl:element name="zone">
                                                <xsl:attribute name="xml:id">
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
                                                  <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                                  <xsl:text>fedora_</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>/</xsl:text>
<xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/default</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="corresp">
                                                    <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT83']/@LABEL"/>
                                                </xsl:attribute>
                                                <xsl:element name="path">
                                                  <xsl:attribute name="xml:id">
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
                                <xsl:when test="@TAGREFS = 'BT224'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="xml:id">
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
                                                select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT224']/@LABEL, ':')"/>

                                        </xsl:attribute>
                                        <xsl:attribute name="subtype">
                                            <xsl:value-of
                                                select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT224']/@LABEL, ':')"
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
                                            <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                            <xsl:text>fedora_</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/default</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT224']/@LABEL"/>
                                        </xsl:attribute>
                                    </xsl:element>
                                </xsl:when>
                                <xsl:when test="@TAGREFS = 'BT231'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="xml:id">
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
                                                select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT231']/@LABEL, ':')"/>

                                        </xsl:attribute>
                                        <xsl:attribute name="subtype">
                                            <xsl:value-of
                                                select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT231']/@LABEL, ':')"
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
                                            <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                            <xsl:text>fedora_</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/default</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT231']/@LABEL"/>
                                        </xsl:attribute>
                                        <xsl:for-each select="./TextLine">
                                            <xsl:element name="zone">
                                                <xsl:attribute name="xml:id">
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
                                                  <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                                  <xsl:text>fedora_</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>/</xsl:text>
<xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/default</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="corresp">
                                                    <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT83']/@LABEL"/>
                                                </xsl:attribute>
                                                <xsl:element name="path">
                                                  <xsl:attribute name="xml:id">
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
                                <xsl:when test="@TAGREFS = 'BT228'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="xml:id">
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
                                                select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT228']/@LABEL, ':')"
                                            />
                                        </xsl:attribute>
                                        <xsl:attribute name="subtype">
                                            <xsl:value-of
                                                select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT228']/@LABEL, ':')"
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
                                            <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                            <xsl:text>fedora_</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/default</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT228']/@LABEL"/>
                                        </xsl:attribute>
                                        <xsl:for-each select="./TextLine">
                                            <xsl:element name="zone">
                                                <xsl:attribute name="xml:id">
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
                                                  <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                                  <xsl:text>fedora_</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>/</xsl:text>
<xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/default</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="corresp">
                                                    <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT83']/@LABEL"/>
                                                </xsl:attribute>
                                                <xsl:element name="path">
                                                  <xsl:attribute name="xml:id">
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
                                <xsl:when test="@TAGREFS = 'BT229'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="xml:id">
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
                                                select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT229']/@LABEL, ':')"
                                            />
                                        </xsl:attribute>
                                        <xsl:attribute name="subtype">
                                            <xsl:value-of
                                                select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT229']/@LABEL, ':')"
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
                                            <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                            <xsl:text>fedora_</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/default</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT229']/@LABEL"/>
                                        </xsl:attribute>
                                        <xsl:for-each select="./TextLine">
                                            <xsl:element name="zone">
                                                <xsl:attribute name="xml:id">
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
                                                  <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                                  <xsl:text>fedora_</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>/</xsl:text>
<xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/default</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="corresp">
                                                    <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT83']/@LABEL"/>
                                                </xsl:attribute>
                                                <xsl:element name="path">
                                                  <xsl:attribute name="xml:id">
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
                                <xsl:when test="@TAGREFS = 'BT221'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="xml:id">
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
                                                select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT221']/@LABEL, ':')"/>

                                        </xsl:attribute>
                                        <xsl:attribute name="subtype">
                                            <xsl:value-of
                                                select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT221']/@LABEL, ':')"
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
                                            <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                            <xsl:text>fedora_</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/default</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT221']/@LABEL"/>
                                        </xsl:attribute>
                                        <xsl:for-each select="./TextLine">
                                            <xsl:element name="zone">
                                                <xsl:attribute name="xml:id">
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
                                                  <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                                  <xsl:text>fedora_</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>/</xsl:text>
<xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/default</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="corresp">
                                                    <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT83']/@LABEL"/>
                                                </xsl:attribute>
                                                <xsl:element name="path">
                                                  <xsl:attribute name="xml:id">
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
                                <xsl:when test="@TAGREFS = 'BT222'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="xml:id">
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
                                                select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT222']/@LABEL, ':')"/>

                                        </xsl:attribute>
                                        <xsl:attribute name="subtype">
                                            <xsl:value-of
                                                select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT222']/@LABEL, ':')"
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
                                            <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                            <xsl:text>fedora_</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/default</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT222']/@LABEL"/>
                                        </xsl:attribute>
                                        <xsl:for-each select="./TextLine">
                                            <xsl:element name="zone">
                                                <xsl:attribute name="xml:id">
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
                                                  <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                                  <xsl:text>fedora_</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>/</xsl:text>
<xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/default</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="corresp">
                                                    <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT83']/@LABEL"/>
                                                </xsl:attribute>
                                                <xsl:element name="path">
                                                  <xsl:attribute name="xml:id">
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
                                <xsl:when test="@TAGREFS = 'BT227'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="xml:id">
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
                                                select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT227']/@LABEL, ':')"/>

                                        </xsl:attribute>
                                        <xsl:attribute name="subtype">
                                            <xsl:value-of
                                                select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT227']/@LABEL, ':')"
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
                                            <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                            <xsl:text>fedora_</xsl:text>
                                            <xsl:value-of
                                                select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/default</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT227']/@LABEL"/>
                                        </xsl:attribute>
                                         <xsl:for-each select="./TextLine">
                                            <xsl:choose>
                                                <xsl:when test="./@TAGREFS = 'LT82'">
                                                  <xsl:element name="zone">
                                                  <xsl:attribute name="xml:id">
                                                  <xsl:value-of
                                                      select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
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
                                                  <xsl:value-of select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT82']/@LABEL, ':')"/>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="subtype">
                                                  <xsl:value-of select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT82']/@LABEL, ':')"/>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./Shape/Polygon/@POINTS"/>
                                                  <xsl:analyze-string select="$value" regex="([0-9]+)\s([0-9]+)">
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
                                                  <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                                  <xsl:text>fedora_</xsl:text>
                                                  <xsl:value-of select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>/</xsl:text>
<xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/default</xsl:text>
                                                  </xsl:attribute>
                                                      <xsl:attribute name="corresp">
                                                          <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT82']/@LABEL"/>
                                                      </xsl:attribute>
                                                  <xsl:element name="path">
                                                  <xsl:attribute name="xml:id">
                                                  <xsl:value-of select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of select="ancestor::TextBlock/@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text> 
                                                  <xsl:number format="1_" count="TextBlock" level="multiple"/> 
                                                  <xsl:value-of select="./@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text> 
                                                  <xsl:number format="1_" count="TextLine" level="multiple"/> 
                                                  <xsl:text>1</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./@BASELINE"/>
                                                  <xsl:analyze-string select="$value" regex="([0-9]+)\s([0-9]+)">
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
                                                  <xsl:attribute name="corresp">
                                                  <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT82']/@LABEL"/>
                                                  </xsl:attribute>
                                                  </xsl:element>
                                                  <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                  </xsl:element>
                                                  </xsl:element>
                                                </xsl:when>
                                                <xsl:when test="./@TAGREFS = 'LT81'">
                                                  <xsl:element name="zone">
                                                  <xsl:attribute name="xml:id">
                                                  <xsl:value-of select="substring-before(/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of select="ancestor::TextBlock/@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text> 
                                                  <xsl:number format="1_" count="TextBlock" level="multiple"/> 
                                                  <xsl:value-of select="./@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text> 
                                                  <xsl:number format="1" count="TextLine" level="multiple"/>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="type">
                                                  <xsl:value-of select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT81']/@LABEL, ':')"/>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="subtype">
                                                  <xsl:value-of select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT81']/@LABEL, ':')"/>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./Shape/Polygon/@POINTS"/>
                                                  <xsl:analyze-string select="$value" regex="([0-9]+)\s([0-9]+)">
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
                                                  <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                                  <xsl:text>fedora_</xsl:text>
                                                  <xsl:value-of select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>/</xsl:text>
<xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/default</xsl:text>
                                                  </xsl:attribute>
                                                      <xsl:attribute name="corresp">
                                                          <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT81']/@LABEL"/>
                                                      </xsl:attribute>
                                                  <xsl:element name="path">
                                                  <xsl:attribute name="xml:id">
                                                  <xsl:value-of select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of select="ancestor::TextBlock/@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text> 
                                                  <xsl:number format="1_" count="TextBlock" level="multiple"/> 
                                                  <xsl:value-of select="./@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text> 
                                                  <xsl:number format="1_" count="TextLine" level="multiple"/> 
                                                  <xsl:text>1</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./@BASELINE"/>
                                                  <xsl:analyze-string select="$value" regex="([0-9]+)\s([0-9]+)">
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
                                                  <xsl:attribute name="corresp">
                                                  <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT81']/@LABEL"/>
                                                  </xsl:attribute>
                                                  </xsl:element>
                                                  <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                  </xsl:element>
                                                  </xsl:element>
                                                </xsl:when>
                                                <xsl:when test="./@TAGREFS = 'LT83'">
                                                  <xsl:element name="zone">
                                                  <xsl:attribute name="xml:id">
                                                  <xsl:value-of select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of select="ancestor::TextBlock/@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text> 
                                                  <xsl:number format="1_" count="TextBlock" level="multiple"/> 
                                                  <xsl:value-of select="./@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text> 
                                                  <xsl:number format="1" count="TextLine" level="multiple"/>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="type">
                                                  <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT83']/@LABEL"/>
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
                                                  <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                                  <xsl:text>fedora_</xsl:text>
                                                  <xsl:value-of
                                                  select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>/</xsl:text>
<xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/default</xsl:text>
                                                  </xsl:attribute>
                                                      <xsl:attribute name="corresp">
                                                          <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT83']/@LABEL"/>
                                                      </xsl:attribute>
                                                  <xsl:element name="path">
                                                  <xsl:attribute name="xml:id">
                                                  <xsl:value-of select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of select="ancestor::TextBlock/@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text> 
                                                  <xsl:number format="1_" count="TextBlock" level="multiple"/> 
                                                  <xsl:value-of select="./@TAGREFS"/> 
                                                  <xsl:text>_</xsl:text> 
                                                  <xsl:number format="1_" count="TextLine" level="multiple"/> 
                                                  <xsl:text>1</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./@BASELINE"/>
                                                  <xsl:analyze-string select="$value" regex="([0-9]+)\s([0-9]+)">
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
                                                  <xsl:attribute name="corresp">
                                                  <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT83']/@LABEL"/>
                                                  </xsl:attribute>
                                                  </xsl:element>
                                                  <xsl:element name="line">
                                                  <xsl:value-of select="./String/@CONTENT"/>
                                                  </xsl:element>
                                                  </xsl:element>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                  <xsl:element name="zone">
                                                  <xsl:attribute name="xml:id">
                                                  <xsl:value-of select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of select="ancestor::TextBlock/@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextBlock" level="multiple"/>
                                                  <xsl:value-of select="./@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1" count="TextLine" level="multiple"/>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="type">
                                                  <xsl:text>DefaultLine</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="subtype">
                                                  <xsl:text>none</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./Shape/Polygon/@POINTS"/>
                                                  <xsl:analyze-string select="$value" regex="([0-9]+)\s([0-9]+)">
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
                                                  <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                                  <xsl:text>fedora_</xsl:text>
                                                  <xsl:value-of select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>/</xsl:text>
<xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/default</xsl:text>
                                                  </xsl:attribute>
                                                      <xsl:attribute name="corresp">
                                                          <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT83']/@LABEL"/>
                                                      </xsl:attribute>
                                                  <xsl:element name="path">
                                                  <xsl:attribute name="xml:id">
                                                  <xsl:value-of select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of select="ancestor::TextBlock/@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextBlock" level="multiple"/>
                                                  <xsl:value-of select="./@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextLine" level="multiple"/>
                                                  <xsl:text>1</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./@BASELINE"/>
                                                  <xsl:analyze-string select="$value" regex="([0-9]+)\s([0-9]+)">
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
                                                  <xsl:attribute name="corresp"> 
                                                  <xsl:text>DefaultLine</xsl:text> 
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
                                <xsl:when test="@TAGREFS = 'BT223'">
                                    <xsl:element name="zone">
                                        <xsl:attribute name="xml:id">
                                            <xsl:value-of select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:value-of select="./@TAGREFS"/>
                                            <xsl:text>_</xsl:text>
                                            <xsl:number format="1" count="TextBlock" level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="n">
                                            <xsl:number format="1" count="TextBlock" level="multiple"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="type">
                                            <xsl:value-of select="substring-before(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT223']/@LABEL, ':')"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="subtype">
                                            <xsl:value-of select="substring-after(ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT223']/@LABEL, ':')"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="points">
                                            <xsl:variable name="value" select="./Shape/Polygon/@POINTS"/>
                                            <xsl:analyze-string select="$value" regex="([0-9]+)\s([0-9]+)">
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
                                            <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                            <xsl:text>fedora_</xsl:text>
                                            <xsl:value-of select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="@HPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@VPOS"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@WIDTH"/>
                                            <xsl:text>,</xsl:text>
                                            <xsl:value-of select="@HEIGHT"/>
                                            <xsl:text>/full/0/default</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="corresp">
                                            <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'BT223']/@LABEL"/>
                                        </xsl:attribute>
                                        <xsl:for-each select="./TextLine">
                                            <xsl:element name="zone">
                                                <xsl:attribute name="xml:id">
                                                  <xsl:value-of select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of select="ancestor::TextBlock/@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextBlock" level="multiple"/>
                                                  <xsl:value-of select="./@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1" count="TextLine" level="multiple"/>
                                                </xsl:attribute>
                                                <xsl:attribute name="type">
                                                    <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT84']/@LABEL"/>
                                                </xsl:attribute>
                                                <xsl:attribute name="subtype">
                                                  <xsl:text>none</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./Shape/Polygon/@POINTS"/>
                                                  <xsl:analyze-string select="$value" regex="([0-9]+)\s([0-9]+)">
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
                                                  <xsl:text>https://iiif-dev.unige.ch/iiif/2/</xsl:text>
                                                  <xsl:text>fedora_</xsl:text>
                                                  <xsl:value-of select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>/</xsl:text>
<xsl:value-of select="@HPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@VPOS"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@WIDTH"/>
                                                  <xsl:text>,</xsl:text>
                                                  <xsl:value-of select="@HEIGHT"/>
                                                  <xsl:text>/full/0/default</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="corresp">
                                                    <xsl:value-of select="ancestor-or-self::alto/Tags/OtherTag[@ID = 'LT84']/@LABEL"/>
                                                </xsl:attribute>
                                                <xsl:element name="path">
                                                  <xsl:attribute name="xml:id">
                                                  <xsl:value-of select="substring-before(ancestor-or-self::alto/Description/sourceImageInformation/fileName, '.')"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:value-of select="ancestor::TextBlock/@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextBlock" level="multiple"/>
                                                  <xsl:value-of select="./@TAGREFS"/>
                                                  <xsl:text>_</xsl:text>
                                                  <xsl:number format="1_" count="TextLine" level="multiple"/>
                                                  <xsl:text>1</xsl:text>
                                                  </xsl:attribute>
                                                  <xsl:attribute name="points">
                                                  <xsl:variable name="value" select="./@BASELINE"/>
                                                  <xsl:analyze-string select="$value" regex="([0-9]+)\s([0-9]+)">
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
        <xsl:element name="div" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:element name="pb" namespace="http://www.tei-c.org/ns/1.0">
                <xsl:attribute name="n">
                    <xsl:value-of
                        select="substring-before(substring(Description/sourceImageInformation/fileName, 12), '.')"/>
                    <xsl:apply-templates/>
                </xsl:attribute>
                <xsl:attribute name="source">
                    <xsl:value-of select="Description/sourceImageInformation/fileName"/>
                    <xsl:apply-templates/>
                </xsl:attribute>
                <xsl:attribute name="facs">
                    <xsl:text>fedora_</xsl:text>
                    <xsl:value-of
                        select="substring-before(Description/sourceImageInformation/fileName, '.')"/>
                    <xsl:text>/full/full/0/default.</xsl:text>
                    <xsl:value-of
                        select="substring-after(Description/sourceImageInformation/fileName, '.')"/>
                    <xsl:apply-templates/>
                </xsl:attribute>
            </xsl:element>
            <xsl:for-each select="Layout/Page/PrintSpace/TextBlock">
                <xsl:choose>
                    <xsl:when test="@TAGREFS = 'BT234'">
                        <xsl:element name="head" namespace="http://www.tei-c.org/ns/1.0">
                            <xsl:attribute name="type">
                                <xsl:text/>
                            </xsl:attribute>
                            <xsl:for-each select="./TextLine/String">
                                <xsl:element name="lb" namespace="http://www.tei-c.org/ns/1.0"/>
                                <xsl:value-of select="@CONTENT"/>
                                <xsl:apply-templates/>
                            </xsl:for-each>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="@TAGREFS = 'BT226'">
                        <xsl:choose>
                            <xsl:when
                                test="child::*/child::String[matches(@CONTENT, '([A-Z].{0,7}[.,]) ([A-Z¿¡].*)')]">
                                <xsl:for-each select=".//String">
                                    <xsl:variable name="value"
                                        select="@CONTENT[ancestor::TextBlock[@TAGREFS = 'BT226']]"/>
                                    <xsl:analyze-string select="$value"
                                        regex="^([A-Z].{{0,7}}[.,]) ([A-Z¿¡].*)">
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
                                        select="@CONTENT[ancestor::TextBlock[@TAGREFS = 'BT226']]"/>
                                    <xsl:analyze-string select="$value" regex="([A-Z]{{3,}}(.)?$)">
                                        <xsl:matching-substring>
                                            <xsl:for-each select="regex-group(1)">
                                                <xsl:element name="div"
                                                  namespace="http://www.tei-c.org/ns/1.0">
                                                  <xsl:attribute name="n">
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
                    <xsl:when test="@TAGREFS = 'BT233'">
                        <xsl:for-each select="./TextLine/String">
                            <xsl:element name="fw" namespace="http://www.tei-c.org/ns/1.0">
                                <xsl:attribute name="type">
                                    <xsl:text>reclamo</xsl:text>
                                </xsl:attribute>
                                <xsl:value-of select="./@CONTENT"/>
                                <xsl:apply-templates/>
                            </xsl:element>
                        </xsl:for-each>
                    </xsl:when>
                    <xsl:when test="@TAGREFS = 'BT224'">
                        <xsl:for-each select="./TextLine/String">
                            <xsl:element name="fw" namespace="http://www.tei-c.org/ns/1.0">
                                <xsl:attribute name="type">
                                    <xsl:text>reclamo</xsl:text>
                                </xsl:attribute>
                                <xsl:value-of select="./@CONTENT"/>
                                <xsl:apply-templates/>
                            </xsl:element>
                        </xsl:for-each>
                    </xsl:when>
                    <xsl:when test="@TAGREFS = 'BT231'">
                        <xsl:for-each select="./TextLine/String">
                            <xsl:element name="fw" namespace="http://www.tei-c.org/ns/1.0">
                                <xsl:attribute name="type">
                                    <xsl:text>paginaNum</xsl:text>
                                </xsl:attribute>
                                <xsl:value-of select="./@CONTENT"/>
                                <xsl:apply-templates/>
                            </xsl:element>
                        </xsl:for-each>
                    </xsl:when>
                    <xsl:when test="@TAGREFS = 'BT229'">
                        <xsl:element name="note" namespace="http://www.tei-c.org/ns/1.0">
                            <xsl:element name="p" namespace="http://www.tei-c.org/ns/1.0">
                                <xsl:for-each select="./TextLine/String">
                                    <xsl:element name="lb" namespace="http://www.tei-c.org/ns/1.0"/>
                                    <xsl:value-of select="./@CONTENT"/>
                                    <xsl:apply-templates/>
                                </xsl:for-each>
                            </xsl:element>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="@TAGREFS = 'BT221'">
                        <xsl:element name="fw" namespace="http://www.tei-c.org/ns/1.0">
                            <xsl:attribute name="type">
                                <xsl:text>impresorNum</xsl:text>
                            </xsl:attribute>
                            <xsl:for-each select="./TextLine/String/@CONTENT">
                                <xsl:apply-templates/>
                            </xsl:for-each>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="@TAGREFS = 'BT222'">
                        <xsl:element name="fw" namespace="http://www.tei-c.org/ns/1.0">
                            <xsl:attribute name="type">
                                <xsl:text>numeroPliego</xsl:text>
                            </xsl:attribute>
                            <xsl:for-each select="./TextLine/String">
                                <xsl:apply-templates/>
                            </xsl:for-each>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="@TAGREFS = 'BT227'">
                        <xsl:choose>
                            <xsl:when
                                test="child::*/child::String[matches(@CONTENT, '([A-Z].{0,7}[.,]) ([A-Z¿¡].*)')]">
                                <xsl:for-each select=".//String">
                                    <xsl:variable name="value"
                                        select="@CONTENT[ancestor::TextBlock[@TAGREFS = 'BT227']]"/>
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
                                <xsl:for-each select=".//String">
                                    <xsl:variable name="value"
                                        select="@CONTENT[ancestor::TextBlock[@TAGREFS = 'BT227']]"/>
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
                                <xsl:element name="lg" namespace="http://www.tei-c.org/ns/1.0">
                                    <xsl:for-each select="./TextLine/String">
                                        <xsl:element name="l" namespace="http://www.tei-c.org/ns/1.0">
                                            <xsl:value-of select="@CONTENT"/>
                                            <xsl:apply-templates/>
                                        </xsl:element>
                                    </xsl:for-each>
                                </xsl:element>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:when test="@TAGREFS = 'BT223'">
                        <xsl:element name="head" namespace="http://www.tei-c.org/ns/1.0">
                            <xsl:attribute name="type">
                                <xsl:text>primer_titulo /titulo_parte /subtitulo_parte /estribillo /titulo_cancion / reparto_titulo /titulo_trovo /titulo_estrofa</xsl:text>
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
            <xsl:if test="Layout/Page/PrintSpace/TextBlock/TextLine/@TAGREFS = 'LT82'">
                <xsl:element name="trailer" namespace="http://www.tei-c.org/ns/1.0">
                    <xsl:for-each select="//String//ancestor::TextLine[@TAGREFS = 'LT82']">
                        <xsl:value-of select="./String/@CONTENT"/>
                        <xsl:apply-templates/>
                    </xsl:for-each>
                </xsl:element>
            </xsl:if>
        </xsl:element>
        <xsl:if test="Layout/Page/PrintSpace/TextBlock/@TAGREFS = 'BT228'">
            <xsl:element name="div" namespace="http://www.tei-c.org/ns/1.0">
                <xsl:attribute name="type" namespace="http://www.tei-c.org/ns/1.0">
                    <xsl:text>colofon</xsl:text>
                </xsl:attribute>
                <xsl:element name="p" namespace="http://www.tei-c.org/ns/1.0">
                    <xsl:for-each
                        select="//TextLine/String//ancestor::TextBlock[@TAGREFS = 'BT228']">
                        <xsl:element name="lb" namespace="http://www.tei-c.org/ns/1.0"/>
                        <xsl:value-of select="./TextLine/String/@CONTENT"/>
                        <xsl:apply-templates/>
                    </xsl:for-each>
                </xsl:element>
            </xsl:element>
        </xsl:if>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>
