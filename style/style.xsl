<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/studentList">
        <html>
            <body>
                <h1>My Student List</h1>
                <table border="1">
                    <thead bgColor="lightgreen">
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Email</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="student">
                            <tr>
                                <td>
                                    <!-- self closing tag -->
                                    <xsl:value-of select="id" />
                                </td>
                                <td>
                                    <xsl:value-of select="name" />
                                </td>
                                <td>
                                    <xsl:value-of select="email" />
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>

            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>