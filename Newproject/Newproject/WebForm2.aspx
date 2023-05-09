<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Newproject.WebForm2" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<!--    <link href="style.css" rel="stylesheet" />-->
</head>
<body>
    <form id="form1" runat="server">
        <div>
 <nav class="navbar navbar-expand-lg navbar-light"style="background-color: #e3f2fd;">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><i class="fa-solid fa-house-medical"></i>Dashbored</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">   <i class="fa-solid fa-compact-disc fa-spin" style="--fa-animation-duration: 30s; --fa-animation-iteration-count: 1;"></i>Registration</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">IP Patient</a>
        </li>
               <li class="nav-item">
          <a class="nav-link" href="#">OP Patient</a>
        </li>
            <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="true">
            Dropdown
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><a class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        </div>       
    </div>
     </div>

     <div class="card bg-light text-dark" style="margin-right: 0px">
    <div class="card-body">
                              <div class="row">
                                  <div class="col-md-1">
                                      <label style="color:black" style='font-size:14px'>UHID NO</label>
                                  </div>
                                   <div class="col-md-2">
                                   <asp:DropDownList ID="UHIDDROPDOWN" runat="server" Width="250px" Height="30px" OnSelectedIndexChanged="Consultlist_SelectedIndexChanged"> </asp:DropDownList>                                           

                                   </div>
                                  <br />
                                  <br />
                                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="col-md-2">
                                          <input type="submit" name="Button1" value="Search" id="Button1" class="btn btn-primary" style="font-size:14px" /> 
                                       </div> 
                                  </div>

                                    <div class="col-md-1">
                              <label  style="color:black" style='font-size:14px'>Financial-Year</label>
                         </div>

                          <div class="col-md-2">
                               <asp:TextBox ID="textfinyear" runat="server"      border-radius=60px ></asp:TextBox>
                         </div>                                  
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                        
                              <div class="row">
                                  <div class="col-md-1">
                                       <div class="form-group" style="width:80px">
                                           <label style="color:black" style='font-size:14px'>OP No:</label>
                                             <asp:TextBox ID="textopno" runat="server"      border-radius=60px Width="71px" ></asp:TextBox>
                                           </div>
                                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                      <div class="form-group" style="width:90px">
                                           <div class="form-group">
                                            <label  style="color:black">Sub Name</label>
                                          <asp:DropDownList ID="dropsubname" runat="server" Width="54px" Height="30px" OnSelectedIndexChanged="Consultlist_SelectedIndexChanged"> </asp:DropDownList>      </div>
                                              </div>
                                            </div>


                                 <div class="col-md-2">
                                      <div class="form-group">
                                        <label style="color:black" style='font-size:12px'>Date(yy-mm-dd):</label>
                                        <div class="form-group">
                                              <asp:TextBox ID="Txtdate" runat="server"  border-radius=60px ></asp:TextBox>
                                        </div>                                       
                                    </div>

                                     <div class="form-group">
                                        <label  style="color:black" style='font-size:14px'>Patient Name:</label>
                                        <div class="form-group">                                            
                                        <asp:TextBox ID="TextBox4" runat="server"  border-radius=60px ></asp:TextBox>

                                        </div>
                                    </div>
                                      </div>

                              <div class="col-md-2">
                                      <div class="bootstrap-timepicker">
                                        <div class="form-group">
                                            <label  style="color:black"  style='font-size:14px'>Time:</label>
                                              <asp:TextBox ID="TextBox1" runat="server"  border-radius=60px ></asp:TextBox>
                                        </div>                                        
                                    </div>

                                       <div class="form-group">
                                           <div id="ctl13" td="up1">	
                                            <span id="Label4" class="form-group" style="font-size: 14px; color:black">Father Name:</span>                                               
                                        </div>
                                        <div class="form-group" style="margin-top:7px">
                                               <asp:TextBox ID="TextBox2" runat="server"  border-radius=60px ></asp:TextBox>
                                       </div>
                                    </div>                                
                                  </div>
                                        <div class="col-md-2">
                                       <div class="form-group">
                                        <label  style="color:black"  style='font-size:14px'>Year:</label>
                                               <asp:TextBox ID="TextBox3" runat="server"  border-radius=60px ></asp:TextBox>
                                   </div>                                      
                                    <div class="form-group">                                    
                                        <label style='font-size:14px; color:black' >Marital Status:</label>
                                          <asp:DropDownList ID="DropDownList1" runat="server" Width="54px" Height="30px" OnSelectedIndexChanged="Consultlist_SelectedIndexChanged"> </asp:DropDownList>      </div>
                                         </div>
                                      </div>

                                      <div class="col-md-2">
                                          <div class="form-group">
                                        <label  style="color:black"  style='font-size:14px'>Prepared By:</label>
                                        <div class="form-group">                                            
                                            <input name="txt_preby" type="text" value="sigma" id="txt_preby" class="form-control" style="width:150px;" />
                                        </div>
                                    </div>
                                      <div class="form-group">
                                        <label style='font-size:14px; color:black' >Modified By:</label>
                                        <div class="form-group">
                                            <input name="txt_modifiedby" type="text" id="txt_modifiedby" class="form-control" />
                                        </div>
                                    </div>     
                                 </div>                                
                              </div>
                             

                                
                              <div class="row">
                                  <div class="col-md-2">
                                      <div class="form-group">
                                        <label  style="color:black"  style='font-size:14px'>Mobile No:</label>
                                        <div class="form-group">
                                            <input name="txt_phnum" type="text" maxlength="10" id="txt_phnum" class="form-control" autocomplete="off" />
                                            
                                          </div>
                                    </div>
                                       <div class="form-group">
                                        <label style='font-size:14px; color:black' >Category:</label>
                                       
                                           <select name="dd_category" id="dd_category" class="form-control">
	                                          <option value="Select">Select</option>
	                                          <option value="Accident">Accident</option>
	                                          <option value="Camp">Camp</option>
	                                          <option value="Free">Free</option>
	                                          <option value="Regular">Regular</option>
                                           </select>
                                    </div>
                                 </div>

                                  <div class="col-md-2">
                                      <div class="form-group">
                                        <label  style="color:black" style='font-size:14px'>Address:</label>
                                        <div class="form-group">
                                            
                                            <input name="txt_addres" type="text" id="txt_addres" class="form-control" autocomplete="off" />
                                        </div>
                                    </div>
                                       <div class="form-group">
                                        <label style='font-size:14px ; color:black' >Aadhaar No:</label>
                                        <div class="form-group">
                                            <input name="txt_aadhaarno" type="text" id="txt_aadhaarno" class="form-control" autocomplete="off" />
                                        </div>
                                    </div>
                                      </div>
                                  <div class="col-md-2">
                                      <div class="form-group">
                                        <label style='font-size:14px; color:black' >Date Of Birth:</label>
                                        <div class="form-group">
                                            <div id="ctl19" td="up1">	
                                                    <input name="txt_dob" type="text"  id="txt_dob" class="form-control" autocomplete="off" />                                     
                                                </div>
                                        </div>
                                    </div>
                                       <div class="form-group">
                                        <label  style='font-size:14px; color:black'>Dept Name:</label>
                                           <div id="ctl21" td="up1">	
                                                   <div id="p12">		
                                                       <select name="dd_department" id="dd_department" class="form-control select2">
			                                                       <option selected="selected" value="Select">SelectDepartment</option>
			                                                       <option value="MLC">MLC</option>
                                                                   <option value="RADIOLOGY CHARGES">RADIOLOGY CHARGES</option>
			                                                       <option value="REGISTRATION">REGISTRATION</option>
                                                                   <option value="BED CHARGES">BED CHARGES</option>
			                                                       <option value="RMO CHARGES">RMO CHARGES</option>
                                                                   <option value="BP CHECK CHARGES">BP CHECK CHARGES</option>
			                                                       <option value="URALOGY">URALOGY</option>
                                                           </select>
                                                       </div>
                                               </div>
                                           </div>
                                      </div>

                                  <div class="col-md-2">
                                      <div class="form-group">
                                          <label style='font-size:14px; color:black' >Age:</label>
                                              <asp:TextBox ID="txt_age" runat="server"      border-radius=60px ></asp:TextBox>
                                      </div>

                                  </div>
                                         
                                      <div class="form-group">
                                        <label style='font-size:14px; color:black' >Consultant By:</label>
                                            <asp:DropDownList ID="Consultlist" runat="server" Width="250px" Height="30px" OnSelectedIndexChanged="Consultlist_SelectedIndexChanged"> </asp:DropDownList>                                                     
                                         </div>

                                  <div class="col-md-2">
                                       <div class="form-group">
                                            <span id="Label3" style="font-size:14px; color:black">Type:</span>
                                                <select name="dd_agey" id="dd_agey" class="form-control select2">
	                                             <option selected="selected" value="Years">Years</option>
                                               	 <option value="Months">Months</option>
	                                             <option value="Days">Days</option>
                                                </select>
                                               </div>
                                             </div>

                                    <div class="col-md-2">
                                        <div class="form-group">
                                        <label style='font-size:14px; color:black' >Gender:</label>
                                            <div id="ctl27" td="up1">	
                                                    <div id="Panel1">		
                                                        <select name="dd_gender" id="dd_gender" class="form-control">
			                                              <option value="Select">Select</option>
		                                                  <option value="Male">Male</option>
			                                              <option value="Female">Female</option>
                                                        </select>                      
	                                         </div>                                                
                                        </div>
                                   </div>                              
                                           <div class="form-group">                                                  
                                  </div>                                    
                               </div>

                                   <div class="col-md-2" style="display:none">
                                        <div class="form-group">
                                             <label style='font-size:14px; color:black' >Mother Tongue:</label>
                                        <div class="form-group">
                                            <input name="txtemailid" type="text" id="txtemailid" class="form-control" />
                                        </div>
                                        </div>
                                    </div>                                  
                                  </div>
        
                         <div class="row">
                    <div class="col-md-12">
                        <div class="form-group" style="text-align: center">                    
                              <input type="hidden" name="hfResponse" id="hfResponse" />
                            <input type="submit" name="btn_Save" value="Save" id="btn_Save" class="btn btn-success" style="font-size: 20px" />                           
                            <input type="submit" name="btn_Refresh" value="Refresh" id="btn_Refresh" class="btn btn-primary" style="font-size: 20px" />
                            <input type="submit" name="btn_close" value="Close" id="btn_close" class="btn btn-danger" style="font-size: 20px" />                        
                            
                        </div>
                    </div>
                </div>
            </div>
            </div>
    </form>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" ></script>

</body>
</html>
