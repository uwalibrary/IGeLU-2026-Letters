<!-- Insert this variable at the start of your <xsl:template> element before the letter content -->

<!-- Determine if electronic or physical resource -->
<xsl:variable name="MATERIAL_TYPE">
    <xsl:choose>
        <xsl:when test="contains(notification_data/message, 'Item was received')">PHYSICAL</xsl:when>
        <xsl:when test="contains(notification_data/message, 'E-resource was activated')">ELECTRONIC</xsl:when>
        <xsl:otherwise>UNKNOWN</xsl:otherwise>
    </xsl:choose>
</xsl:variable>


<!-- Use <xsl:choose>, <xsl:when> and <xsl:otherwise> in your <xsl:template> element to say or not say something depending on the resource type -->

<xsl:choose>
    <xsl:when test="$MATERIAL_TYPE='ELECTRONIC'">
        <!-- No extra info if it's an electronic resource -->
    </xsl:when>
    <xsl:otherwise>
        <tr>
            <td style="padding: 4px;">
                If you would like this item held for you, <a target="_blank">
                <xsl:attribute name="href">
                    <xsl:value-of select="$ONESEARCH_DEEPLINK" />
                </xsl:attribute>place a request on OneSearch</a>.
            </td>
        </tr>
    </xsl:otherwise>
</xsl:choose>