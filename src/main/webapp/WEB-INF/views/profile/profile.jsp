<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/profile.css">
	<script src="${pageContext.request.contextPath}/resources/js/profile.js"></script>
</head>
<body>
<!-- home -->
	<!-- modal -->
	<div id="ProjectModal" class="projectmodal" onclick="closeModal(this);">
		<div class="project-content" id="project-content" >
		 <div class="project-carousel">
			 <div class="carousel-wrap">
				 	<div class="window">
					 	<div class="carouselimg" id="carousel">
					 		<div class="slide"></div>
					 		<div class="slide"></div>
					 		<div class="slide"></div>
					 		<div class="slide"></div>
					 		<div class="slide"></div>
					 		<div class="slide"></div>
					 	</div>
				 	<i class="material-icons bottom-left" id="prev">keyboard_arrow_left</i>
				 	<i class="material-icons bottom-right" id="next">keyboard_arrow_right</i>
				 	</div>
		 	</div>
		 	<div class="info-box">
		 		<div class="title"></div>
		 		<div class="tag"></div>
		 		<div class="detail"></div>
		 	</div>
		 	<i class="material-icons close" onclick="closeModal();">close</i>
		 </div>
		</div>
	</div>
  <!-- modal -->
<section style="height: 93vh;">
	<div class="row">
	  <div class="home_column left" data-toggle="collapse" data-target="#hugstar21">
	    <img src="${pageContext.request.contextPath}/resources/img/eunbori/hugstar21.jpg" alt="eunbori">
	    <h2>hugstar21</h2>
	    <p>안은별</p>
	  </div>
	  
	  <div class="home_column right" data-toggle="collapse" data-target="#JinwooKing">
	    <img src="${pageContext.request.contextPath}/resources/img/jinwoo/JinwooKing.jpg" alt="jinwoo">
	    <h2>JinwooKing</h2>
	    <p>박진우</p>
	  </div>
	</div>
