package goods.yj.service;

import java.util.List;

import org.springframework.stereotype.Service;

import goods.yj.vo.ReviewUsVO;

@Service
public interface ReviewUsService {

	List<ReviewUsVO> getAllReviewUs();

	ReviewUsVO getReviewUsDetail(int seq_no); 

	void createReviewUs(ReviewUsVO reviewus); 

	void updateReviewUs(ReviewUsVO reviewus);

	void updateStatusToDeletedReviewUs(int seq_no);

}
