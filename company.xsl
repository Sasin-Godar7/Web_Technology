<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Company</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        background-color: #f4f4f4;
                    
                    }
                    h1 {
                        color: #333;
                    }
                    table {
                        width: 80%;
                        margin: 20px auto;
                        border-collapse: collapse;
                        background-color: #fff;
                        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
                    }
                    th, td {
                        border: 1px solid #ddd;
                        padding: 10px;
                        text-align: left;
                    }
                    th {
                        background-color: #007BFF;
                        color: white;
                    }
                    tr:nth-child(even) {
                        background-color: #f2f2f2;
                    }
                    tr:hover {
                        background-color: #ddd;
                    }
                </style>
</head>
            <body>
                <h1>Company Employee List</h1>
                <table>
                    <tr>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Salary</th>
                        <th>Phone</th>
                        <th>Email</th>
                    </tr>
                    <xsl:for-each select="company/employee">
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="age"/></td>
                            <td><xsl:value-of select="salary"/></td>
                            <td><xsl:value-of select="phone"/></td>
                            <td><xsl:value-of select="email"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>