</section>
<!-- hugstar21 -->
<section id="hugstar21" class="collapse">
	<!-- eunpronav -->
	<div id="eunpronav" class="pronav">
		<nav class="navbar navbar-light">
			<a class="navbar-brand" href="javascript:href('home')">Home</a>
			<a class="navbar-brand" href="javascript:href('About')">About</a>
			<a class="navbar-brand" href="javascript:href('project')">Project</a>
			<a class="navbar-brand" href="javascript:href('Contact')">Contact</a>
		</nav>
	</div>
	<!-- about -->
	<div class="about">
		<h2>ABOUT ME</h2>
		<p class="p mb-3">창의와 혁신으로 힘차게 끊임없이 달리는 자전거</p>
		<p>지속적인 자기개발을 통해 무한한 추진력을 보태는 개발자입니다. 책임감과 성실함을 장점으로 어디서나 인정받는 사람입니다. 남들이 망설이는 일일지라도 해야 한다고 느끼는 일은 무슨 일이 있어도 마무리를 짓는 다부진 면도 있습니다.
		매사 신중하게 행동합니다. 다년간의 공동체 생활을 통해 어느 새 하고 싶은 것보다 해야 할 것을 우선시하고, 절제를 당연하게 여기는 사람이 되었습니다. 
		항상 배운다는 낮은 자세로 임하여 스스로를 개선하고 발전합니다. ui/ux 디자인은 물론 외국어까지 다방면으로 능력을 쌓아 내가 차지하고 있는 몫 이상의 의미와 가치를 가진 사람입니다.
		앞으로도 최우선의 목표가 무엇인지 생각하고 그 목표를 위해 효율적인 방법을 생각하여 보완하겠습니다.</p>
	        <div class="row mt-5 mb-3">
	       		<div class="row about_column px-1">
	       			<div class="about_column_info px-3">
	       				<div class="hex-wrap">
	       					<div class="hexagon">
	       						<i class="material-icons">group_add</i>
	       					</div>
	       				</div>
	       				<div class="about_info">
	       					<p class="info_label">화합<p>
	       					<p>사람을 배려하며 함께의 가치를 살림.<p>
	       					</div>
	       			</div>
			      	<div class="about_column_info px-3">
	       				<div class="hex-wrap">
	       					<div class="hexagon">
	       						<i class="material-icons">trending_up</i>
	       					</div>
	       				</div>
	       				<div class="about_info">
	       					<p class="info_label">자기개발<p>
	       					<p>지치지 않고 끊임없이 성장.<p>
       					</div>
       				</div>
	       		</div>
	       		<div class="row about_column px-1">
			      	<div class="about_column_info px-3">
	       				<div class="hex-wrap">
	       					<div class="hexagon">
	       						<i class="material-icons">whatshot</i>
	       					</div>
	       				</div>
	       				<div class="about_info">
	       					<p class="info_label">성실함<p>
	       					<p>어디서든 인정받는 정성.<p>
      					</div> 
   					</div>
			      	<div class="about_column_info px-3">
	       				<div class="hex-wrap">
	       					<div class="hexagon">
	       						<i class="material-icons">sentiment_very_satisfied</i>
	       					</div>
	       				</div>
	       				<div class="about_info">
	       					<p class="info_label">팔망미인<p>
	       					<p>디자인은 물론 외국어까지.<p>
      					</div>
   					</div>
	       		</div>
	        </div>
		    <div class="row">
		   		<div class="about_column about_img_container">
		    	<!-- img -->	
		    		<p class="p"><span><i class="material-icons mr-2">person</i>안은별</span></p>
		    		<img alt="eunbori" src="${pageContext.request.contextPath}/resources/img/eunbori/hugstar21.jpg">
		    		<p class="mt-3">저는 프론트 엔드 개발자입니다. 특유의 꼼꼼함과 섬세함으로 세부 사항을 조정하여 직관적이고 편리한 사용자 경험을 만드는 데 열정적입니다.<!-- I' m a Front-End Developer of 용인 in Korea. I' m passionate about creating an intuitive and convenient user experience through fine-tuning of the details. Let's make something special. --></p>
		    	</div>
		    	<div class="about_column">
			    	<!-- skils -->
			      	<p class="p"><i class="material-icons mr-2">edit</i>Skils</p>
			      	<p class="wide mt-3">Java</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:100%">100%</div>
					</div>
					<p class="wide mt-3">HTML</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:90%">90%</div>
					</div>
					<p class="wide mt-3">CSS</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:90%">90%</div>
					</div>
					<p class="wide mt-3">JvavScript</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:85%">85%</div>
					</div>
					<p class="wide mt-3">SQL</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:85%">85%</div>
					</div>
					<p class="wide mt-3">Linux</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:50%">50%</div>
					</div>
					<p class="wide mt-3">Development potential</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:100%">100%</div>
					</div>
			    </div>
		    </div>
	</div>
	
	<!-- project -->
	<div class="background_project">
	<div class="project">
	<h2>PROJECTS</h2>
	<p class="p mb-3">My WorK</p>
		<p class="mb-5">Here are some of my latest work. Click on the images to make them bigger.</p>
		<div class="row">
			<div class="project_third">
			<div class="imgcontainer" onclick="openModal('ejumptocoding');">
				<img src="${pageContext.request.contextPath}/resources/img/carousel/ejumptocoding1.png" style="width: 100%">
				<div class="overlay">Jump To Coding</div>
			</div>
			</div>
			<div class="project_third">
			<div class="imgcontainer" onclick="openModal('eloling');">
				<img src="${pageContext.request.contextPath}/resources/img/carousel/eloling1.png" style="width: 100%">
				<div class="overlay">LoLing</div>
			</div>
			</div>
			<div class="project_third">
			<div class="imgcontainer" onclick="openModal('esbbj');">
				<img src="${pageContext.request.contextPath}/resources/img/carousel/esbbj1.png" style="width: 100%">
				<div class="overlay">SBBJ</div>
			</div>
			</div>		
		</div>
	</div>
	</div>
	
	<!-- contact -->
	<svg preserveAspectRatio="none" viewBox="0 0 100 102" height="75" width="100%">
          <path d="M0 0 L50 100 L100 0 Z" fill="#F5F5F5" stroke="white"></path>
        </svg>
	<div class="contact mb-5">
	<h2>CONTACT</h2>
	<p class="p mb-5">Have a question or want to work together?</p>
		<form action="javascript:sendemail('EunboriForm')" class="contact_form mb-5" name="EunboriForm">
			<input type="text" name="name" placeholder="이름" required="required">
			<input type="email" name="email" placeholder="이메일" required="required">
			<textarea style="min-height: 200px" name="message" placeholder="메시지" required="required"></textarea>
			<button type="submit" class="mt-1 mb-5">SUBMIT</button>
		</form>
		
	</div>
</section>

