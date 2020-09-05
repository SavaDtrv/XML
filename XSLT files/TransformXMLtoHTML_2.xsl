<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:x="http://example.com/XMLProject">
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="URF-8"/>
                <title>
                    XML проект
                </title>
            </head>
            <body>
                <header>
                    <h2>
                        <span style="font-weight:normal">Хора проверени от полицията:</span> <br />
                    </h2>
                </header>
                <xsl:for-each select="x:people/x:person">
                    <div>
                        <br>
                           <xsl:value-of select="x:first_name" /><br/>
                            ЕГН: <xsl:value-of select="x:personal_NO" /><br/>
                            Номер на лична карта: <xsl:value-of select="@id_number" /><br/>
                            Издадена на: <xsl:value-of select="@id_date_of_issue" /><br/>
                            Изтича на: <xsl:value-of select="@id_expiry" /><br/>
                            Издадена от: <xsl:value-of select="@id_issued_by" /><br/>
                        </br>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>