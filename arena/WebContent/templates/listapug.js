$(".pugs fieldset div").each(function(){
	var x = this.innerHTML;//uma data assim: 2011-01-07T00:00:00-03:00
	x = x.replace(/(\d+)-(\d+)-(\d+)T(.*)/,"$3/$2/$1");
	this.innerHTML=x;
});