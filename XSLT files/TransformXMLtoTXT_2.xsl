<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:x="http://example.com/XMLProject" >
    <xsl:output method="text"/>

    <xsl:param name="personal_NO" /> <!-- 8506036533 0006036533 -->

    <xsl:template match="/">
         <xsl:for-each select="x:people/x:person">
            <xsl:if test="x:personal_NO=$personal_NO">
                <xsl:choose>
                    <xsl:when test="x:times_checked/x:this_month=true">
                        <xsl:variable name="this_month" select="'през този месец '"/>
                        <xsl:choose>
                            <xsl:when test="x:criminal_acts/@isCriminal=false">
                                <xsl:variable name="criminal_acts" select="'и няма криминални прояви.'"/>
                                <xsl:value-of select="concat(x:first_name, ' ', x:surname, ' с номер на лична карта', ' ', @id_number, ' е проверяван ', x:times_checked/x:times,
                                ' пъти ', $this_month, $criminal_acts)" />
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:variable name="criminal_acts" select="'и има криминални прояви. Които са: '"/>

                                <xsl:value-of select="concat(x:first_name, ' ', x:surname, ' с номер на лична карта', ' ', @id_number, ' е проверяван ', x:times_checked/x:times,
                                ' пъти ', $this_month, $criminal_acts, x:criminal_acts/x:acts)" />

                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:variable name="this_month" select="'през миналия месец '"/>
                        <xsl:choose>
                            <xsl:when test="x:criminal_acts/@isCriminal=false">
                                <xsl:variable name="criminal_acts" select="'и няма криминални прояви.'"/>

                                <xsl:value-of select="concat(x:first_name, ' ', x:surname, ' с номер на лична карта', ' ', @id_number, ' е проверяван ', x:times_checked/x:times,
                                ' пъти ', $this_month, $criminal_acts)" />
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:variable name="criminal_acts" select="'и има криминални прояви. Които са: '"/>

                                <xsl:value-of select="concat(x:first_name, ' ', x:surname, ' с номер на лична карта', ' ', @id_number, ' е проверяван ', x:times_checked/x:times,
                                ' пъти ', $this_month, $criminal_acts, x:criminal_acts/x:acts)" />
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
