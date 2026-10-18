<!-- Insert these variables at the start of your <xsl:template> element before the letter content -->

    <!-- This variable defines the first half of the Primo VE deeplink URL, up to the MMS ID -->
    <xsl:variable name="PERMALINK_BASE">https://onesearch.library.uwa.edu.au/discovery/login?vid=61UWA_INST:UWA&#38;targetURL=%2Fpermalink%2F61UWA_INST%2F1iju3hj%2Falma
    </xsl:variable>
    <!-- Add the MMS ID to the end of the OneSearch deeplink URL -->
    <xsl:variable name="PRIMO_DEEPLINK">
        <xsl:value-of select="concat($PERMALINK_BASE,notification_data/mms_id)"/>
    </xsl:variable>

<!-- Insert the below later on in your <xsl:template> element to use the deeplink you built as part of your letter -->

    If you would like this item held for you,<a target="_blank">
    <xsl:attribute name="href">
        <xsl:value-of select="$PRIMO_DEEPLINK"/>
    </xsl:attribute>place a request on OneSearch</a>.