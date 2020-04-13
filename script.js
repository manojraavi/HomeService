function vendorvalidateForm() {
	var fn = document.forms["myForm"]["fname"].value;
	if (fn == "" || fn == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('firstname').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('firstname').style.borderColor = "antiquewhite";
	}

	var ln = document.forms["myForm"]["lname"].value;
	if (ln == "" || ln == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('lastname').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('lastname').style.borderColor = "antiquewhite";
	}

	var perage = document.forms["myForm"]["personage"].value;
	if (perage == "" || perage == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById("age").style.borderColor = "red";
		return false;
	} else {
		document.getElementById("age").style.borderColor = "antiquewhite";
	}

	// var gender = document.forms["myForm"]["gender"].value;
	// if (gender == "" || gender == null) {
	// alert("gender must be fill out");
	// document.getElementById("male").style.border= "2px solid red";
	// return false;
	// }
	// else{
	// document.getElementById("male").style.borderColor = "antiquewhite";
	// }

	var ph = document.forms["myForm"]["phone"].value;
	if (ph == "" || ph == null) {
		alert("Name must be filled out");
		document.getElementById('phnum').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('phnum').style.borderColor = "antiquewhite";
	}
	var vendor = document.forms["myForm"]["vid"].value;
	if (vendor == "" || vendor == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('vendorid').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('vendorid').style.borderColor = "antiquewhite";
	}

	var password = document.forms["myForm"]["pass"].value;
	if (password == "" || password == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('myInput').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('myInput').style.borderColor = "antiquewhite";
	}
	var sub = document.getElementById("submit").value;
	if (sub == "Register") {
		alert("your detailes are succussfully submitted!");
		return true;
	}
	
}
function vendorvalidateForm1() {
	var submittype = document.forms["myForm"]["submit"].value;
	if (submittype == "Add Personal Details" || submittype == "Add Details") {
		var fn = document.forms["myForm"]["email1"].value;
		if (fn == "" || fn == null) {
			alert("Please update the highlighted mandatory field(s)");
			document.getElementById('emailid1').style.borderColor = "red";
			return false;
		} else {
			document.getElementById('emailid1').style.borderColor = "antiquewhite";
		}

		var ln = document.forms["myForm"]["address"].value;
		if (ln == "" || ln == null) {
			alert("Please update the highlighted mandatory field(s)");
			document.getElementById('address').style.borderColor = "red";
			return false;
		} else {
			document.getElementById('address').style.borderColor = "antiquewhite";
		}
	}
	var sub = document.getElementById("submit").value;
	if (sub == "Add Details") {
		alert("your details are succussfully Added!");
		return true;
	}
	var sub = document.getElementById("submit").value;
	if (sub == "Update Details") {
		alert("your details are succussfully Updated!");
		return true;
	}
	var sub = document.getElementById("submit").value;
	if (sub == "Add") {
		alert("your details are succussfully Added!");
		return true;
	}
	var sub = document.getElementById("submit").value;
	if (sub == "Update") {
		alert("your details are succussfully Updated!");
		location.reload();
		return false;
	}
	
	
}
function validate1(){
	var sub = document.getElementById("submit").value;
	if (sub == "Update Details") {
		alert("your details are succussfully Updated!");
		return true;
	}
}
function servicevalidate() {
	var telnum = documen.getElemrntById("telnum").value;
	if (telnum == "" || telnum == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('telnum').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('telnum').style.borderColor = "antiquewhite";
	}
	var avltime = document.forms["myForm"]["avltimefrom"].value;
	if (avltime == "" || avltime == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('avltime').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('avltime').style.borderColor = "antiquewhite";
	}
	var avltime = document.forms["myForm"]["avltimeto"].value;
	if (avltime == "" || avltime == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('avltime1').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('avltime1').style.borderColor = "antiquewhite";
	}
	var loc = document.forms["myForm"]["location"].value;
	if (loc == "" || loc == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('location').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('location').style.borderColor = "antiquewhite";
	}
	var st = document.forms["myForm"]["servicetype"].value;
	if (st == "" || st == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('servicetype').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('servicetype').style.borderColor = "antiquewhite";
	}
	var sub = document.getElementById("submit").value;
	if (sub == "Add") {
		alert("your Services are succussfully Added!");
		return true;
	}
	
}
function servicevalidate1() {
	var telnum = document.forms["myForm"]["telnum1"].value;
	if (telnum == "" || telnum == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('telnum').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('telnum').style.borderColor = "antiquewhite";
	}
	var avltime = document.forms["myForm"]["avltimefrom1"].value;
	if (avltime == "" || avltime == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('avltime').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('avltime').style.borderColor = "antiquewhite";
	}
	var avltime = document.forms["myForm"]["avltimeto1"].value;
	if (avltime == "" || avltime == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('avltime1').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('avltime1').style.borderColor = "antiquewhite";
	}
	var loc = document.forms["myForm"]["location1"].value;
	if (loc == "" || loc == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('location').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('location').style.borderColor = "antiquewhite";
	}
	var st = document.forms["myForm"]["servicetype1"].value;
	if (st == "" || st == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('servicetype').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('servicetype').style.borderColor = "antiquewhite";
	}
}

