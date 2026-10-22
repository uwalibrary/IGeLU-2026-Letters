<!-- Insert these variables at the start of your <xsl:template> element before the letter content -->

    <!-- OneSearch deeplink URL parts, before and after the MMS ID -->
    <xsl:variable name="PERMALINK_BASE1">https://onesearch.library.uwa.edu.au/nde/login?vid=61UWA_INST:NDE_UWA&amp;lang=en&amp;toState=fulldisplay&amp;toParams=%7B%20%22docid%22%3A%20%22alma</xsl:variable>
    <xsl:variable name="PERMALINK_BASE2">%22%20%7D</xsl:variable>
    <!-- Make the complete URL by adding the MMS ID in between the two parts -->
    <xsl:variable name="PRIMO_DEEPLINK">
        <xsl:value-of select="concat($PERMALINK_BASE1,notification_data/mms_id,$PERMALINK_BASE2)" />
    </xsl:variable>

<!-- Insert the below later on in your <xsl:template> element to use the deeplink you built as part of your letter -->

    If you would like this item held for you, <a target="_blank">
    <xsl:attribute name="href">
        <xsl:value-of select="$PRIMO_DEEPLINK"/>
    </xsl:attribute>place a request on OneSearch</a>.
