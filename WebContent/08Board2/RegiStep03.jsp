<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입완료</title>

<style>
        #submitBtn{
            border-color: black;
            background-color: white;
            float: right;
            width: 100px;
        }
        #submitBtn:hover{
            background-color: #e5e5e5;
        }

        #afBtn{
            border-color: black;
            background-color: white;
            margin-right: 25px;
            width: 100px;
        }
        #afBtn:hover{
            background-color: #e5e5e5;
        }
    </style>

</head>
<body>
	<Script>
            function fnSubmit(){
            	var user_id = document.subForm.user_id;
            	alert(<%=request.getParameter("user_id") %>+"님 가입이 완료되었습니다");
            }
    </Script>
	<form name="subForm" onsubmit="fnSubmit();"action="http://www.ikosmo.co.kr/">
	<table>
            <tr>
                <td>아이디<br/><br/></td>
                <td>
                    <%=request.getParameter("user_id") %>
                    <br/><br/>
                </td>
            </tr>
            <tr>
                <td>비밀번호<br/><br/></td>
                <td>
                    <%=request.getParameter("user_pw") %>
                    <br/><br/>
                </td>
            </tr>
            <tr>
                <td>이메일<br/><br/></td>
                <td>
                    <%=request.getParameter("user_email") %>
                    <br/><br/>
                </td>
            </tr>
            <tr>
                <td>성별<br/><br/></td>
                <td>
                    <%=request.getParameter("user_gender") %>
                    <br/><br/>
                </td>
            </tr>
            <tr>
            <td>
            </td>
                <td>
                    <input type="button" id="afBtn" value="이전">
 
                    <input type="submit" id="submitBtn" value="확인">
                </td>
            </tr>
     </table>
     </form>
</body>
</html>