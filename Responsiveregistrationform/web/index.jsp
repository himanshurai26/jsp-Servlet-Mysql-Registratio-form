<%-- 
    Document   : index
    Created on : 01-Jun-2023, 12:33:17 am
    Author     : Himanshu Kumar
--%>

<%@page import="com.databaseConnection.connectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <!----======== CSS ======== -->
    <link rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="%PATH%" language="JavaScript"></script>
     
    <!----===== Iconscout CSS ===== -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

   <title>Responsive Regisration Form </title>
</head>
<body>
    
    <% /*
    Connection con = connectionProvider.getConnection();
    out.println(con); 

    */%>  
    <div class="container">
        <header>Registration</header>
        
        <%
            String succmsg = (String)session.getAttribute("succmsg");
            String errormsg = (String)session.getAttribute("errormsg");
            
           if(succmsg != null){%>
           <h4 style="color: #4070f4"><%=succmsg%></h4>
           
           <%
               
               session.removeAttribute("succmsg");
           
            }
          if(errormsg != null){%>
          <h4><%=errormsg%></h4>

          <%
              session.removeAttribute("errormsg");
}

            
            %>
                          
       

        <form action="PersonServlet" method="post">
            <div class="form first">
                <div class="details personal">
                    <span class="title">Personal Details</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>Full Name</label>
                            <input type="text" name="name" placeholder="Enter your name" required>
                        </div>

                        <div class="input-field">
                            <label>Date of Birth</label>
                            <input type="date" name="dob" placeholder="Enter birth date" required>
                        </div>

                        <div class="input-field">
                            <label>Email</label>
                            <input type="text" name="email" placeholder="Enter your email" required>
                        </div>

                        <div class="input-field">
                            <label>Mobile Number</label>
                            <input type="number" name="number" placeholder="Enter mobile number" required>
                        </div>

                        <div class="input-field">
                            <label>Gender</label>
                            <select required name="gender">
                                <option disabled selected>Select gender</option>
                                <option value="male">Male</option>
                                <option value="female">Female</option>
                                <option value="other">Others</option>
                            </select>
                        </div>

                        <div class="input-field">
                            <label>Occupation</label>
                            <input type="text" name="occupation" placeholder="Enter your ccupation" required>
                        </div>
                    </div>
                </div>

                <div class="details ID">
                    <span class="title">Identity Details</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>ID Type</label>
                            <input type="text" name="idtype" placeholder="Enter ID type" required>
                        </div>

                        <div class="input-field">
                            <label>ID Number</label>
                            <input type="number" name="idnumber" placeholder="Enter ID number" required>
                        </div>

                        <div class="input-field">
                            <label>Issued Authority</label>
                            <input type="text" name="issuedby" placeholder="Enter issued authority" required>
                        </div>

                        <div class="input-field">
                            <label>Issued State</label>
                            <input type="text" name="issuedstate" placeholder="Enter issued state" required>
                        </div>

                        <div class="input-field">
                            <label>Issued Date</label>
                            <input type="date" name="issuedate" placeholder="Enter your issued date" required>
                        </div>

                        <div class="input-field">
                            <label>Expiry Date</label>
                            <input type="date" name="expirydate" placeholder="Enter expiry date" required>
                        </div>
                    </div>

                    <button class="nextBtn">
                        <span class="btnText">Next</span>
                        <i class="uil uil-navigator"></i>
                    </button>
                </div> 
            </div>

            <div class="form second">
                <div class="details address">
                    <span class="title">Address Details</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>Address Type</label>
                            <input type="text" name="address" placeholder="Permanent or Temporary" required>
                        </div>

                        <div class="input-field">
                            <label>Nationality</label>
                            <input type="text" name="nationality" placeholder="Enter nationality" required>
                        </div>

                        <div class="input-field">
                            <label>State</label>
                            <input type="text" name="state" placeholder="Enter your state" required>
                        </div>

                        <div class="input-field">
                            <label>District</label>
                            <input type="text" name="distict" placeholder="Enter your district" required>
                        </div>

                        <div class="input-field">
                            <label>Block Number</label>
                            <input type="number" name="block" placeholder="Enter block number" required>
                        </div>

                        <div class="input-field">
                            <label>Ward Number</label>
                            <input type="number" name="ward" placeholder="Enter ward number" required>
                        </div>
                    </div>
                </div>

                <div class="details family">
                    <span class="title">Family Details</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>Father Name</label>
                            <input type="text" name="fname" placeholder="Enter father name" required>
                        </div>
                        
                        <div class="input-field">
                            <label>Father Qualification</label>
                            <select name="fquali" required>
                                <option disabled selected>Select Qualification</option>
                                <option value="matric">Matric</option> 
                                <option value="intermediate">Intermediate</option>
                                <option value="bachlor">Bachlor's</option>
                                <option value="illiterate">Illiterate</option>
                                <option value="mastere">Master's</option>
                                <option value="other">Others</option>
                            </select>
                        </div>

                        <div class="input-field">
                            <label>Mother Name</label>
                            <input type="text" name="mname" placeholder="Enter mother name" required>
                        </div>
                        
                         <div class="input-field">
                            <label>Mother Qualification</label>
                            <select name="mquali" required>
                                <option disabled selected>Select Qualification</option>
                                <option value="matric">Matric</option> 
                                <option value="intermediate">Intermediate</option>
                                <option value="bachlor">Bachlor's</option>
                                <option value="illiterate">Illiterate</option>
                                <option value="mastere">Master's</option>
                                <option value="other">Others</option>
                            </select>
                        </div>

                        <div class="input-field">
                            <label>Sibling Name</label>
                            <input type="text" name="sibling" placeholder="Enter Sibling name" required>
                        </div>

                        <div class="input-field">
                            <label>Guardian Name</label>
                            <input type="text" name="gname" placeholder="Enter Guardian name" required>
                        </div>

                    </div>

                    <div class="buttons">
                        <div class="backBtn">
                            <i class="uil uil-navigator"></i>
                            <span class="btnText">Back</span>
                        </div>
                        
                        <button class="sumbit">
                            <span class="btnText">Submit</span>
                            <i class="uil uil-navigator"></i>
                        </button>
                    </div>
                </div> 
            </div>
        </form>
    </div>

    <script src="script.js"></script>
    
    
    <script>
        
        const form = document.querySelector("form"),
        nextBtn = form.querySelector(".nextBtn"),
        backBtn = form.querySelector(".backBtn"),
        allInput = form.querySelectorAll(".first input");


nextBtn.addEventListener("click", ()=> {
    allInput.forEach(input => {
        if(input.value != ""){
            form.classList.add('secActive');
        }else{
            form.classList.remove('secActive');
        }
    })
})

backBtn.addEventListener("click", () => form.classList.remove('secActive'));


    </script>
</body>
</html>