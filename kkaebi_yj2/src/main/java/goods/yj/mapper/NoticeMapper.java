package goods.yj.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import goods.yj.vo.NoticeVO;

@Mapper
public interface NoticeMapper {
    
    List<NoticeVO> getAllNotice(); // 전체 조회
    
    void updateNotice(NoticeVO notice); // 업데이트
    
    void createNotice(NoticeVO notice); // 생성
    
    void deleteNotice(int seq_no); // 삭제
    
    NoticeVO getNoticeDetail(int seq_no); // 상세정보 조회

	void updateExpiredNoticesStatus(String expire_Id);

    
}
