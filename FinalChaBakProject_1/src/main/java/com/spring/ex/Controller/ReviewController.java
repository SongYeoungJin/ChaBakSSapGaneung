package com.spring.ex.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.Dto.ReviewDto;
import com.spring.ex.Service.ReviewService;

@Controller
public class ReviewController {
	@Autowired
    private ReviewService reviewServiceImpl;
    
    /**
     * 게시판 조회
     */
    @RequestMapping(value="/Review/reviewList.do")
    public String boardList(@ModelAttribute("boardVO") ReviewDto boardVO, Model model) throws Exception{
                
        List<ReviewDto> list = reviewServiceImpl.selectBoardList(boardVO);
        
        model.addAttribute("list", list);
        
        return "Review/reviewList";
    }
    
    /**
     * 글쓰기 폼
     */
    @RequestMapping(value="/Review/writeForm.do")
    public String writeBoardForm() throws Exception{
        
        return "Review/writeForm";
    }
    
    /**
     * 게시글 등록
     */
    @RequestMapping(value="/Review/write.do")
    public String write(@ModelAttribute("boardVO") ReviewDto boardVO, Model model) throws Exception{
        reviewServiceImpl.insertBoard(boardVO);
        return "redirect:/Review/reviewList.do";
    }
    
    /**
     * 게시글 조회
     */
    @RequestMapping(value="/Review/viewContent.do", method = RequestMethod.POST)
    public String viewForm(@ModelAttribute("boardVO") ReviewDto boardVO, Model model, HttpServletRequest request) throws Exception{
        
    	request.setCharacterEncoding("UTF-8");
        int cb_num = Integer.parseInt(request.getParameter("cb_num"));
        boardVO.setRb_num(cb_num);
        
        ReviewDto resultVO = reviewServiceImpl.selectBoardByCode(boardVO);
        
        model.addAttribute("result", resultVO);

        return "Review/viewForm";
    }
    
    /**
     * 게시글 수정
     */
    @RequestMapping(value="/Review/updateboard.do", method = RequestMethod.POST)
    public String updateBoard(HttpServletRequest request,@ModelAttribute("boardVO") ReviewDto boardVO, Model model) throws Exception{
        
        try{
            reviewServiceImpl.updateBoard(boardVO);
        } catch (Exception e){
            e.printStackTrace();
        }        
        
        return "redirect:/Review/reviewList.do";
        
    }
    
    /**
     * 게시글 삭제
     */
    
    @RequestMapping(value="/Review/deleteboard.do")
    public String deleteBoard(HttpServletRequest request,@ModelAttribute("boardVO") ReviewDto boardVO, Model model) throws Exception{
        
        try{
        	System.out.println(boardVO);
            reviewServiceImpl.deleteBoard(boardVO);
        } catch (Exception e){
            e.printStackTrace();
        }        
        
        return "redirect:/Review/reviewList.do";
        
    }
}
