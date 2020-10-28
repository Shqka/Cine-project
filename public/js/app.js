/* _____________  BOUTON RECHERCHER _____________ */

function bascule() 
{   
	if (document.getElementById("search").style.display == "none")
			document.getElementById("search").style.display= "initial"; 
	else	document.getElementById("search").style.display = "none"; 

    if (document.getElementById("search").style.display == "initial") {
        document.getElementById("bouton").style.display = "none";
    }   
} 



/* _____________  BOUTON F.A.Q _____________ */

anime.timeline({loop: true})
  .add({
    targets: '.ml8 .circle-white',
    scale: [0, 3],
    opacity: [1, 0],
    easing: "easeInOutExpo",
    rotateZ: 360,
    duration: 1100
  }).add({
    targets: '.ml8 .circle-container',
    scale: [0, 1],
    duration: 1100,
    easing: "easeInOutExpo",
    offset: '-=1000'
  }).add({
    targets: '.ml8 .circle-dark',
    scale: [0, 1],
    duration: 1100,
    easing: "easeOutExpo",
    offset: '-=600'
  }).add({
    targets: '.ml8 .letters-left',
    scale: [0, 1],
    duration: 1200,
    offset: '-=550'
  }).add({
    targets: '.ml8 .bang',
    scale: [0, 1],
    rotateZ: [45, 15],
    duration: 1200,
    offset: '-=1000'
  }).add({
    targets: '.ml8',
    opacity: 0,
    duration: 1000,
    easing: "easeOutExpo",
    delay: 1400
  });

anime({
  targets: '.ml8 .circle-dark-dashed',
  rotateZ: 360,
  duration: 8000,
  easing: "linear",
  loop: true
});



/* _____________  FILTRE ADMINISTRATION ACTEUR _____________ */

$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#actor_films label").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});



/* _____________  MODAL POP UP YOUTUBE _____________ */

$(document).ready(function () {
    // Set iframe attributes when the show instance method is called
    $("#videoModal").on("show.bs.modal", function (event) {
        let button = $(event.relatedTarget); // Button that triggered the modal
        let url = button.data("video"); // Extract url from data-video attribute
        $(this).find("iframe").attr({
            src: url,
            allow: "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
        });
    });

    // Remove iframe attributes when the modal has finished being hidden from the user
    $("#videoModal").on("hidden.bs.modal", function () {
        $("#videoModal iframe").removeAttr("src allow");
    });
});