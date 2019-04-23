function custom_font(){
	var getTag = document.getElementsByTagName('head')[0];
	var newTag = document.createElement('link');
	newTag.href = 'http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic|Ubuntu:300';
	newTag.type = 'text/css';
	newTag.rel = 'stylesheet';
	getTag.appendChild(newTag);
}
custom_font();