package goods.yj.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import goods.yj.vo.ReviewVO;

@Mapper
public interface ReviewMapper {

	List<ReviewVO> getAllReview(); // 전체 조회

	ReviewVO getReviewDetail(int seq_no); // 리뷰 자세히 보기

	void updateReview(ReviewVO review); // 업데이트

	void createReview(ReviewVO review); // 생성

	void deleteReview(int seq_no); //삭제
}
