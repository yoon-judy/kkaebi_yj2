package goods.yj.service;

import java.util.List;

import goods.yj.vo.NoticeVO;

public interface NoticeService {

    // 전체 공지사항 조회
    List<NoticeVO> getAllNotice();

    // 공지사항 상세 조회
    NoticeVO getNoticeDetail(int seq_no);

    // 공지사항 등록
    void createNotice(NoticeVO notice);

    // 공지사항 수정
    void updateNotice(NoticeVO notice);

	void updateStatusToDeleted(int seq_no);

	void updateExpiredNoticesStatus(String expire_id);
    
}
