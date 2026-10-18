<!-- Insert a <xsl:if> element into the beginning of your <xsl:template> element. If the notification data passes the test you set, the letter will not send. -->

    <!-- Do not send to a certain email address -->
    <xsl:if test="/notification_data/receivers/receiver/user_email/email='[EMAIL ADDRESS]'">
        <xsl:message terminate="yes"></xsl:message>
    </xsl:if>

    <!-- Do not send to a specific user ID -->
    <xsl:if test="/notification_data/receivers/receiver/user/user_name='[USER NAME]'">
        <xsl:message terminate="yes"></xsl:message>
    </xsl:if>

    <!-- Do not send for PO Line inventory at a specific library -->
    <xsl:if test="/notification_data/poline_inventory/library_name='[LIBRARY NAME]'">
        <xsl:message terminate="yes"></xsl:message>
    </xsl:if>