function custadminvalidateForm() {
	var fn = document.forms["myForm"]["fname"].value;
	var count = 0;
	if (fn == "" || fn == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('firstname').style.borderColor = "red";
		count = 1;
		return false;
	} else {
		document.getElementById('firstname').style.borderColor = "antiquewhite";
		count = 0;
	}

	var ln = document.forms["myForm"]["lname"].value;
	if (ln == "" || ln == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('lastname').style.borderColor = "red";
		count = 1;
		return false;
	} else {
		document.getElementById('lastname').style.borderColor = "antiquewhite";
		count = 0;
	}

	var ph = document.forms["myForm"]["phone"].value;
	if (ph == "" || ph == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('phnum').style.borderColor = "red";
		count = 1;
		return false;
	} else {
		document.getElementById('phnum').style.borderColor = "antiquewhite";
		count = 0;
	}

	var email = document.forms["myForm"]["email"].value;
	if (email == "" || email == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('emailid').style.borderColor = "red";
		count = 1;
		return false;
	} else {
		document.getElementById('emailid').style.borderColor = "antiquewhite";
		count = 0;
	}

	var password = document.forms["myForm"]["pass"].value;
	if (password == "" || password == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('myInput').style.borderColor = "red";
		count = 1;
		return false;
	} else {
		document.getElementById('myInput').style.borderColor = "antiquewhite";
		count = 0;
	}
	var sub = document.getElementById("submit").value;
	if (sub == "Register") {
		alert("your detailes are succussfully submitted!");
		return true;
	}
}

function Validate() {
	var password = document.getElementById("myInput").value;
	var confirmPassword = document.getElementById("cnfpass").value;
	if (password != confirmPassword) {
		alert("Passwords do not match.");
		return false;
	}else{
		var sub = document.getElementById("submit").value;
		if (sub == "Register") {
			alert("your details are succussfully Updated!");
			return true;
		}
	}
	// var sub = document.getElementById("submit").value;
	// if(sub=="Register"){
	// alert("your detailes are succussfully submitted!");
	// return true;
	// }
//	return true;
}
function myFunction() {
	var x = document.getElementById("myInput");

	if (x.type === "password") {
		x.type = "text";
	} else {
		x.type = "password"
	}
}
function myFunction1() {
	var x = document.getElementById("cnfpass");

	if (x.type === "password") {
		x.type = "text";
	} else {
		x.type = "password"
	}
}
// function confirm1() {
// var txt;
// if (confirm("your detailes are succussfully submitted!if you want reg another
// click ok! or click cancel to go to home page")) {
// txt = "You pressed OK!";
// } else {
// txt = "You pressed Cancel!";
// }
// return false;
// }

function loginvalidateForm() {
	var fn = document.forms["myForm"]["loginname1"].value;
	if (fn == "" || fn == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('loginname').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('loginname').style.borderColor = "antiquewhite";
	}

	var ln = document.forms["myForm"]["pass1"].value;
	if (ln == "" || ln == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('myInput').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('myInput').style.borderColor = "antiquewhite";
	}

}

// function details() {
// document.getElementById("result1").style.display = none;
// document.getElementById("result2").style.display = "none";
// document.getElementById("result").style.display = "block";
// var email = document.forms["myForm"]["email1"].value;
// if (email == "" || email == null) {
// alert("Please update the highlighted mandatory field(s)");
// document.getElementById('emailid1').style.borderColor = "red";
// return false;
// } else {
// document.getElementById('emailid1').style.borderColor = "antiquewhite";
// }
// var email = document.forms["myForm"]["address"].value;
// if (email == "" || email == null) {
// alert("Please update the highlighted mandatory field(s)");
// document.getElementById('address').style.borderColor = "red";
// return false;
// } else {
// document.getElementById('address').style.borderColor = "antiquewhite";
// }
// }
//	
// return false;
//	
// }

