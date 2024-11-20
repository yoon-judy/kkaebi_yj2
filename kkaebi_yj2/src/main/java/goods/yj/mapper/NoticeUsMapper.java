package goods.yj.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import goods.yj.vo.NoticeUsVO;

@Mapper
public interface NoticeUsMapper {
    
    List<NoticeUsVO> getAllUsNotice(); // 전체 조회
    
	NoticeUsVO getNoticeUsDetail(int seq_no);

    
}
