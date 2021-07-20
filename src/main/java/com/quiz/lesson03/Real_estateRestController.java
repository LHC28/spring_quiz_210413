package com.quiz.lesson03;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson03.model.Real_estate;
import com.quiz.lesson03.real_estatebo.Real_estateBO;

//@RequestMapping("/lesson03/quiz02")
@RestController
public class Real_estateRestController {
	//http://localhost/lesson03/quiz01/1?id=20
	
	@Autowired
	private Real_estateBO real_estateBO;
	
	// MySQL의 테이블명과 같게 한다고 이름을 저렇게 지었는데 camel case에 맞춰서 작성하는 것이 더 좋다.
	@RequestMapping("/1")
	public Real_estate quiz01_1( // DTO 데이터를 전송하는 클래스
			@RequestParam(value="id") int id
			// 필수 파라미터인 경우 ("id")로 작성하는 것도 가능하다.
			) {
		return real_estateBO.getReal_estate(id);
		// BO에게 받은 값을 리턴
	}
	
	@RequestMapping("/2")
	public Real_estate quiz01_2(
			@RequestParam(value="rentPrice") Integer rentPrice
			) {
		return real_estateBO.getReal_estate(rentPrice);
	}
	
	@RequestMapping("/3")
	public List<Real_estate> quiz01_3(
			@RequestParam(value="area") int area,
			@RequestParam(value="price") int price
			){
		List<Real_estate> real_estateList = real_estateBO.getReal_estate(area, price);
		return real_estateList;
	}
	
	@RequestMapping("/lesson03/quiz02/1")
	public String quiz02() {
		Real_estate realestate = new Real_estate();
		realestate.setRealtorId(3);
		realestate.setAddress("푸르지용 리버 303동 1104호");
		realestate.setArea(89);
		realestate.setType("매매");
		realestate.setPrice(100000);
		
		int row = real_estateBO.insertReal_estate(realestate);
		
		return "입력 성공 : "+row;
	}
	
	//http://localhost/lesson03/quiz02/2?realtor_id=5
	@RequestMapping("/lesson03/quiz02/2")
	public String quiz02_1(
			@RequestParam(value="realtor_id") String realtorId1 // 여기서 camel case로 바꿔주는 것이 좋다.
			// 에러가 자료형이 다르다고 뜨는 것 같아서 바꾼 것임. 하지만 그냥 바로 int 씌워서도 가능한 것 보면 여기서 문제는 없던 듯.
			) {
		int realtorId = Integer.valueOf(realtorId1);
		int row = real_estateBO.insertRealestateAsField(realtorId,"샹떼빌리버 오피스텔 814호",45,"월세",100000,120);
		return "입력 성공 : "+row;
	}
	// 결론적으로 객체에 넣어서 하는 것이 훨씬 좋다. 하나씩 직접 넣는 것은 순서가 꼬일 수도 있어 문제가 발생할 수 있다.
	// 하지만 현직자의 말로는 아래 방법이 더 많이 썼다고 한다. 위의 방법이 귀찮은 문제가 있다고 한다. 이유는 나중에...
	
	//http://localhost/lesson03/quiz03/1?id=8
	@RequestMapping("/lesson03/quiz03/1")
	public String quiz03(
			@RequestParam("id") int id,
			@RequestParam("price") int price,
			@RequestParam("type") String type
			) {
		int row = real_estateBO.updateRealestate(id, price,type);
		return "수정 성공 : "+row;
	}
	
	//http://localhost/lesson03/quiz04/1?id=22
	@RequestMapping("/lesson03/quiz04/1")
	public String quiz04(
			@RequestParam("id") int id
			) {
		int row = real_estateBO.deleteRealestate(id);
		return "삭제 성공"+row;
	}
	
}