//
// function details1() {
// document.getElementById("result").style.display = "none";
// document.getElementById("result2").style.display = "none";
// document.getElementById("result1").style.display = "block";
//	
// return false;
//	
// }
// function details2() {
// document.getElementById("result").style.display = "none";
// document.getElementById("result1").style.display = "none";
// document.getElementById("result2").style.display = "block";
//	
// return false;
//	
// }

function details() {
	document.getElementById("result1").style.display = "none";
	document.getElementById("result2").style.display = "none";
	document.getElementById("result").style.display = "block";
	return false;
}
function det1(){
	var telnum = document.forms["myForm"]["email1"].value;
	if (telnum == "" || telnum == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('emailid1').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('emailid1').style.borderColor = "antiquewhite";
	}
	var avltime = document.forms["myForm"]["address"].value;
	if (avltime == "" || avltime == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('address').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('address').style.borderColor = "antiquewhite";
	}
	alert("Your Details are successfully add!");
	return  true;
}

function details2() {
	document.getElementById("result").style.display = "none";
	document.getElementById("result2").style.display = "none";
	document.getElementById("result3").style.display = "none";
	document.getElementById("result1").style.display = "block";
	return false;
}
function det() {
	document.getElementById("result").style.display = "none";
	document.getElementById("result1").style.display = "none";
	document.getElementById("result3").style.display = "none";
	document.getElementById("result2").style.display = "block";
	return false;
}
function det2() {
	document.getElementById("result").style.display = "none";
	document.getElementById("result1").style.display = "none";
	document.getElementById("result2").style.display = "none";
	document.getElementById("result3").style.display = "block";
	return false;
}


function changecat() {
    var selectHTML = "";

    var A = ["","General Repair", "Tops Repair", "Flush Tank Repair"];
    var B = ["","Carpet cleaning", "Washroom Cleaning", "Sofa Cleaning", "Kitchen Cleaning"];
    var C = ["","Display Issues", "Power Problems", "Battery Issues", "HardDrive Issues", "Keyboard Issues"];
    var D = ["","Full Service","AC Repair","AC Gas Changing","AC Installation","AC Installation"];
    var E = ["","General Pest Control","Cockroach Control","Bed Bug Control","Termite Control"];

    if (document.getElementById("servicetype").value == "Plumbing") {
        var select = document.getElementById('category').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category").options.length=0;
        	
        }

        for (var i = 0; i < A.length; i++) {
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + A[i] + "'>" + A[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category').add(newSelect);
        }
    }

    else if (document.getElementById("servicetype").value == "Cleaning") {
        var select = document.getElementById('category').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category").options.length=0;
        }

        for (var i = 0; i < B.length; i++) {
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + B[i] + "'>" + B[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category').add(newSelect);
        }
    }

    else if (document.getElementById("servicetype").value == "Laptop") {
        var select = document.getElementById('category').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category").options.length=0;
        }

        for (var i = 0; i < C.length; i++) { 
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + C[i] + "'>" + C[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category').add(newSelect);
        }
    }
    else if (document.getElementById("servicetype").value == "Air Condition") {
        var select = document.getElementById('category').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category").options.length=0;
        }

        for (var i = 0; i < D.length; i++) { 
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + D[i] + "'>" + D[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category').add(newSelect);
        }
    }
    else if (document.getElementById("servicetype").value == "Pest Control") {
        var select = document.getElementById('category').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category").options.length=0;
        }

        for (var i = 0; i < E.length; i++) { 
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + E[i] + "'>" + E[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category').add(newSelect);
        }
    }
}

function changecat1() {
    var selectHTML = "";

    var A = ["","General Repair", "Tops Repair", "Flush Tank Repair"];
    var B = ["","Carpet cleaning", "Washroom Cleaning", "Sofa Cleaning", "Kitchen Cleaning"];
    var C = ["","Display Issues", "Power Problems", "Battery Issues", "HardDrive Issues", "Keyboard Issues"];
    var D = ["","Full Service","AC Repair","AC Gas Changing","AC Installation","AC Installation"];
    var E = ["","General Pest Control","Cockroach Control","Bed Bug Control","Termite Control"];

    if (document.getElementById("servicetype1").value == "Plumbing") {
        var select = document.getElementById('category1').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category1").options.length=0;
        	
        }

        for (var i = 0; i < A.length; i++) {
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + A[i] + "'>" + A[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category1').add(newSelect);
        }
    }

    else if (document.getElementById("servicetype1").value == "Cleaning") {
        var select = document.getElementById('category1').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category1").options.length=0;
        }

        for (var i = 0; i < B.length; i++) {
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + B[i] + "'>" + B[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category1').add(newSelect);
        }
    }

    else if (document.getElementById("servicetype1").value == "Laptop") {
        var select = document.getElementById('category1').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category1").options.length=0;
        }

        for (var i = 0; i < C.length; i++) { 
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + C[i] + "'>" + C[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category1').add(newSelect);
        }
    }
    else if (document.getElementById("servicetype1").value == "Air Condition") {
        var select = document.getElementById('category1').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category1").options.length=0;
        }

        for (var i = 0; i < D.length; i++) { 
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + D[i] + "'>" + D[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category1').add(newSelect);
        }
    }
    else if (document.getElementById("servicetype1").value == "Pest Control") {
        var select = document.getElementById('category1').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category1").options.length=0;
        }

        for (var i = 0; i < E.length; i++) { 
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + E[i] + "'>" + E[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category1').add(newSelect);
        }
    }
}


