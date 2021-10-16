# ✋ 꼼지락 | 취미 공유 커뮤니티

## 방구석에서 꼼지락거리는 사람들을 위한 사이트

> 다양한 취미와 꿀팁들을 요리 레시피처럼 공유하고 따라 해보며 
> 비슷한 취미를 가진 사람들과 소통하는 커뮤니티

최근 사람들이 집에 머무르는 시간이 길어지면서 집에서 할 수 있는 다양한 취미 활동을 원하고 찾게 되었습니다.

‘꼼지락’은 취미를 주제로 하는 커뮤니티 사이트를 만든다면 다양한 아이디어와 재미난 컨텐츠들이 나올 것 같아 제작하게 되었습니다.

꼼지락과 함께 자신만의 취미를 찾아보아요! 🥳

<br>

![메인](https://user-images.githubusercontent.com/85017704/137364391-1abb06b3-dc49-428f-9fe8-86e129907ba4.gif)



<br>

***

<br>

<details open="open">
  <summary>목차</summary>
  <ol>
    <li>
      <a href="#개요">개요</a>
    </li>
    <li><a href="#특별한-기능">특별한 기능</a></li>
  </ol>
</details>


# 👩‍💻개요

[![유튜브](http://img.youtube.com/vi/ACG5QPcK8a4/0.jpg)](https://youtu.be/ACG5QPcK8a4) 

* 프로젝트 명 : ggomjirak

* 일정 : 2021년 07월 15일 ~ 2021년 8월 14일 (약 30일)

* 맡은 역할 : 취미글 CRUD, 후기 목록 조회, 준비물로 취미글 조회, 사진 업로드 기능

* DB 설계 <br>
  - 전체 ERD ![133445512-f726486b-db6a-4b9a-b5b2-2d01909b6f51](https://user-images.githubusercontent.com/85017704/137365663-70888ad7-cdf5-481a-91d4-77e92e79ecd0.png)
  - 맡은 부분 ![그림1](https://user-images.githubusercontent.com/85017704/137365458-cc961863-7116-489a-8afe-8835d84e0c6a.png)


<br><br>

# 🛠특별한 기능

<details>
  <summary><b>만들기 순서</b></summary>
   <div markdown="1">
	   
- 만들기 순서를 이용해 자신의 취미를 쉽게 설명할 수 있다.
- 순서 사진 한번에 추가하기 버튼 클릭시
	- 선택된 사진의 개수만큼 박스가 생성된다.
	- 기존 박스 중 사진이 없는 박스가 있다면 순서대로 그곳을 채운후 나머지 사진에서 박스를 생성한다. <br><br> 
	   ![순서사진 한번에 추가](https://user-images.githubusercontent.com/85017704/137574395-2a9d4382-cc59-4595-a430-93fab1eec0e3.gif) <br><br><br><br>  
- 추가 기능을 사용해 만들기 순서 내용을 보완할 수 있다. <br><br>
	   ![추가기능](https://user-images.githubusercontent.com/85017704/137574494-d76f3a0f-e576-4d64-96bd-05f09d07fe30.gif)  <br><br><br><br>  
- 만들기 순서 수정 
	- 새로운 박스 추가, 기존 박스 삭제, 기존 내용 수정, 순서 수정을 할 수 있다. <br><br>
	   ![수정 만들기 추가 배속 용량](https://user-images.githubusercontent.com/85017704/137574440-690ff842-1748-4f5c-92ff-97bf92068ecd.gif)  <br><br><br><br>  

	   
   </div>
</details>

<details>
  <summary><b>링크</b></summary>
   <div markdown="1">
	   
	   
- 정규식을 이용해 링크 형식을 점검한다.	   
- jsoup 라이브러리를 이용한 크롤링
	- open graph 태그를 찾아 필요한 정보를 가져온다. <br><br> 
	![링크 배속](https://user-images.githubusercontent.com/85017704/137574759-ed701164-3713-48d7-bdc5-de174177daf4.gif) <br><br><br><br>  

	   
   </div>
</details>

<details>
  <summary><b>준비물로 목록 조회</b></summary>
   <div markdown="1">
	   
- 준비물로 글을 조회할 수 있다.
- 준비물은 데이터화를 위해 글작성시 DB에 저장된다. (이미 저장된 준비물일 경우 저장되지 않음)
- 조회된 글목록을 페이징, 정렬, 분류할 수 있다. <br><br>
	   ![준비물목록조회](https://user-images.githubusercontent.com/85017704/137577419-e372895e-ed2f-42ae-b4e6-fef04d5884ca.gif) <br><br><br><br>  


   </div>
</details>


<details>
  <summary><b>슬라이드 기능</b></summary>
   <div markdown="1">
	   
- 만들기 순서를 슬라이드로 볼 수 있다.
- 재생버튼을 누르면 슬라이드가 자동으로 넘어간다.
- 배속기능을 사용하여 슬라이드 넘김속도를 조정할 수 있다.
- 슬라이드의 기본 간격은 약 4초로 설정했다. <br><br> ![ezgif-1-1e8b0a57ed55](https://user-images.githubusercontent.com/85017704/137573362-69e886ee-f9e2-433d-9528-6b352dac0861.gif)



	   
   </div>
</details>
