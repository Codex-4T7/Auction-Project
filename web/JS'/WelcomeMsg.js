/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function welcomeMsg() 
    { 
        var val = document.getElementById("id1").value;
        if(window.confirm("Signup Successfully"+val+"! Do you want to Login Click 'OK' "))
        { 
            window.location.href="index.jsp";
        }
    }