function changecat2() {
    var selectHTML = "";

    var A = ["","General Repair", "Tops Repair", "Flush Tank Repair"];
    var B = ["","Carpet cleaning", "Washroom Cleaning", "Sofa Cleaning", "Kitchen Cleaning"];
    var C = ["","Display Issues", "Power Problems", "Battery Issues", "HardDrive Issues", "Keyboard Issues"];
    var D = ["","Full Service","AC Repair","AC Gas Changing","AC Installation","AC Installation"];
    var E = ["","General Pest Control","Cockroach Control","Bed Bug Control","Termite Control"];

    if (document.getElementById("servicetype2").value == "Plumbing") {
        var select = document.getElementById('category2').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category2").options.length=0;
        	
        }

        for (var i = 0; i < A.length; i++) {
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + A[i] + "'>" + A[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category2').add(newSelect);
        }
    }

    else if (document.getElementById("servicetype2").value == "Cleaning") {
        var select = document.getElementById('category2').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category2").options.length=0;
        }

        for (var i = 0; i < B.length; i++) {
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + B[i] + "'>" + B[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category2').add(newSelect);
        }
    }

    else if (document.getElementById("servicetype2").value == "Laptop") {
        var select = document.getElementById('category2').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category2").options.length=0;
        }

        for (var i = 0; i < C.length; i++) { 
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + C[i] + "'>" + C[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category2').add(newSelect);
        }
    }
    else if (document.getElementById("servicetype2").value == "Air Condition") {
        var select = document.getElementById('category2').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category2").options.length=0;
        }

        for (var i = 0; i < D.length; i++) { 
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + D[i] + "'>" + D[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category2').add(newSelect);
        }
    }
    else if (document.getElementById("servicetype2").value == "Pest Control") {
        var select = document.getElementById('category2').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category2").options.length=0;
        }

        for (var i = 0; i < E.length; i++) { 
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + E[i] + "'>" + E[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category2').add(newSelect);
        }
    }
}


function hide1() {
	document.getElementById("hide1").style.display = "block";
	document.getElementById("hide2").style.display = "none";
	document.getElementById("hide3").style.display = "none";
	document.getElementById("hide4").style.display = "none";
	return false;
}

function hide2() {
	document.getElementById("hide2").style.display = "block";
	document.getElementById("hide1").style.display = "none";
	document.getElementById("hide3").style.display = "none";
	document.getElementById("hide4").style.display = "none";
	return false;
}

function hide3() {
	document.getElementById("hide3").style.display = "block";
	document.getElementById("hide1").style.display = "none";
	document.getElementById("hide2").style.display = "none";
	document.getElementById("hide4").style.display = "none";
	return false;
}

function hide4() {
	document.getElementById("hide4").style.display = "block";
	document.getElementById("hide1").style.display = "none";
	document.getElementById("hide2").style.display = "none";
	document.getElementById("hide3").style.display = "none";
	
	return false;
}
function accept(){
	alert("Your are successfully accepted the service");
	return true;
}
function complete(){
	alert("Your are successfully completed the service");
	return true;
}
function vendor(){
		alert("Your details are successfully added!");
		return true;
}
function vendor1(){
	
		alert("Your details are successfully Updated!");
		return true;
}
function vendor2(){
	alert("Your Services are successfully Added!")
	return true;
}
function vendor3(){
	alert("Your Services are successfully Deleted!");
	return true;
}
function vendor4(){
	alert("Your Services are successfully Updated!")
}
function admin(){
		alert("Successfully discount given");
		return true;
}
function admin1(){
		alert("Successfully discount taken");
		return true;
}