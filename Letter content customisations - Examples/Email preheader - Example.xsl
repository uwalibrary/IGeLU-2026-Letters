<xsl:template match="/">

    ...

    <!-- Email preview line -->
    <xsl:variable name="EMAIL_PREHEADER">
                We've just received a resource you recommended to us.
    </xsl:variable>

    ...

    <body>
        <xsl:attribute name="style">
            <xsl:call-template name="bodyStyleCss" /> <!-- style.xsl -->
        </xsl:attribute>

        <!-- Message preview line - doesn't display in email -->
        <table style="font-size: 0px; line-height: 0px; mso-line-height-rule: exactly; display:none; max-width: 0px; max-height: 0px; opacity: 0; overflow: hidden; mso-hide: all;">
            <tr>
                <td>
                    <xsl:value-of select="$EMAIL_PREHEADER" />
                </td>
                <td>&#160;</td>
                <td>&#160;</td>
            </tr>
        </table>

        <xsl:call-template name="head" /> <!-- header.xsl -->
        <xsl:call-template name="senderReceiver" /> <!-- SenderReceiver.xsl -->
    
    ...