extends Node

#name list from: http://listofrandomnames.com/index.cfm
var list = [
	"Kenny Cristobal",
	"Van Escovedo",
	"Gaylord Faler",
	"Keith Tannehill",
	"Carlo Most",
	"Greg Reno",
	"Tuan Scalia",
	"Eduardo Vasko",
	"Todd Eckel",
	"Rocky Bevilacqua",
	"Marty Webre",
	"Tommie Desantis",
	"Hong Lundquist",
	"Joan Prowell",
	"Brian Morman",
	"Wally Buskey",
	"Agustin Shires",
	"Desmond Mouser",
	"Trenton Harpole",
	"Barney Narron",
	"Gary Mossman",
	"Boyd Dragon",
	"Benjamin Brunner",
	"Hung Deckard",
	"Jack Crutcher",
	"Son Icenhour",
	"Columbus Mcgirt",
	"Scot Burley",
	"Damian Sanabria",
	"Hilario Molyneux",
	"Reinaldo Hursh",
	"Genaro Debnam",
	"Ryan Winfree",
	"Hershel Panos",
	"Lyman Gadberry",
	"Erick Emmanuel",
	"Thomas Sayegh",
	"Faustino Truss",
	"Tristan Campanella",
	"Cletus Mastrangelo",
	"Theodore Dunford",
	"Toney Shafer",
	"Rudolf Costas",
	"Seth Rideout",
	"Mikel Oman",
	"Evan Escoto",
	"Jake Farber",
	"Josef Owusu",
	"Bobbie Pappan",
	"Harry Kravetz",
	"Reba Nord",
	"Glenna Philippe",
	"Glennis Mahmood",
	"Charlotte Sliger",
	"Daine Barrette",
	"Jeanne Cupps",
	"Carmel Nair",
	"Thao Bartow",
	"Nora Godina",
	"Tiffiny Charleston",
	"Kati Crupi",
	"Alison Lockhart",
	"Vinnie Privett",
	"Jerica Fennessey",
	"Jeanene Weakley",
	"Dorotha Borgmeyer",
	"Treena Thomason",
	"Michelle Swain",
	"Mahalia Brocato",
	"Debroah Kazmierczak",
	"Verlene Gant",
	"Luann Steinhauer",
	"Dung Veselka",
	"Nisha Strawser",
	"Nicki Casado",
	"Dianna Holden",
	"Jennefer Delozier",
	"Adrianna Pellegren",
	"Carley Stander",
	"Velma Clardy",
	"Kelsi Heitkamp",
	"Krysta Mauney",
	"Erinn Holdman",
	"Nannie Reese",
	"Deetta Burghardt",
	"Kathey Stutzman",
	"Arianna Vogelsang",
	"Katherine Kriner",
	"Sarah Mcmurry",
	"Susanna Furby",
	"Bonnie Diblasi",
	"Holley Carrara",
	"Sade Paul",
	"Dani Cobian",
	"Bridgette Ziemer",
	"Elayne Baldon",
	"Hilda Carboni",
	"Crysta Emmer",
	"Sirena Galicia",
	"Kizzy Ungar"
]
func _ready():
	randomize()

func get_name():
	randomize()
	var index = randi() % list.size()
	return list[index]
