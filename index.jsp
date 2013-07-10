<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp" />

<script>
    function clickButton(){
        document.getElementById("aUpload").click();
    };
</script>

<div id="templatemo_welcome_wrapper">
	<div id="templatemo_welcome">
    
		<div id="welcome_image"> <span></span> <img src="images/templatemo_image_01.jpg" alt="image" /> </div> 	
        
        <div id="welcome_text">
        	<h1>New Cloud Documents Website</h1>
            <p>Start uploading your pdf, doc, xls and other documents files. View documents online while collaborating in real-time with other users. CloudMan Docs combines the features of Viewing Spreadsheets with a presentation program incorporating technology designed by Tonic Systems.
            <div class="button_01"><a href="registration.jsp"><span></span>Create Account</a></div> 
            <div class="button_01"><a href="upload.jsp"><span></span>View Files</a></div>
        </div>
    
    </div>
</div>

<div id="templatemo_services_wrapper">
	<div id="templatemo_services">
    	
        <div class="services_box">
        	<h2>Choose File to Upload   </h2>
               
        <form action="uploadFile.jsp" method="post" enctype="multipart/form-data" name="form1" id="form1">
            <p>Browse and upload your data to the Cloud. The Document files could be viewed immediately after upload. Maximum file size 500KB.</p>
            <div class="button_02"><a href="#" onclick="clickButton();">Upload File</a></div>
            <input name="file" type="file" id="aUpload" style="display:none" onchange="this.form.submit();">
        </form>
            <div class="cleaner"></div>
        </div>
        
        <div class="services_box">
        	<h2>Under Maintenance</h2>
           <p>Browse your computer or mobile device for uploading your data to the Cloud. The Document files could be viewed immediately after upload.</p>
             <div class="button_02"><a href="#">Don't Click</a></div>
            
            <div class="cleaner"></div>
        </div>
        
        <div class="services_box services_box_last">
        	<h2>Under Maintenance</h2>
          <p>Browse your computer or mobile device for uploading your data to the Cloud. The Document files could be viewed immediately after upload.</p>
            <div class="button_02"><a href="#">Don't Click</a></div>
            
            <div class="cleaner"></div>
        </div>
        
    </div>
</div>

<div id="templatemo_content_wrapper_outer">
	<div id="templatemo_content_wrapper_inner">
  <div id="templatemo_content_wrapper">
    
    	<div id="templatemo_content">
        
        	<h2 class="our_services">Services</h2>
                <p> Project by <a href="https://www.facebook.com/ankit.shuka10" target="_parent">Priyanshu</a> is provided for user to start uploading your pdf, doc, xls another documents files. view documents online while collaborating in real-time with other users. CloudMan Docs combines the features of Viewing Spreadsheets with a presentation program incorporating technology designed by Tonic Systems.</p>
<ul>
            	<li>This is better than google drive.</li>
                <li>This is better than dropbox.</li>
                <li>This is better than google docs.</li>
                <li>This is better than .....</li>
            </ul>
            
          <div class="cleaner_h20"></div>
            
            <h2 class="about_us">About Our Site</h2>
            <p>
                blah blah blah...blah blah blah...blah blah blah...blah blah blah...blah blah blah...blah blah blah...blah blah blah...blah blah blah...
                blah blah blah...blah blah blah...blah blah blah...blah blah blah...blah blah blah...blah blah blah...blah blah blah...blah blah blah...
            </p>
            
      </div>
        
        
        <div id="templatemo_sidebar"><span class="sidebar_top"></span><span class="sidebar_bottom"></span>
        
        	<h2 class="current_activities">Current Activities</h2>
            
            <div class="activities_box">
                <a href="#">Under Development Stage.</a>
                <p>Trying to fix multiple upload problem. </p>
            </div>
            
            <div class="activities_box">
                <a href="#">Under Development Stage.</a>
                <p>mysql server not working moving to dery database. </p>
            </div>
            
            <div class="activities_box">
                <a href="#">Under Development Stage.</a>
                <p>blah blah blah. </p>
            </div>
            
         </div>
        
        <div class="cleaner"></div>
    
    </div>
    </div>
</div>

<div id="templatemo_footer_wrapper">
    <div id="templatemo_footer">
    
   	Copyright © 2013 <a href="#">Cloudman Docs</a> | <a href="https://www.facebook.com/ankit.shuka10" target="_parent">Priyanshu Chauhan</a> by <a href="#" target="_parent">JSS Docs</a></div>
</div>
