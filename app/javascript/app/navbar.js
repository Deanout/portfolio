document.addEventListener("DOMContentLoaded", function(){
	window.addEventListener('scroll', function() {
		// 100 = The point you would like to fade the nav in.
		let navbar = document.getElementById("navbar");
		if (window.scrollY >= 100) {
			navbar.classList.add("navbar-fade");
		} else {
			navbar.classList.remove("navbar-fade");

		};
	});
});