<!-- JinwooKing -->
<section id="JinwooKing" class="collapse">
		<!-- jinpronav -->
		<div id="jinpronav" class="pronav">
		  <nav class="navbar navbar-light">
			<a class="navbar-brand" href="javascript:href('home')">Home</a>
			<a class="navbar-brand" href="javascript:href('About')">About</a>
			<a class="navbar-brand" href="javascript:href('Jproject')">Project</a>
			<a class="navbar-brand" href="javascript:href('JContact')">Contact</a>
		  </nav>
		</div>
		
	<!-- about -->
	<div class="about">
		<h2>ABOUT ME</h2>
		<p class="p mb-3">어제보다 나은 오늘, 오늘보다 나은 내일을 그리는 프로그래머</p>
		<p>대학교 때 전자공학을 전공하여 하드웨어와 소프트웨어 전반에 대한 IT 지식을 가지고 있습니다. 특히 소프트웨어와 프로그래밍에 관심이 많은데 프로그램의 구조를 직접 설계하고 코드를 짜며 결과를 도출하는 작업을 할 때 큰 성취감을 느낍니다.
		책임감과 끈기를 가진 성격 덕분에 코딩이 술술 풀리는 상황에 한정되지 않고, 어떤 상황에서도 맡은 역할을 해내는 사람입니다.
		부족한 부분은 채우고 강점은 발전시키면서 어제보다 나은 오늘, 오늘보다 나은 내일을 그리는 프로그래머가 되는 것이 저의 목표입니다. 
		 </p>
	        <div class="row mt-5 mb-3">
	       		<div class="row about_column px-1">
	       			<div class="about_column_info px-3">
	       				<div class="hex-wrap">
	       					<div class="hexagon">
	       						<i class="material-icons">favorite</i>
	       					</div>
	       				</div>
	       				<div class="about_info">
	       					<p class="info_label">마음<p>
	       					<p>따듯한 마음을 가지고 있다.<p>
	       					</div>
	       			</div>
			      	<div class="about_column_info px-3">
	       				<div class="hex-wrap">
	       					<div class="hexagon">
	       						<i class="material-icons">trending_up</i>
	       					</div>
	       				</div>
	       				<div class="about_info">
	       					<p class="info_label">자기개발<p>
	       					<p>지치지 않고 끊임없이 성장.<p>
       					</div>
       				</div>
	       		</div>
	       		<div class="row about_column px-1">
			      	<div class="about_column_info px-3">
	       				<div class="hex-wrap">
	       					<div class="hexagon">
	       						<i class="material-icons">settings_input_component</i>
	       					</div>
	       				</div>
	       				<div class="about_info">
	       					<p class="info_label">끈기<p>
	       					<p>수십, 수백 번 도전.<p>
      					</div>
   					</div>
			      	<div class="about_column_info px-3">
	       				<div class="hex-wrap">
	       					<div class="hexagon">
	       						<i class="material-icons">accessibility</i>
	       					</div>
	       				</div>
	       				<div class="about_info">
	       					<p class="info_label">체력<p>
	       					<p>지칠줄 모르는 체력<p>
      					</div>
   					</div>
	       		</div>
	        </div>
		    <div class="row">
		   		<div class="about_column about_img_container">
		    	<!-- img -->	
		    		<p class="p"><span><i class="material-icons mr-2">person</i>박진우</span></p>
		    		<img alt="eunbori" src="${pageContext.request.contextPath}/resources/img/jinwoo/JinwooKing.jpg">
		    		<p class="mt-3">백엔드 개발자를 꿈꾸고 있습니다. 특유의 끈기와 열정으로 꾸준히 성장해나가고 있습니다.</p>
		    	</div>
		    	<div class="about_column">
			    	<!-- skils -->
			      	<p class="p"><i class="material-icons mr-2">edit</i>Skils</p>
			      	<p class="wide mt-3">Java</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:100%">100%</div>
					</div>
					<p class="wide mt-3">HTML</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:85%">85%</div>
					</div>
					<p class="wide mt-3">CSS</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:80%">80%</div>
					</div>
					<p class="wide mt-3">JvavScript</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:90%">90%</div>
					</div>
					<p class="wide mt-3">SQL</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:95%">95%</div>
					</div>
					<p class="wide mt-3">Linux</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:50%">50%</div>
					</div>
					<p class="wide mt-3">Development potential</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:90%">90%</div>
					</div>
			    </div>
		    </div>
	</div>
	
	<!-- project -->
	<div class="background_project">
	<div class="project">
	<h2>PROJECTS</h2>
	<p class="p mb-3">My WorK</p>
		<p>Here are some of my latest work. Click on the images to make them bigger.</p>
		<div class="row">
			<div class="project_third">
			<div class="imgcontainer" onclick="openModal('jjumptocoding');">
				<img src="${pageContext.request.contextPath}/resources/img/carousel/jjumptocoding1.png" style="width: 100%">
				<div class="overlay">Jump To Coding</div>
			</div>
			</div>
			<div class="project_third">
			<div class="imgcontainer" onclick="openModal('jloling');">
				<img src="${pageContext.request.contextPath}/resources/img/carousel/jloling1.png" style="width: 100%">
				<div class="overlay">LoLing</div>
			</div>
			</div>
			<div class="project_third">
			<div class="imgcontainer" onclick="openModal('jsbbj');">
				<img src="${pageContext.request.contextPath}/resources/img/carousel/jsbbj1.png" style="width: 100%">
				<div class="overlay">SBBJ</div>
			</div>
			</div>		
		</div>
	</div>
	</div>
	
	<!-- contact -->
	<svg preserveAspectRatio="none" viewBox="0 0 100 102" height="75" width="100%">
          <path d="M0 0 L50 100 L100 0 Z" fill="#F5F5F5" stroke="white"></path>
        </svg>
	<div class="contact mb-5">
	<h2>CONTACT</h2>
	<p class="p mb-5">Have a question or want to work together?</p>
		<form action="javascript:sendemail('JinwooForm')" class="contact_form mb-5" name="JinwooForm">
			<input type="text" name="name" placeholder="이름" required="required">
			<input type="email" name="email" placeholder="이메일" required="required">
			<textarea style="min-height: 200px" name="message" placeholder="메시지" required="required"></textarea>
			<button type="submit" class="mt-1 mb-5">SUBMIT</button>
		</form>
	</div>
</section>
</body>
</html>