# recipe-xml-xsl-fop
Recipe XML-XSL-FOP is an example of rendering an invoice with an XSL template and with data from an XML file via FOP.

The invoice PDF is generated from two files, one file containing the template (styles and calculations inline with the data) and another file with the data for the current invoice. 

## Requisites 
*FOP

# Generate the invoice example PDF document
 fop -xml invoice.data.xml -xsl invoice.template.xsl -pdf invoice.example.pdf

