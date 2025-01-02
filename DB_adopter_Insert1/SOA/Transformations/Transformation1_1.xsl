<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/dbReference" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns0="http://xmlns.oracle.com/SOA_Training/DB_adopter_Insert1/Insert_BPELProcess1" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns0 tns mhdr oraext xp20 xref socket dvm oraxsl"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/SOA_Training/DB_adopter_Insert1/dbReference">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/Insert_BPELProcess1.wsdl"/>
            <oracle-xsl-mapper:rootElement name="process" namespace="http://xmlns.oracle.com/SOA_Training/DB_adopter_Insert1/Insert_BPELProcess1"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/dbReference.wsdl"/>
            <oracle-xsl-mapper:rootElement name="EmployeeCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/dbReference"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.4.0(XSLT Build 190828.0353.3300) AT [THU NOV 21 11:36:18 IST 2024].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <tns:EmployeeCollection>
         <xsl:for-each select="/ns0:process/ns0:EmployeeCollection/ns0:employee">
            <tns:Employee>
               <tns:empId>
                  <xsl:value-of select="ns0:emp_Id"/>
               </tns:empId>
               <tns:empName>
                  <xsl:value-of select="ns0:emp_Name"/>
               </tns:empName>
               <tns:empSalary>
                  <xsl:value-of select="ns0:emp_Salary"/>
               </tns:empSalary>
            </tns:Employee>
         </xsl:for-each>
      </tns:EmployeeCollection>
   </xsl:template>
</xsl:stylesheet>
