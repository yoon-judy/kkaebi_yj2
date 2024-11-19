package goods.yj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import goods.yj.service.NoticeService;
import goods.yj.vo.NoticeVO;

@Controller
@RequestMapping("/notice")
public class NoticeController {

    @Autowired
    private NoticeService noticeService;

    // 공지사항 전체
    @GetMapping("/list")
    public String noticeList(Model model) {
        model.addAttribute("notice", noticeService.getAllNotice());
        return "notice/list";
    }

    // 공지사항 상세
    @GetMapping("/detail")
    public String getNoticeDetail(@RequestParam("seq_no") int seq_no, Model model) {
        model.addAttribute("notice", noticeService.getNoticeDetail(seq_no));
        return "notice/detail";
    }

    // 게시물 등록 폼
    @GetMapping("/create")
    public String createNoticeForm(Model model) {
        model.addAttribute("notice", new NoticeVO());
        return "notice/create";
    }

    // 게시물 등록 처리
    @PostMapping("/create")
    public String createNotice(@ModelAttribute NoticeVO noticeVO) {
        noticeService.createNotice(noticeVO); // 공지사항 저장
        return "redirect:/notice/list";
    }

    // 게시물 변경폼
    @GetMapping("/update")
    public String updateNoticeForm(@RequestParam("seq_no") int seq_no, Model model) {
        model.addAttribute("notice", noticeService.getNoticeDetail(seq_no));
        return "notice/update";
    }

    // 게시물 변경처리
    @PostMapping("/update")
    public String updateNotice(@ModelAttribute NoticeVO notice) {
        noticeService.updateNotice(notice); // 공지사항 업데이트
        return "redirect:/notice/list"; // 목록으로 리디렉션
    }

    // 게시물 삭제
    @GetMapping("/delete")
    public String deleteNotice(@RequestParam("seq_no") int seq_no) {
        noticeService.updateStatusToDeleted(seq_no);
        return "redirect:/notice/list"; // 공지사항 목록 페이지로 리다이렉트
    }
    // 만료된 공지사항 상태 변경
    @PostMapping("/expire")
    public String expireNotices(@RequestParam("expire_id") String expireId) {
        noticeService.updateExpiredNoticesStatus(expireId); // 만료된 공지사항 상태 변경
        return "redirect:/notice/list";
    }
}
