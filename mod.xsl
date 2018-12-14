<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.company-tab-content">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-company-tab-content" ox-mod="company-tab-content">
        	<xsl:variable name="list" select="data/info-news/i[position() &lt; 4]"/>
        	<xsl:variable name="count" select="count($list)"/>
        	<div class="box" data-on="1">
	            <div class="tabs skin-color">
	            	<xsl:for-each select="$list">
		            	<span style="width:{100 div $count}%;" data-index="{position()}" class="tab skin-bordercolor">
		            		<xsl:value-of select="sort"/>
		            	</span>
		            </xsl:for-each>
	            </div>
	            <div class="bodies">
	            	<xsl:for-each select="$list">
	            		<section class="content">
	            			<h3 class="title"><xsl:value-of select="title"/></h3>
	            			<div class="richtext">
	            				<xsl:value-of select="content" disable-output-escaping="yes"/>
	            			</div>
	            			
	            			
	            		</section>
	            	</xsl:for-each>
	            </div>
	        </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
