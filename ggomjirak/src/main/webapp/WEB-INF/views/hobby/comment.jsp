<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<div class="sm_tit" style="border-bottom: 1px solid #1f5e43;font-size: 1.3rem;">댓글 <span class="cmt_cnt">${hobbyVo.cmt_cnt}</span></div>
			<!--commentList-container -->
			<div class="commentList-container" id="commentContainer">
			<c:if test="${hobbyVo.cmt_cnt == 0}">
				<div id="noCmtDiv" style="padding: 5rem 0 4rem 3rem;color:#656565;">
					댓글이 없습니다.<br/>
					첫번째 댓글을 남겨주세요 :)
				</div>
			</c:if>
			<!-- comment-row-->
				<div class="comment-row" style="display:none">
					<input type="hidden" class="c_no" value=""/>
					<input type="hidden" class="re_group" value=""/>
					<div class="updateCommentDiv" style="display:none">
						<div class="c_info_area">
							<div style="width:2.3rem; height:2.3rem; overflow:hidden; display: inline-block;">
								<img class="rounded-circle circle-image user_img" 
									src="/resources/img/noprofile.png"  style="width:100%; height:100%; object-fit:cover;"/>
							</div>
							<span class="c_user_nick" style="position: absolute; padding: 0.4rem 0 0 0.4rem;"> 하윤지</span>
							<a class="cancel" href="javascript:cancelUpdate();" style="float:right">취소</a>
						</div>
						<div class="input-group" style="width:680px;">
							<textarea name="c_content" class="form-control c_content" 
									 spellcheck="false" autocomplete="off"
									 style="height:100px; width:100%; resize:none;"></textarea>
							<!-- 로그인 기능 생기면 insertComment함수 인자안에 세션으로 얻은${user_id}넣기 -->
							<button class="btn green_background updateBtn" type="button" 
									onclick="updateComment()" style="height:100px; width:100px; color:white;">등록</button>
						</div>
					</div>
					<div class="view_comment">
						<div class="c_info_area">
								<a class="user_link" href="#프로필링크" style="vertical-align: top;">
									<label style="width:2.3rem; height:2.3rem; overflow:hidden;">
										<img class="rounded-circle circle-image user_img" 
											src="/resources/img/noprofile.png"  style="width:100%; height:100%; object-fit:cover;"/>
									</label>
									<span class="c_user_nick" style="margin-left: 0.5rem; color:#212529;     vertical-align: top;"> 하윤지</span>
								</a>
								<span class="is_hobby_writer badge badge-pill badge-success" 
									style="display:none; background: #1f5e43; padding-top: 5px; vertical-align: top;"> 글주인</span>
								<!-- 댓글, 수정 삭제 -->
								<div class="dropdown" style="float:right">
									<button class="btnMenu_cmt" type="button" id="dropdownMenuButton" data-toggle="dropdown">
									</button>
									<div class="dropdown-menu" aria-labelledby="dropdownMenuButton"
										style="min-width: 4rem;font-size: 13px;">
										 <a class="dropdown-item doUpdateComment" 
										 	href="javascript:void(0);" >수정</a> 
										 <a class="dropdown-item deleteComment" 
										 	href="javascript:void(0);">삭제</a>
									</div>
								</div>
								<!-- //댓글, 수정 삭제 -->
							</div>
							<div class="c_content_area">
								<span class="c_parent_user_nick" style="display:none">@하윤지 </span> 
								<span class="c_content">댓글내용 댓글댓글내용 댓글댓글내용 11</span>
							</div>
							<div class="c_etc_area">
								<span class="c_reg_date"></span>
<!-- 									<a href="javascript:void(0);" class="report" style="display:none;" -->
<!-- 										 onclick="신고()"><span>|</span>신고</a> -->
							</div>
							<div class="c_btn_area">
								<button class="loginNeed doRecomment btn btn-sm green_background"
										style="margin-top: 0.5rem; color:white;" onclick="doRecomment()">답글</button>
							</div>
					</div>
					<div class="row replyCommentDiv">
					
					</div>
				</div>
				<!-- //comment-row -->
			</div>
			<!--//commentList-container -->
			<div style="text-align:center; margin: 20px 0 20px 0;">
				<button type="button" id="btnMoreComments"
					onclick="moreViewToggle(this);" style="color:white;"
					class="btn btn-sm green_background">댓글 더보기</button>
			</div>
			<!--commentWrite-container -->
			<div class="commentWrite-container">
				<div class="input-group" style="width:45rem; padding-left: 2rem;">
					<textarea id="c_content" name="c_content" spellcheck="false" autocomplete="off"
						class="form-control" placeholder="댓글을 남겨주세요."
						 style="height:100px; width:100%; resize:none;"></textarea>
					<button class="loginNeed btn green_background" type="button" 
						onclick="insertComment(this)" style="height:100px; width:100px; color:white;">등록</button>
				</div>
			</div>
			<!--// commentWrite-container -->
				<!-- 답댓작성 -->
				<div id="reply_div" style="display:none;">
					<div class="input-group" style="width: 42.7rem;">
						<input type="hidden" id="parent_c_no" value=""/>
						<textarea id="re_c_content" class="form-control" spellcheck="false" autocomplete="off"
							 style="height:100px; width:100%; resize:none; border-radius: .25rem;" placeholder="답댓글을 남겨보세요."></textarea>
						<button class="loginNeed btn green_background insertRecomment" type="button" 
							onclick="insertRecomment(this)" style="height:100px; width:100px; color:white;">등록</button>
					</div>
				</div>
				<!--// 답댓작성 -->
				<!-- moreviewdiv -->
					<div id="moreViewDiv" style="display:none"></div>
				<!-- //moreviewdiv -->