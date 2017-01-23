<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
  <xsl:output method="xml" indent="yes"/>
  <xsl:template match="/">
    <fo:root>
      <fo:layout-master-set>
        <fo:simple-page-master master-name="A4-portrait"
              page-height="29.7cm" page-width="21.0cm" margin="2cm">
          <fo:region-body margin-top="5em" margin-bottom="5em"/>
          <fo:region-before extent="5em"/>
          <fo:region-after extent="6.2em"/>
        </fo:simple-page-master>
      </fo:layout-master-set>
      <fo:page-sequence master-reference="A4-portrait">
        <fo:static-content flow-name="xsl-region-before">
	  <fo:table table-layout="fixed" border-width="0.1em" border-style="solid" background-color="#eaeaea" width="100%">
	    <fo:table-column column-width="50%"/>
 	    <fo:table-column column-width="50%"/>
	  <fo:table-body>
	    <fo:table-row>
	      <fo:table-cell>
	        <fo:block text-align="right" padding="0.2em" margin="0.2em" font-size="1.1em" font-weight="bold">
		  Núm. Factura: 
		</fo:block>
	      </fo:table-cell>
	      <fo:table-cell>
		<fo:block text-align="right" padding="0.2em" margin="0.2em" font-size="1.1em" font-weight="bold">
		   <xsl:value-of select="invoice/id"/>
		</fo:block>
	      </fo:table-cell>
	    </fo:table-row>
	    <fo:table-row>
	      <fo:table-cell>
	        <fo:block text-align="right" padding="0.2em" margin="0.2em" font-size="1.1em" font-weight="bold">
		  Fecha de emisión:
		</fo:block>
	      </fo:table-cell>
	      <fo:table-cell>
		<fo:block text-align="right" padding="0.2em" margin="0.2em" font-size="1.1em" font-weight="bold">
		  <xsl:value-of select="invoice/date"/>
		</fo:block>
	      </fo:table-cell>
	    </fo:table-row>
	  </fo:table-body>
         </fo:table>
       </fo:static-content>
       <fo:static-content flow-name="xsl-region-after">
	  <fo:table table-layout="fixed" border-width="0.1em" border-style="solid" background-color="#eaeaea" width="100%">
	  <fo:table-header>
	    <fo:table-row border-style="solid">
	      <fo:table-cell>
		<fo:block padding="0.4em" margin="0.2em" font-weight="bold">
		   <xsl:text>Forma de pago: Transferencia bancaria</xsl:text>
		</fo:block>
	      </fo:table-cell>
	    </fo:table-row>
	  </fo:table-header>
	  <fo:table-body>
	    <fo:table-row>
	      <fo:table-cell>
	        <fo:block text-align="center" padding="0.2em" margin="0.2em">
		  número de cuenta: <xsl:value-of select="invoice/seller/info/account"/>
		</fo:block>
	      </fo:table-cell>
	    </fo:table-row>
	  </fo:table-body>
         </fo:table>
        <fo:block text-align="right" padding="0.3em" margin="0.2em" font-size="0.7em">
	  Por favor, indique el número de factura como concepto de la transferencia.
	</fo:block>
       </fo:static-content>
        <fo:flow flow-name="xsl-region-body">
        <fo:table table-layout="fixed" width="100%" margin-top="1em">
	  <fo:table-body>
	    <fo:table-row>
	      <fo:table-cell>
		<fo:block padding="0.2em" margin="0.2em" font-size="1.5em">
		  De: 
		</fo:block>
		<fo:block padding="0.2em" margin="0.2em" font-size="1.3em">
		  <xsl:value-of select="invoice/seller/name"/>
		  <xsl:text> </xsl:text>
	  	  <xsl:value-of select="invoice/seller/first-surname"/>
		  <xsl:text> </xsl:text>
	  	  <xsl:value-of select="invoice/seller/second-surname"/>
		</fo:block>
		<fo:block padding="0.2em" margin="0.2em" border-top-style="groove" border-color="#dadada" font-size="0.9em">
		  <xsl:value-of select="invoice/seller/info/address"/>
		</fo:block>
		<fo:block  padding="0.2em" margin="0.2em" font-size="0.9em">
		  <xsl:value-of select="invoice/seller/info/post-code"/>
		  <xsl:text> </xsl:text>
	 	  <xsl:value-of select="invoice/seller/info/town"/> 
		  <xsl:text> (</xsl:text>
		  <xsl:value-of select="invoice/seller/info/province"/>
		  <xsl:text>)</xsl:text>
		</fo:block>
		<fo:block padding="0.2em" margin="0.2em" border-top-style="groove" border-color="#dadada" font-size="0.9em"> 
		  <xsl:text>NIF </xsl:text> <xsl:value-of select="invoice/seller/nif"/>
		</fo:block>
                <fo:block padding="0.2em" margin="0.2em" font-size="0.9em">
		 <xsl:value-of select="invoice/seller/email"/>
		</fo:block>
		<fo:block padding="0.2em" margin="0.2em" font-size="0.9em">
		 Tel. <xsl:value-of select="invoice/seller/phone"/>
		</fo:block>
	      </fo:table-cell>
	      <fo:table-cell>
		<fo:block padding="0.2em" margin="0.2em" font-size="1.5em">
		  Para: 
		</fo:block>
		<fo:block padding="0.2em" margin="0.2em" font-size="1.3em"><xsl:value-of select="invoice/customer/name"/></fo:block>
		<fo:block padding="0.2em" margin="0.2em" border-top-style="groove" border-color="#dadada" font-size="0.9em">
		  <xsl:value-of select="invoice/customer/info/address"/>
		</fo:block>
		<fo:block padding="0.2em" margin="0.2em" font-size="0.9em">
		  <xsl:value-of select="invoice/customer/info/post-code"/>
		  <xsl:text> </xsl:text>
	 	  <xsl:value-of select="invoice/customer/info/town"/> 
		  <xsl:text> (</xsl:text>
		  <xsl:value-of select="invoice/customer/info/province"/>
		  <xsl:text>)</xsl:text>
		</fo:block>
		<fo:block padding="0.2em" margin="0.2em" border-top-style="groove" border-color="#dadada" font-size="0.9em">
		  <xsl:text>NIF </xsl:text> <xsl:value-of select="invoice/customer/nif"/>
		</fo:block>
		<fo:block padding="0.2em" margin="0.2em" font-size="0.9em">
		 <xsl:value-of select="invoice/customer/email"/>
		</fo:block>
		<fo:block padding="0.2em" margin="0.2em" font-size="0.9em">
		 Tel. <xsl:value-of select="invoice/customer/phone"/>
		</fo:block>
	      </fo:table-cell>
	    </fo:table-row>
	  </fo:table-body>
	</fo:table>
        <fo:table table-layout="fixed" width="100%" margin-top="1em">
	  <fo:table-body>
	    <fo:table-row>
	      <fo:table-cell>
		<fo:block padding="0.4em" margin="0.4em" border-top-style="solid" border-bottom-style="solid" font-size="1.1em">
		   <xsl:text>Concepto: </xsl:text>  <xsl:value-of select="invoice/concept"/>
		</fo:block>
	      </fo:table-cell>
	    </fo:table-row>
	  </fo:table-body>
	</fo:table>
        <fo:table table-layout="fixed" width="100%" margin-top="1em" border-style="solid">
  	    <fo:table-column column-width="50%"/>
 	    <fo:table-column column-width="15%"/>
 	    <fo:table-column column-width="15%"/>
 	    <fo:table-column column-width="20%"/>
	  <fo:table-header>
	    <fo:table-row border-style="solid">
	      <fo:table-cell  display-align="center">
		<fo:block padding="0.4em" margin="0.2em" font-weight="bold">
		   <xsl:text>Descripción</xsl:text>
		</fo:block>
	      </fo:table-cell>
	      <fo:table-cell  display-align="center">
		<fo:block padding="0.4em" margin="0.2em" text-align="right" font-weight="bold">
		   <xsl:text>Horas</xsl:text>
		</fo:block>
	      </fo:table-cell>
	      <fo:table-cell  display-align="center">
		<fo:block padding="0.4em" margin="0.2em" text-align="right" font-weight="bold">
		   <xsl:text>€ / Hora</xsl:text>
		</fo:block>
	      </fo:table-cell>
	      <fo:table-cell  display-align="center">
		<fo:block padding="0.4em" margin="0.2em" text-align="right" font-weight="bold">
		   <xsl:text>Importe bruto</xsl:text>
		</fo:block>
	      </fo:table-cell>
	    </fo:table-row>
	  </fo:table-header>
	  <fo:table-body>
	    <fo:table-row>
	      <fo:table-cell  display-align="center">
		<fo:block padding="0.4em" margin="0.2em">
			<xsl:value-of select="invoice/concept"/>
		</fo:block>
	      </fo:table-cell>
	      <fo:table-cell  display-align="center">
		<fo:block padding="0.4em" margin="0.2em" text-align="right">
			<xsl:value-of select="invoice/hours"/>
		</fo:block>
	      </fo:table-cell>
	      <fo:table-cell display-align="center">
		<fo:block padding="0.4em" margin="0.2em" text-align="right">
			<xsl:value-of select="invoice/priceperhour"/>
		</fo:block>
	      </fo:table-cell>

	      <fo:table-cell display-align="center">
		<fo:block padding="0.4em" margin="0.2em" text-align="right">
			<xsl:variable name="h" select="invoice/hours"/>
			<xsl:variable name="pph" select="invoice/priceperhour"/>
			<xsl:value-of select="$h * $pph"/> €
		</fo:block>
	      </fo:table-cell>
	    </fo:table-row>
	  </fo:table-body>
	</fo:table>
        <fo:table table-layout="fixed" width="100%" float="right" margin-top="2em">
  	    <fo:table-column column-width="50%"/>
 	    <fo:table-column column-width="25%"/>
 	    <fo:table-column column-width="25%"/>
	<fo:table-body>
	  <fo:table-row>
	    <fo:table-cell>
	      <fo:block padding="0.4em" margin="0.2em" text-align="right">
		 <xsl:text> </xsl:text>
	      </fo:block>
	    </fo:table-cell>
	    <fo:table-cell border-top-style="solid" border="0.2em">
	      <fo:block padding="0.2em" margin="0.1em" text-align="right">
		 <xsl:text>Base imponible</xsl:text>
	      </fo:block>
	    </fo:table-cell>
	    <fo:table-cell border-top-style="solid" border="0.2em">
	      <fo:block padding="0.2em" margin="0.1em" text-align="right">
			<xsl:variable name="h" select="invoice/hours"/>
			<xsl:variable name="pph" select="invoice/priceperhour"/>
			<xsl:value-of select="$h * $pph"/> €
	      </fo:block>
	    </fo:table-cell>
	  </fo:table-row>
	  <fo:table-row>
	    <fo:table-cell>
	      <fo:block padding="0.2em" margin="0.1em" text-align="right">
		 <xsl:text> </xsl:text>
	      </fo:block>
	    </fo:table-cell>
	    <fo:table-cell>
	      <fo:block padding="0.2em" margin="0.1em" text-align="right">
		IVA (<xsl:value-of select="invoice/iva"/> %)
	      </fo:block>
	    </fo:table-cell>
	    <fo:table-cell>
	      <fo:block padding="0.2em" margin="0.1em" text-align="right">
		<xsl:variable name="h" select="invoice/hours"/>
		<xsl:variable name="pph" select="invoice/priceperhour"/>
		<xsl:variable name="iva" select="invoice/iva"/>
		<xsl:value-of select='format-number((($h * $pph) * $iva) div 100, "#.00")'/> €
	      </fo:block>
	    </fo:table-cell>
	  </fo:table-row>
	  <fo:table-row>
	    <fo:table-cell>
	      <fo:block padding="0.2em" margin="0.1em" text-align="right">
		 <xsl:text> </xsl:text>
	      </fo:block>
	    </fo:table-cell>
	    <fo:table-cell>
	      <fo:block padding="0.2em" margin="0.1em" text-align="right">
		IRPF (<xsl:value-of select="invoice/irpf"/> %)
	      </fo:block>
	    </fo:table-cell>
	    <fo:table-cell>
	      <fo:block padding="0.2em" margin="0.1em" text-align="right">
		<xsl:variable name="h" select="invoice/hours"/>
		<xsl:variable name="pph" select="invoice/priceperhour"/>
		<xsl:variable name="irpf" select="invoice/irpf"/>
		<xsl:value-of select='format-number(-(($h * $pph) * $irpf) div 100, "#.00")'/> €
	      </fo:block>
	    </fo:table-cell>
	  </fo:table-row>
	  <fo:table-row>
	    <fo:table-cell>
	      <fo:block padding="0.2em" margin="0.1em" text-align="right">
		 <xsl:text> </xsl:text>
	      </fo:block>
	    </fo:table-cell>
	    <fo:table-cell>
	      <fo:block padding="0.2em" margin="0.1em" text-align="right" font-size="1.5em" font-weight="bold">
		 <xsl:text>TOTAL</xsl:text>
	      </fo:block>
	    </fo:table-cell>
	    <fo:table-cell>
	      <fo:block padding="0.2em" margin="0.1em" text-align="right" font-size="1.5em" font-weight="bold">
		<xsl:variable name="h" select="invoice/hours"/>
		<xsl:variable name="pph" select="invoice/priceperhour"/>
		<xsl:variable name="iva" select="invoice/iva"/>
		<xsl:variable name="irpf" select="invoice/irpf"/>
		 <xsl:value-of select='format-number(format-number($h * $pph, "#.00") + format-number((($h * $pph) * $iva) div 100, "#.00") + format-number(-(($h * $pph) * $irpf) div 100, "#.00"), "#.00")'/> €
	      </fo:block>
	    </fo:table-cell>
	  </fo:table-row>
	</fo:table-body>
      </fo:table>
    </fo:flow>
    </fo:page-sequence>
    </fo:root>
  </xsl:template>
</xsl:stylesheet>
