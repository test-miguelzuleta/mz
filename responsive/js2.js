'article aside footer header nav section time'.replace(/\w+/g,function(n){document.createElement(n)})

var zename = document.getElementById('name-input');
var zeemail = document.getElementById('email-input');
var zedetails = document.getElementById('details-input');

function checkForm(){
	if (zename.value.length < 1 || zeemail.value.length < 1 || zedetails.value.length < 1){
		alert("All fields are requiered.\nIt's only three of them dude! :D");
		return false;
	}
	else{
		alert("Woohoo! Your message was sent.\nI'll get back to you as soon as I can!");
		form.submit();
		return true;
	}
}

var recW = 700;
var recSw = 5;

var skillValues = [
	["bar1", 93],
	["bar2", 75],
	["bar3", 70],
	["bar4", 51],
	["bar5", 86],
	["bar6", 92],
	["bar7", 37],
	["bar8", 100]
];

for(i=0; i<skillValues.length; i++){
	var getDiv = document.getElementById(skillValues[i][0]);
	if(getDiv != null){
		var barCalc = (recW/100)*(skillValues[i][1]/recSw);
		var relativeBars;
		(barCalc % 2 == 0) ? relativeBars = Math.ceil(barCalc) : relativeBars = Math.floor(barCalc);
			for(j=0; j<relativeBars; j++){
				var newSpan = document.createElement("span");
				newSpan.style.width = recSw+"px";
				getDiv.appendChild(newSpan);
			}
		}
	else{
		break;
	}
	
	var mobileSkill = document.createElement('div');
	var mobileNumber = document.createElement('div');
	var getPercentage = document.createTextNode(skillValues[i][1]+'%');
	
	mobileSkill.className = 'mobile-skill';
	mobileSkill.style.width = skillValues[i][1]+'%';
	mobileNumber.className = 'mobile-number';
	
	mobileSkill.appendChild(mobileNumber);
	mobileNumber.appendChild(getPercentage);
	getDiv.appendChild(mobileSkill);
}

var mobileNav = document.getElementById("mobile-nav");
var mobileMenu = document.getElementById("menu");
mobileNav.addEventListener("click", function(){
	if(mobileMenu.style.display === "block"){
		mobileMenu.style.display = "";
	}
	else{
		mobileMenu.style.display = "block";
	}
});

