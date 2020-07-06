package com.spring.ex.controller;
 
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.dto.Community_Board_Dto;
import com.spring.ex.dto.MemberDto;
import com.spring.ex.dto.community_board_comment_Dto;
import com.spring.ex.service.BoardService;
import com.spring.ex.service.CommunityBoardCommentServiceImpl;
 
 
@Controller
public class BoardController {
 
    @Autowired
    private BoardService boardServiceImpl;
    @Autowired
    private CommunityBoardCommentServiceImpl commentSer;
    
    /**
     * 게시판 조회
     * @param boardVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/boardList.do")
    public String boardList(@ModelAttribute("boardVO") Community_Board_Dto boardVO, Model model) throws Exception{
                
        List<Community_Board_Dto> list = boardServiceImpl.selectBoardList(boardVO);
        
        model.addAttribute("list", list);
        
        return "board/boardList";
    }
    
    /**
     * 글쓰기 폼
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/BwriteForm.do")
    public String writeBoardForm() throws Exception{
        
        return "board/writeForm";
    }
    
    /**
     * 게시글 등록
     * @param boardVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/Bwrite.do")
    public String write(@ModelAttribute("boardVO") Community_Board_Dto boardVO, Model model) throws Exception{
        boardServiceImpl.insertBoard(boardVO);
        return "redirect:/boardList.do";
    }
    
    /**
     * 게시글 조회
     * @param boardVO
     * @param model
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/BviewContent.do")
    public String viewForm(@ModelAttribute("boardVO") Community_Board_Dto boardVO, Model model, HttpServletRequest request) throws Exception{
        
    	request.setCharacterEncoding("UTF-8");
        int cb_num = Integer.parseInt(request.getParameter("cb_num"));
        boardVO.setCb_num(cb_num);
        
        Community_Board_Dto resultVO = boardServiceImpl.selectBoardByCode(boardVO);
        community_board_comment_Dto commentVO = new community_board_comment_Dto();
        commentVO.setCb_num(cb_num);
        List<community_board_comment_Dto> commList = commentSer.SelectList(commentVO);
        System.out.println("댓글 갯수:"+commList.size());
        model.addAttribute("result", resultVO);
        model.addAttribute("comment", commList);
        
        return "board/viewForm";
    }
    
    /**
     * 게시글 수정
     * @param boardVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/updateboard.do", method = RequestMethod.POST)
    public String updateBoard(HttpServletRequest request,@ModelAttribute("boardVO") Community_Board_Dto boardVO, Model model) throws Exception{
        
        try{
            boardServiceImpl.updateBoard(boardVO);
        } catch (Exception e){
            e.printStackTrace();
        }        
        
        return "redirect:/boardList.do";
        
    }
    
    /**
     * 게시글 삭제
     * @param boardVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/deleteboard.do")
    public String deleteBoard(HttpServletRequest request, @ModelAttribute("boardVO") Community_Board_Dto boardVO, Model model) throws Exception{
        
        try{
        	System.out.println(boardVO);
            boardServiceImpl.deleteBoard(boardVO);
        } catch (Exception e){
            e.printStackTrace();
        }        
        
        return "redirect:/boardList.do";
        
    }
    
	/*
	 * public void dd(HttpServletRequest request) { MemberDto user = (MemberDto)
	 * request.getSession().getAttribute("userData"); }
	 */
}