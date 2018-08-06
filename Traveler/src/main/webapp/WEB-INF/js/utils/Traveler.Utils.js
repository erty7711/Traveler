/**
 * 這裡給大家放共用的js
 */
//回上頁
function goBack() {
    window.history.back();
}

//驗證身份證
function checkIDN( id ) {
	  tab = "ABCDEFGHJKLMNPQRSTUVXYWZIO"                     
	  A1 = new Array (1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3 );
	  A2 = new Array (0,1,2,3,4,5,6,7,8,9,0,1,2,3,4,5,6,7,8,9,0,1,2,3,4,5 );
	  Mx = new Array (9,8,7,6,5,4,3,2,1,1);

	  if ( id.length != 10 ) return false;
	  i = tab.indexOf( id.charAt(0) );
	  if ( i == -1 ) return false;
	  sum = A1[i] + A2[i]*9;

	  for ( i=1; i<10; i++ ) {
	    v = parseInt( id.charAt(i) );
	    if ( isNaN(v) ) return false;
	    sum = sum + v * Mx[i];
	  }
	  if ( sum % 10 != 0 ) return false;
	  return true;
}

//驗證密碼(6～12個字元，需包含數字及英文，勿使用特殊字元或符號)
function checkPassword(pwd) {
	return pwd == '' ? false : /(?=^.{6,12}$)(?=.*[a-zA-Z])(?=.*[0-9])(?!.*\s).*$/.test(pwd);
}

//驗証email 
function valiEmail(mail) {
    return mail == '' ? false : !(!/^[^\s]+@[^\s]+\.[^\s]{2,3}$/.test(mail));
}

//驗証Date
function chkDate(birthday) {
    try {
        var D, d = birthday.split(/\D+/);
        d[0] *= 1;
        d[1] -= 1;
        d[2] *= 1;
        D = new Date(d[0], d[1], d[2]);
        return (D.getFullYear() == d[0] && D.getMonth() == d[1] && D.getDate() == d[2]) ? true : false;
    }
    catch (er) {
        return false;
    }
}

//驗証手機09xx-xxx-xxx
function valiMobile(mobile) {
    var patrn=/^[+]{0,1}(\d){1,3}[ ]?([-]?((\d)|[ ]){1,12})+$/;
    if (!patrn.exec(mobile)) {
        return false;
    }
    return true;
}