USE [LBTRIMPORT]

SET ANSI_NULLS ON
GO 

SET QUOTED_IDENTIFIER ON
GO

INSERT INTO LBTRIMP (Numero_Referencia, Cuenta, Numero_extracto, Fecha_extracto,Fecha_transaccion,Importe,Referencia_cliente,Referencia_bancaria)
SELECT
   MY_XML.row.query('Numero_Referencia').value('.', 'int'),
   MY_XML.row.query('Cuenta').value('.', 'int'),
   MY_XML.row.query('Numero_extracto').value('.', 'int'),
   MY_XML.row.query('Fecha_extracto').value('.', 'DATE'),
   MY_XML.row.query('Fecha_transaccion').value('.', 'DATE'),
   MY_XML.row.query('Importe').value('.', 'int'),
   MY_XML.row.query('Referencia_cliente').value('.', 'NVARCHAR(50)'),
   MY_XML.row.query('Referencia_bancaria').value('.', 'NVARCHAR(50)')

FROM (SELECT CAST(MY_XML AS xml)
      FROM OPENROWSET(BULK 'C:\Users\Juan\Desktop\IntegracionOpen\XML\RESPUESTA.xml', SINGLE_BLOB) AS T(MY_XML)) AS T(MY_XML)
      CROSS APPLY MY_XML.nodes('root/LBTR') AS MY_XML (row);