package com.spring.ex.Controller;
 
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ex.Dto.Community_Board_Dto;
import com.spring.ex.Dto.MemberDto;
import com.spring.ex.Dto.ReplyDto;
import com.spring.ex.Service.BoardService;

 
 
@Controller
public class BoardController {
 
    @Autowired
    private BoardService boardServiceImpl;
    
    /**
     * 게시판 조회
     * @param boardVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/board/boardList.do")
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
    @RequestMapping(value="/board/writeForm.do")
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
    @RequestMapping(value="/board/write.do")
    public String write(@ModelAttribute("boardVO") Community_Board_Dto boardVO, Model model) throws Exception{
        boardServiceImpl.insertBoard(boardVO);
        return "redirect:/board/boardList.do";
    }
    
    /**
     * 게시글 조회
     * @param boardVO
     * @param model
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/board/viewContent.do", method = RequestMethod.POST)
    public String viewForm(@ModelAttribute("boardVO") Community_Board_Dto boardVO, Model model, HttpServletRequest request) throws Exception{
        
    	request.setCharacterEncoding("UTF-8");
        int cb_num = Integer.parseInt(request.getParameter("cb_num"));
        boardVO.setCb_num(cb_num);
        
        Community_Board_Dto resultVO = boardServiceImpl.selectBoardByCode(boardVO);
        
        model.addAttribute("result", resultVO);

        return "board/viewForm";
    }
    
    /**
     * 게시글 수정
     * @param boardVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/board/updateboard.do", method = RequestMethod.POST)
    public String updateBoard(HttpServletRequest request,@ModelAttribute("boardVO") Community_Board_Dto boardVO, Model model) throws Exception{
        
        try{
            boardServiceImpl.updateBoard(boardVO);
        } catch (Exception e){
            e.printStackTrace();
        }        
        
        return "redirect:/board/boardList.do";
        
    }
    
    /**
     * 게시글 삭제
     * @param boardVO
     * @param model
     * @return
     * @throws Exception
     */
    
    @RequestMapping(value="/board/deleteboard.do")
    public String deleteBoard(HttpServletRequest request,@ModelAttribute("boardVO") Community_Board_Dto boardVO, Model model) throws Exception{
        
        try{
        	System.out.println(boardVO);
            boardServiceImpl.deleteBoard(boardVO);
        } catch (Exception e){
            e.printStackTrace();
        }        
        
        return "redirect:/board/boardList.do";
        
    }
    
    /*
    @RequestMapping("/board/deleteboard.do")
    @ResponseBody
    public int deleteBoard(Map<String,Object> commandMap) throws Exception{
        int result=1;
        try {
            int cnt = Integer.parseInt((String) commandMap.get("CNT"));
            String rprtOdr = (String)commandMap.get("RPRT_ODR");
            String [] strArray = rprtOdr.split(",");
            for(int i=0; i<cnt; i++) {
                int temp = Integer.parseInt((String)strArray[i]);
                commandMap.put("RPRT_ODR", temp);
               BoardService.deleteBoard("BoardDAO.deleteBoard", commandMap);
            }
        } catch (Exception e) {
            //log.debug(e.getMessage());
            result=0;
        }
        return result;
       }
       */
    // reply매핑 개 ㅈ같아서 그만둠 해야됨
 
    
    
}