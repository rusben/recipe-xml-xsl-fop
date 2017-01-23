# recipe-xml-xsl-fop
Recipe XML-XSL-FOP is an example of generating an invoice template.

The template is generated with two files, one containing the template (styles and calculations inline with the data) and another file with the data for the current invoice. 

## Requisites 
*FOP

# Generate the invoice example PDF document
 fop -xml invoice.data.xml -xsl invoice.template.xsl -pdf invoice.example.pdf

