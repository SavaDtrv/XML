<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                              xmlns:x="http://example.com/XMLProject" >
    <xsl:output method="text" indent="yes"/>

    <xsl:template match="/">
        <xsl:text>First name|Surname|Personal NO|Date of birth|Place of birth|Id Number|Residence &#xa;</xsl:text>
        <xsl:for-each select="x:people/x:person">
            <xsl:value-of select="concat(x:first_name, '|', x:surname, '|', x:personal_NO, '|',
            x:date_of_birth, '|', x:place_of_birth, '|', @id_number, '|', x:residence)" />
            <xsl:text>&#xa;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
