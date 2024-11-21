package goods.yj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import goods.yj.mapper.ReviewMapper;
import goods.yj.vo.ReviewVO;

@Service
public class ReviewServiceImpl implements ReviewService {

    @Autowired
    private ReviewMapper reviewMapper;

    @Override
    public List<ReviewVO> getAllReview() {
        return reviewMapper.getAllReview(); // ReviewMapper를 통해 리뷰 목록 조회
    }

    @Override
    public ReviewVO getReviewDetail(int seq_no) {
        return reviewMapper.getReivewDetail(seq_no); // ReviewMapper를 통해 특정 리뷰 조회
    }

    @Override
    public void createReview(ReviewVO reviewVO) {
        reviewMapper.createReview(reviewVO); // 리뷰 등록
    }

    @Override
    public void updateReview(ReviewVO review) {
        reviewMapper.updateReview(review); // 리뷰 수정
    }

    @Override
    public void updateStatusToDeletedReview(int seq_no) {
        reviewMapper.deleteReview(seq_no); // 리뷰 삭제
    }
}
