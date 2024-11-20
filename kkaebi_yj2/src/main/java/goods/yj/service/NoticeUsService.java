package goods.yj.service;

import java.util.List;

import goods.yj.vo.NoticeUsVO;

public interface NoticeUsService {

    // 전체 공지사항 조회
    List<NoticeUsVO> getAllUsNotice();

    // 공지사항 상세 조회
    NoticeUsVO getNoticeUsDetail(int seq_no);
    
}
