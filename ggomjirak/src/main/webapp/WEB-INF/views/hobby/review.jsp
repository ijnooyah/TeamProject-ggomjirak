<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	  <div style="border-bottom: 1px solid #1f5e43;">
		  		<span  class="sm_tit" style="font-size: 1.3rem;">후기 ${hobbyVo.mbm_cnt}</span>
		  		<a class="loginNeed btn-more" 
					type="button" href="/mbm/write/${hobbyVo.hobby_no}" 
					style="float:right;">후기작성</a>
		  </div>
		    <div class="row" style="margin-top: 0.5rem; padding: 0 1rem;">
<%-- 		    	<a class="category sort" id="AllSort" ${rp.review_level == 'all' ? 'style="color: #1f5e43; font-weight: 600;"' : '' } --%>
<%-- 					href="?review_level=all${rPage}#madeByMe">전체</a> <span> |</span>  --%>
				<a class="category sort" id="newSort" ${rp.review_level == 'new' ? 'style="color: #1f5e43; font-weight: 600;"' : '' }
					 href="?review_level=new${rPage}#madeByMe">최신순</a> <span> |</span> 
				<a class="category sort" id="ascSort" ${rp.review_level == 'asc' ? 'style="color: #1f5e43; font-weight: 600;"' : '' }
					href="?review_level=asc${rPage}#madeByMe">난이도 낮은순</a> <span> |</span> 
				<a class="category sort" id="descSort" ${rp.review_level == 'desc' ? 'style="color: #1f5e43; font-weight: 600;"' : '' }
					href="?review_level=desc${rPage}#madeByMe">난이도 높은순</a>
		    </div>
		     <c:if test="${hobbyVo.mbm_cnt == 0}">
				<div id="noMbmDiv" style="padding:5rem 0 0 3rem;color:#656565;">
					후기가 없습니다.<br/>
					첫번째 후기를 남겨주세요 :)
				</div>
			</c:if>
			
				<!-- review-container -->
				<div class="review-container" style="margin-top: 1rem;">
				<c:forEach items="${hobbyVo.madeByMes}" var="mbm">
				<!-- review-row -->
				<div class="review-row">
					<div class="row">
						<div class="col-md-1">
							<div style="width:2.2rem; height:2.2rem; overflow:hidden;">
								<c:choose>
									<c:when test="${not empty mbm.user_img}">
										<img class="rounded-circle circle-image img_fit" 
										src="/displayImage?filePath=${mbm.user_img}"/>
									</c:when>
									<c:otherwise>
										<img class="rounded-circle circle-image img_fit" 
											src="/resources/img/noprofile.png"/> 
									</c:otherwise>
								</c:choose>
							</div>
						</div>
						<div class="col-md-11">
							<div class="row">
								<a href="/workroom/main/${mbm.user_id}" style="color:#212529">
									${mbm.user_nick}
								</a>
							</div>
							<div class="row" style="font-size:13px;">
								<fmt:formatDate value="${mbm.reg_date}" pattern="yyyy.MM.dd"/>
							</div>
						</div>
					</div>
					<a href="/mbm/detail/${mbm.user_id}?hobby_no=${mbm.hobby_no}&mbm_no=${mbm.mbm_no}">
					<div class="row">
						<div class="col-md-3">
							<div style="width:9rem; height:8rem; overflow:hidden;">
								<img class="img_fit" 
									src="/displayImage?filePath=${mbm.mbm_img}"/> 
							</div>
						</div>
						<div class="col-md-9">
							<div>
								<div class="row">
									<c:choose>
										<c:when test="${mbm.level_no == 1}">
											<p style="font-weight:bold;">체감 난이도 : 😆very easy</p>
										</c:when>
										<c:when test="${mbm.level_no == 2}">
											<p style="font-weight:bold;">체감 난이도 : 😃easy</p>
										</c:when>
										<c:when test="${mbm.level_no == 3}">
											<p style="font-weight:bold;">체감 난이도 : 🙂normal</p>
										</c:when>
										<c:when test="${mbm.level_no == 4}">
											<p style="font-weight:bold;">체감 난이도 : 😧hard</p>
										</c:when>
										<c:when test="${mbm.level_no == 5}">
											<p style="font-weight:bold;">체감 난이도 : 😱crazy</p>
										</c:when>
									</c:choose>
								</div>
							</div>
							<div class="row review-content">
								<p>${mbm.mbm_content}</p>
							</div>
						</div>
					</div>
					</a>
				</div>
				</c:forEach>
				<!-- // review-row -->
				</div>
				<!-- //review-container -->
				<!-- pagination-container -->
				   <div class="myPagination" style="text-align: center; margin-top: 1.5rem;">
		            <c:set var="prev" value="${rp.startPage - 1}"/>
		            <c:set var="next" value="${rp.endPage + 1}"/>
		            	<c:if test="${prev > 0}">
		               		 <a href="?${rLevel}&review_page=${prev}#madeByMe"><i class="fa fa-long-arrow-left"></i></a>
		                </c:if>
		            	<c:forEach var="v" begin="${rp.startPage}" end="${rp.endPage}">
			                <a class="${v == rp.review_page ? 'active' : '' }" 
			                	href="?${rLevel}&review_page=${v}#madeByMe">${v}</a>
						</c:forEach>
						<c:if test="${next <= rp.totalPage}">
		               		 <a href="?${rLevel}&review_page=${next}#madeByMe"><i class="fa fa-long-arrow-right"></i></a>
		                </c:if>
		            </div>
				<!--// pagination-container --> 