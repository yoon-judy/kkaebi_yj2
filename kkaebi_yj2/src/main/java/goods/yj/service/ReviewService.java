package goods.yj.service;

import java.util.List;

import org.springframework.stereotype.Service;

import goods.yj.vo.ReviewVO;

@Service
public interface ReviewService {

	List<ReviewVO> getAllReview(); // 리뷰 전체 조회

	ReviewVO getReviewDetail(int seq_no); // 리뷰 자세히 보기

	void createReview(ReviewVO review); // 리뷰 등록

	void updateReview(ReviewVO review); // 리뷰 수정

	void updateStatusToDeletedReview(int seq_no);

}
