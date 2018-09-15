<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,300italic,700" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style >
* {
  box-sizing: border-box;
}

html {
  height: 100%;
  background: #eee;
  overflow-y: scroll;
}

body {
  max-width: 60rem;
  height: 100%;
  margin: 0 auto;
  padding: 3rem;
  background: #fff;
  background-attachement: fixed;
  font-family: 'Open Sans';
}

ul {
  margin: 0;
  padding: 0;
  list-style-type: none;
}

a {
  display: block;
  padding: .2rem 0;
  color: #000;
  font-size: .875rem;
  text-decoration: none;
}
a:hover {
  color: #51b5d6;
  text-decoration: underline;
}

h4 {
  margin: .5rem 0 .75rem;
  padding-bottom: .5rem;
  border-bottom: 1px solid #ddd;
  font-size: 1.25rem;
  font-weight: normal;
}

h5 {
  margin: 0;
  margin-bottom: .5rem;
  font-size: .875rem;
}

nav::after {
  content: '';
  display: block;
  clear: both;
}

.menu {
  display: inline-block;
  border-radius: .2rem;
  background: #fff;
  position: relative;
  z-index: 2;
}
.menu:hover {
  box-shadow: 0 0 0.35rem 0 rgba(0, 0, 0, 0.5);
  position: absolute;
}
.menu:hover > li {
  display: block;
}
.menu:hover > li:first-child {
  border-color: transparent;
  border-bottom: none;
  border-radius: .2rem .2rem 0 0;
  background-color: #eee;
  box-shadow: none;
  position: relative;
  z-index: 1;
  color: #444;
  cursor: default;
}
.menu:hover > li:first-child::after {
  content: '\f106';
}
.menu:hover > li:last-child {
  border-radius: 0 0 .2rem .2rem;
}
.menu:hover + .temp::after {
  display: block;
}
.menu > li {
  display: none;
  width: 12rem;
  margin: 0;
  border-right: 1px solid #bbb;
}
.menu > li:first-child {
  display: block;
  padding: .65rem;
  border: 1px solid #bbb;
  border-radius: .20rem;
  background: #fff;
  box-shadow: 0 3px 3px -3px rgba(0, 0, 0, 0.5);
  color: #51b5d6;
  font-weight: bold;
  font-size: .875rem;
  cursor: pointer;
}
.menu > li:first-child::after {
  content: '\f107';
  float: right;
  font: bold 1rem fontAwesome;
}
.menu > li:not(:first-child):hover {
  width: calc(960px - 6rem);
  border-right: none;
}
.menu > li:nth-child(2):hover::before {
  content: '';
  display: block;
  width: 12rem;
  height: 3rem;
  border: 1px solid transparent;
  position: absolute;
  top: 0;
  z-index: 10;
}

li h3 {
  width: 12rem;
  margin: 0;
  padding: .65rem .75rem;
  border: 1px solid transparent;
  border-width: 1px 0;
  background: #fff;
  position: relative;
  z-index: 10;
  font-size: .875rem;
  font-weight: normal;
  cursor: default;
}
li:last-child h3 {
  border-radius: 0 0 .2rem .2rem;
  color: darkred;
}
li:last-child:hover h3 {
  border-bottom-color: transparent;
  border-radius: 0 0 0 .2rem;
}
li:hover h3 {
  width: calc(12rem + 1px);
  border-color: #bbb;
}
li:hover div {
  display: block;
}
li div {
  display: none;
  width: calc(960px - 6rem - 12rem);
  padding: 1rem 1.2rem;
  border-left: 1px solid #bbb;
  border-radius: 0 .2rem .2rem 0;
  background: #fff;
  position: absolute;
  top: 0;
  bottom: 0;
  left: 12rem;
  z-index: 1;
}

.temp {
  display: flex;
  width: 72%;
  border-radius: .2rem;
  float: right;
  font-size: .875rem;
}
.temp::after {
  content: '';
  display: none;
  background: rgba(0, 0, 0, 0.35);
  position: fixed;
  top: 0;
  bottom: 0;
  right: 0;
  left: 0;
}
.temp li {
  padding: .65rem 0;
  flex: 1;
  text-align: center;
  cursor: pointer;
}

main {
  display: flex;
  width: 100%;
  height: 15rem;
  margin-top: 2rem;
  padding: 1rem;
  background: #ccc;
  position: relative;
  z-index: 1;
  clear: both;
}
main p {
  margin: auto;
  color: #555;
  text-transform: uppercase;
  letter-spacing: 1px;
}

@media (max-width: 60rem) {
  .temp {
    width: 67%;
  }
}

</style>
</head>
<body>
<nav>
	<ul class="menu">
		<li>Choose a Category</li>
		<li>
			<h3>Books</h3>
			<div>
				<h4>Books</h4>
				<h5>Language</h5>
				<ul>
					<li><a href="#">English</a></li>
					<li><a href="#">Dutch</a></li>
					<li><a href="#">German</a></li>
					<li><a href="#">French</a></li>
					<li><a href="#">Spanish</a></li>
					<li><a href="#">Turkish</a></li>
					<li><a href="#">Arabic</a></li>
				</ul>
			</div>
		</li>
		<li>
			<h3>Computer & Electronics</h3>
			<div>
				<h4>Smartphones</h4>
			</div>
		</li>
		<li>
			<h3>Toys</h3>
			<div>
				<h4>Brands</h4>
			</div>
		</li>	
		<li>
			<h3>Sport & Leisure</h3>
			<div>
				<h4>Sport</h4>
			</div>
		</li>
		<li>
			<h3>Home & Cooking</h3>
			<div>
				<h4>Cooking</h4>
			</div>
		</li>	
		<li>
			<h3>Garden & DIY</h3>
			<div>
				<h4>Garden</h4>
			</div>
		</li>
		<li>
			<h3>Gifts</h3>
			<div>
				<h4>Gifts</h4>
			</div>
		</li>
		<li>
			<h3>Specials</h3>
			<div>
				<h4>Specials</h4>
			</div>
		</li>	
	</ul>
	<ul class="temp">
		<li><a href="#">Magazine</a></li>
		<li><a href="#">Trends</a></li>
		<li><a href="#">Specials</a></li>
		<li><a href="#">Shop</a></li>
	</ul>
</nav>
<main>
	<p>Banner</p>
</main>
</body>
</html>