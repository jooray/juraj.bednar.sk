---
title: "PHP using Quercus + Glassfish = working"
date: 2009-01-18 17:50
comments: true
external-url:
categories:
---
It's quite easy.  
  
Download .war file from [Quercus site][1] (I used version 3.2.1).  
  
Go to your glassfish/domains/domain1/lib, do a _jar xvf quercus\*.war_ and keep there all .jar files from WEB-INF subdirectory (you can delete the WEB\_INF and other directories, which were created by extraction, also the .war can be deleted).  
  
After that, create a servlet. A minimal one is a WEB-INF/web.xml like this:  
  
&lt;?xml version="1.0" encoding="UTF-8"?&gt;  
&lt;web-app version="2.5" xmlns="http://java.sun.com/xml/ns/javaee" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://java.sun.com/xml/ns/javaee http://java.sun.com/xml/ns/javaee/web-app\_2\_5.xsd"&gt;  
    &lt;servlet&gt;  
        &lt;servlet-name&gt;Quercus Servlet&lt;/servlet-name&gt;  
        &lt;servlet-class&gt;com.caucho.quercus.servlet.QuercusServlet&lt;/servlet-class&gt;  
        &lt;init-param&gt;  
            &lt;param-name&gt;ini-file&lt;/param-name&gt;  
            &lt;param-value&gt;WEB-INF/php.ini&lt;/param-value&gt;  
        &lt;/init-param&gt;  
        &lt;init&gt;  
  
        &lt;/init&gt;&lt;/servlet&gt;  
    &lt;servlet-mapping&gt;  
        &lt;servlet-name&gt;Quercus Servlet&lt;/servlet-name&gt;  
        &lt;url-pattern&gt;\*.php&lt;/url-pattern&gt;  
    &lt;/servlet-mapping&gt;  
    &lt;session-config&gt;  
        &lt;session-timeout&gt;  
            30  
        &lt;/session-timeout&gt;  
    &lt;/session-config&gt;  
    &lt;welcome-file-list&gt;  
        &lt;welcome-file&gt;index.php&lt;/welcome-file&gt;  
        &lt;/welcome-file-list&gt;  
    &lt;/web-app&gt;  
 You can now have a php.ini in WEB-INF/ subdirectory (which I used for upload\_max\_filesize=10000M).  
  
Then create .php files as you would normally do. Pack everything into a war (I used netbeans to do all this stuff), deploy (for example using glassfish web interface) and there you go.  
  
I was surprised how well it works and how easy it is to setup. The most difficult thing was to find where php.ini file was being found (contrary to everything I googled, it is relative to application directory, but strace to the rescue!).  


  [1]: http://quercus.caucho.com/
