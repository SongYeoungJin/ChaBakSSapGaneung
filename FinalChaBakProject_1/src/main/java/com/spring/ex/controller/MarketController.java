package com.spring.ex.controller;
 
import java.io.File;
import java.util.Base64;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.spring.ex.dto.Market_Dto;
import com.spring.ex.service.MarketService;
 
 
@Controller
public class MarketController {
	
    @Autowired
    private MarketService marketServiceImpl;
    
    /**
     * 게시판 조회
     * @param marketVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/marketList.do")
    public String marketList(@ModelAttribute("marketVO") Market_Dto marketVO, Model model) throws Exception{
                
        List<Market_Dto> list = marketServiceImpl.selectMarketList(marketVO);
        
        model.addAttribute("list", list);
        
        return "market/marketList";
    }
    
    /**
     * 글쓰기 폼
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/MwriteForm.do")
    public String writeMarketForm() throws Exception{
        
        return "market/writeForm";
    }
    
    /**
     * 게시글 등록
     * @param marketVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/Mwrite.do")
    public String write(@RequestParam("file") MultipartFile[] uploadFile, @ModelAttribute("marketVO") Market_Dto marketVO) throws Exception{
    	System.out.println(marketVO);
    	String base64 = "";
    	for (MultipartFile multipartFile : uploadFile) {
    		byte[] b = multipartFile.getBytes();
    		base64 = Base64.getEncoder().encodeToString(b);
		}
    	marketVO.setMar_Img(base64);
        marketServiceImpl.insertMarket(marketVO);
        return "redirect:/marketList.do";
    }
    
    /**
     * 게시글 조회
     * @param marketVO
     * @param model
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/MviewContent.do", method = RequestMethod.POST)
    public String viewForm(@ModelAttribute("marketVO") Market_Dto marketVO, Model model, HttpServletRequest request) throws Exception{
        
    	request.setCharacterEncoding("UTF-8");
        int mar_num = Integer.parseInt(request.getParameter("mar_num"));
        marketVO.setMar_num(mar_num);
        
        Market_Dto resultVO = marketServiceImpl.selectMarketByCode(marketVO);
        
        model.addAttribute("result", resultVO);
        
        return "market/viewForm";
    }
    
    /**
     * 게시글 수정
     * @param marketVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/updatemarket.do", method = RequestMethod.POST)
    public String updateMarket(HttpServletRequest request,@ModelAttribute("marketVO") Market_Dto marketVO, Model model) throws Exception{
        
        try{
            marketServiceImpl.updateMarket(marketVO);
        } catch (Exception e){
            e.printStackTrace();
        }        
        
        return "redirect:/marketList.do";
        
    }
    
    /**
     * 게시글 삭제
     * @param marketVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/deletemarket.do")
    public String deleteMarket(HttpServletRequest request,@ModelAttribute("marketVO") Market_Dto marketVO, Model model) throws Exception{
        
        try{
        	System.out.println(marketVO);
            marketServiceImpl.deleteMarket(marketVO);
        } catch (Exception e){
            e.printStackTrace();
        }        
        
        return "redirect:/marketList.do";
        
    }
    
    
    @RequestMapping(value="/productList.do")
    public String productList(@ModelAttribute("marketVO") Market_Dto marketVO, Model model) throws Exception{
                
        List<Market_Dto> list = marketServiceImpl.selectMarketList(marketVO);
        
        model.addAttribute("list", list);
        
        return "market/productList";
    }
    
    @RequestMapping(value="/productDetail.do", method = RequestMethod.POST)
    public String productDetail(@ModelAttribute("marketVO") Market_Dto marketVO, Model model, HttpServletRequest request) throws Exception{
        Market_Dto resultVO = marketServiceImpl.selectMarketByCode(marketVO);
        model.addAttribute("result", resultVO);
		return "market/productDetail";
    	
    	/*
    	System.out.println("시작");
    	request.setCharacterEncoding("UTF-8");
        int mar_num = Integer.parseInt(request.getParameter("mar_num"));
        marketVO.setMar_num(mar_num);
        
        Market_Dto resultVO = marketServiceImpl.selectMarketByCode(marketVO);
        
        model.addAttribute("result", resultVO);
        
        return "market/productDetail";
        */
    	
    }
}