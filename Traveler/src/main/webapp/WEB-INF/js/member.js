/**
 * 和Traveler.Utils.js對應使用
 */
//驗證身份證
function chkIdn(){
	var idn=document.getElementById("memberId").value;
	if(idn==""){
		document.getElementById('errMsgIdn').innerHTML='帳號欄不可為空';
	}else  if(checkIDN(idn)){
		document.getElementById('errMsgIdn').innerHTML='';
	}else{
		document.getElementById('errMsgIdn').innerHTML='帳號欄需為真實身份證字號';
	}
}

//驗證性別
function chkGender(){
	var gender=document.getElementById("gender").value;
	if(gender==""){
		document.getElementById('errMsgGender').innerHTML='性別欄不可為空';
	}else{
		document.getElementById('errMsgGender').innerHTML='';
	}
}

//驗證密碼(6～12個字元，需包含數字及英文，勿使用特殊字元或符號)
function chkPwd(){
	var pwd=document.getElementById("password").value;
	if(pwd==""){
		document.getElementById('errMsgPwd').innerHTML='密碼欄不可為空';
	}else if (checkPassword(pwd)){
		document.getElementById('errMsgPwd').innerHTML='';
	}else {
		document.getElementById('errMsgPwd').innerHTML='密碼最少6個字元，需含數字及英文';
		
	}
}
//驗證確認密碼欄(需和密碼欄一致)
function chkChkPwd(){
	var pwd1=document.getElementById("password").value;
	var pwd2=document.getElementById("chkPassword").value;
	if(pwd2==""){
		document.getElementById('errMsgChkPwd').innerHTML='確認密碼欄不可為空';
	}else if(pwd1==pwd2){
		document.getElementById('errMsgChkPwd').innerHTML='';
	}else{
		document.getElementById('errMsgChkPwd').innerHTML='需和密碼欄一致';
	}
}

//驗証email('格式需為eason@nnn.com')
function chkEmail(){
	var mail=document.getElementById("email").value;
	//alert("mail="+mail);
	if(mail==""){
		document.getElementById('errMsgEmail').innerHTML='email欄不可為空';
	}else if(valiEmail(mail)){
		document.getElementById('errMsgEmail').innerHTML='';
	}else{
		document.getElementById('errMsgEmail').innerHTML='格式需為eason@nnn.com';
	}
}

//驗証Date
function chkBirthday(){
	var birthday=document.getElementById("birthday").value;
	if(birthday==""){
		document.getElementById('errMsgBirthday').innerHTML='出年年月日欄不可為空';
	}else if(chkDate(birthday)){
		document.getElementById('errMsgBirthday').innerHTML='';
	}else{
		document.getElementById('errMsgBirthday').innerHTML='日期需為真實存在的日期';
	}
}

//驗證中文姓名
function chkName(value){
	var cName=document.getElementById("chineseLastName").value+document.getElementById("chineseFirstName").value;
	if(value==""){
		document.getElementById('errMsgName').innerHTML='中文姓名欄不可為空';
	}else if (!(cName.match(/[^\u0391-\uFFE5]/g))){//return true
        document.getElementById('errMsgName').innerHTML='';
    } else {//return false
      document.getElementById('errMsgName').innerHTML='中文姓名欄不可有英文';
    }
}

//驗証手機09xx-xxx-xxx
function chkMobile(){
	var mobile=document.getElementById("mobile").value;
	if(mobile==""){
		document.getElementById('errMsgMobile').innerHTML='手機欄位不可為空';
	}else if(valiMobile(mobile)){
		document.getElementById('errMsgMobile').innerHTML='';
	}else{
		document.getElementById('errMsgMobile').innerHTML='格式需為09xx-xxx-xxx';
	}
}