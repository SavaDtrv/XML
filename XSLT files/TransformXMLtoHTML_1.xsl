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
                <h1>
                    <span style="font-weight:normal">Хора проверени от полицията:</span> <br />
                </h1>
                <table border="1">
                    <tr bgcolor = "#9acd32">
                        <th>First name</th>
                        <th>Father's Name</th>
                        <th>Surname</th>
                        <th>Personal NO</th>
                        <th>Sex</th>
                        <th>Eye color</th>
                        <th>Height</th>
                        <th>Date of birth</th>
                        <th>Nationality</th>
                        <th>Place of birth</th>
                        <th>Residence</th>
                        <th>More personal info Phone</th>
                        <th>More personal info Email</th>
                        <th>Close person info Phone</th>
                        <th>Close person info Email</th>
                        <th>Times this person was checked</th>
                        <th>Was he/she checked this month</th>
                        <xsl:if test="x:people/x:person/@isCriminal=true">
                            <th>Criminal acts</th>
                        </xsl:if>
                    </tr>
                    <xsl:for-each select="x:people/x:person">
                        <tr>
                            <td><xsl:value-of select="x:first_name" /></td>

                            <xsl:if test="x:fathers_name">
                                <td><xsl:value-of select="x:fathers_name" /></td>
                            </xsl:if>

                            <td><xsl:value-of select="x:surname" /></td>
                            <td><xsl:value-of select="x:personal_NO" /></td>

                            <xsl:if test="x:sex">
                                <td><xsl:value-of select="x:sex" /></td>
                            </xsl:if>

                            <xsl:if test="x:eyes_color">
                                <td><xsl:value-of select="x:eyes_color" /></td>
                            </xsl:if>

                            <xsl:if test="x:height">
                                <td><xsl:value-of select="x:height" /></td>
                            </xsl:if>

                            <td><xsl:value-of select="x:date_of_birth" /></td>
                            <td><xsl:value-of select="x:nationality" /></td>
                            <td><xsl:value-of select="x:place_of_birth" /></td>
                            <td><xsl:value-of select="x:residence" /></td>


                            <xsl:if test="x:more_person_info">
                                <xsl:if test="x:more_person_info/x:phone">
                                    <td><xsl:value-of select="x:more_person_info/x:phone" /></td>
                                </xsl:if>
                            </xsl:if>

                            <xsl:if test="x:more_person_info">
                                <xsl:if test="x:more_person_info/x:email">
                                    <td><xsl:value-of select="x:more_person_info/x:email" /></td>
                                </xsl:if>
                            </xsl:if>

                            <xsl:if test="x:close_person">
                                <xsl:if test="x:close_person/x:phone">
                                    <td><xsl:value-of select="x:close_person/x:phone" /></td>
                                </xsl:if>
                            </xsl:if>

                            <xsl:if test="x:close_person">
                                <xsl:if test="x:close_person/x:email">
                                    <td><xsl:value-of select="x:close_person/x:email" /></td>
                                </xsl:if>
                            </xsl:if>

                            <td><xsl:value-of select="x:times_checked/x:times" /></td>
                            <td><xsl:value-of select="x:times_checked/x:this_month" /></td>

                            <xsl:if test="x:criminal_acts/@isCriminal=true">
                                <td><xsl:value-of select="x:criminal_acts/x:acts" /></td>
                            </xsl:if>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>