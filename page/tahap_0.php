<!DOCTYPE html>
<HTML lang='en'>
<head>
<style type='text/css'>
html {height: 100vh;background:#eee;}
body {color: #000;font-size: 11px;margin:0;word-break:break-word;padding:0;text-align:left;vertical-align:baseline;}
.atas {position:relative;margin:0;width:10%;height:10px;text-align:center;}
.atas h1 {text-transform:uppercase;line-height:100px;font-size:2em;font-family:Arial, Trebuchet MS;}
.hentry {position: relative;text-align: center;margin: 40px 0 0;cursor:default;}
.hentry p {margin: 0;padding: 0;font-family: Arial;line-height: 1.5em;font-size: 1.2em;color: #999;}
.hentry a:link, .hentry a:visited, .hentry a:hover {color:#888;text-decoration:none;}
.slide {position:relative;margin:0 auto;background:#bbb;border: 10px solid #555;border-bottom: 10px solid #555;border-radius: 20px;box-shadow: 2px 5px 20px #aaa;}
.slide, .slide input, .slide img {width:650px;height:400px;}
.slide:after {content: '.';position: absolute;left: 47.5%;bottom: 0;margin-bottom: -67px;color: #777;text-shadow: 0 0 5px #444;font-size: 15em;z-index: 1;}
.slide input {display:block;position:absolute;left:0;top:0;opacity:0;cursor:pointer;margin:0;padding:0;}
.slide img {position:absolute;left:0;top:0;box-shadow:0 0 30px #bbb;}
.slide span {position:absolute;left:0;bottom:400px;width:650px;z-index:10;text-align:center;background:rgba(255,255,255,.5);color:rgba(255,255,255,.5);line-height:50px;font-size:0;font-family:Arial, Trebuchet MS;text-transform:uppercase;}
.slide span h2, .slide span h3 {margin:0;font-size:1em;font-weight:normal;display: inline;}
.slide img, .slide span {visibility:hidden;opacity:0;} .slide img {transition:all .9s ease} .slide span {transition:all .5s ease-out}
.slide input:checked + img, .slide input:checked + img + span {visibility:visible;opacity:1}
.slide input:checked + img + span {bottom:0px;background:rgba(0,0,0,.3);font-size:2em;}
.slide input:checked {display:none;}
.slide input:nth-child(1) {z-index:13}
.slide input:nth-child(4) {z-index:12}
.slide input:nth-child(7) {z-index:11}
.slide input:nth-child(10) {z-index:10}
.slide input:nth-child(13) {z-index:9}
.slide input:nth-child(16) {z-index:8}
.slide input:nth-child(19) {z-index:7}
.slide input:nth-child(22) {z-index:6}
.slide input:nth-child(1):checked ~ input:nth-child(4), 
.slide input:nth-child(4):checked ~ input:nth-child(7),
.slide input:nth-child(7):checked ~ input:nth-child(10),
.slide input:nth-child(10):checked ~ input:nth-child(13), 
.slide input:nth-child(13):checked ~ input:nth-child(16),
.slide input:nth-child(16):checked ~ input:nth-child(19),
.slide input:nth-child(19):checked ~ input:nth-child(22) {z-index:15;}
.clear{clear:both;}
@media only screen and (max-width:970px){.slide, .slide img, .slide input {width:533px;height:300px;} .slide span {width:533px;bottom:300px;}}
@media only screen and (max-width:720px){.slide, .slide img, .slide input {width:444px;height:250px;} .slide span {width:444px;bottom:250px;} .atas h1, .slide input:checked + img + span {font-size:1.5em;}}
@media only screen and (max-width:500px){.slide, .slide img, .slide input {width:356px;height:200px;} .slide span {width:356px;bottom:200px;} .atas h1, .slide input:checked + img + span {font-size:1.3em;}}
@media only screen and (max-width:420px){.slide, .slide img, .slide input {width:240px;height:135px;} .slide span {width:240px;bottom:135px;} .atas h1 {font-size:1.3em;} .slide input + img + span {display:none;z-index:-9999;}}
</style>
</head>
<body>
			<div class='atas'></div>
			<div class='slide'>
				<input type='radio' name='radio-set' checked='checked' />
				<img alt='founder-chaidir-web-id' src='foto_css/hermawanka.jpg'>
				<span><h2>Images 1</h2>: <h3>Inovasi menjadi acuan kita</h3></span>
				<input type='radio' name='radio-set' />
				<img alt='chaidir-hermawan-kertajaya' src='foto_css/latar-gedung.jpg'/>
				<span><h2>Images 2</h2>: <h3>Tetap berkarya didalam media</h3></span>
				<input type='radio' name='radio-set' />
				<img alt='chaidir-jaya-setiabudi' src='foto_css/UTAMA-Gedung-GRAHA-PENA-RIAU-_-ft-DEFIZAL-1.jpg'/>
				<span><h2>Images 3</h2>: <h3>UTAMA-Gedung-GRAHA-PENA-RIAU</h3></span>
				<input type='radio' name='radio-set' />
				<img alt='chaidir-mamak' src='foto_css/GRAHA PENA - rifqi.jpg'/>
				<span><h2>Images 4</h2>: <h3>GRAHA PENA</h3></span>
				<input type='radio' name='radio-set' />
				<img alt='founder-chaidir-web-id' src='foto_css/15389332.jpg'/>
				<span><h2>Images 5</h2>: <h3>Riau Pos Group</h3></span>
				<input type='radio' name='radio-set' />
				<img alt='chaidir-hermawan-kertajaya' src='foto_css/70022226.jpg'/>
				<span><h2>Images 6</h2>: <h3>Kerjasama dengan batam pos</h3></span>
				<input type='radio' name='radio-set' />
				<img alt='chaidir-jaya-setiabudi' src='foto_css/request-grup-2-image21.jpg'/>
				<span><h2>Images 7</h2>: <h3>Gerakan masyarakat riau sehat</h3></span>
				<input type='radio' name='radio-set' />
				<img alt='chaidir-mamak' src='foto_css/umevatet.jpg'/>
				<span><h2>Images 8</h2>: <h3>Pembangunan gedung baru</h3></span>
				<div class='clear'></div>
			</div>
			<div class='post-body hentry'>
			</div>

</body>
</HTML>