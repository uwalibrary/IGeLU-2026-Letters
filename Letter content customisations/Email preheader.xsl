<!-- Insert this variable at the start of your <xsl:template> element before the letter content -->

<!-- Email preview line -->
<xsl:variable name="EMAIL_PREHEADER">
    [YOUR TEXT HERE]
</xsl:variable>

<!-- Insert the below in your <xsl:template> element as the first sub-element of <body>, but after any <xsl:attribute> elements for it -->

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