<jsp:include page="../../../plantillas/head.jsp"></jsp:include>
<jsp:include page="../../../plantillas/nav.jsp"></jsp:include>

<style>
	#sprite_ejemplo {
		list-style: none;
	}
	#sprite_ejemplo li {
		background-image     : url(img/sprite.png);
		background-color      : transparent;
		background-repeat    : no-repeat;
		height: 50px;
		width: 50px;
		display: block;
	}
	#sprite_ejemplo span {
		padding-top: 20px;
		padding-left: 50px;
	}
	.pacman {
		background-position  : 0px 0px;
	}
	.fantasma {
		background-position  : 0px -50px;
	}
	.robot {
		background-position  : 0px -100px;
	}
	
</style>

<section>
	<article>
		<header>
			<h2>SPRITE</h2>
		</header>
		<div class="cnt_article">
			<ul id="sprite_ejemplo">
				<li class="pacman"><span>pacman</span></li>
				<li class="fantasma"><span>fantasma</span></li>
				<li class="robot"><span>robot</span></li>
			</ul>
		</div>
		
		<footer>
			
			<p></p>
		</footer>
	</article>
	
	

</section>

<jsp:include page="../../../plantillas/foot.jsp"></jsp:include>