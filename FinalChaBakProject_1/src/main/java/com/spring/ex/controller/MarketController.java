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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.spring.ex.dto.Market_Dto;
import com.spring.ex.service.MarketService;
 
 
@Controller
public class MarketController {
	
    @Autowired
    private MarketService marketServiceImpl;
    
    /**
     * 게시판 조회
     */
    @RequestMapping(value="/marketList.do")
    public String marketList(@ModelAttribute("marketVO") Market_Dto marketVO, Model model) throws Exception{
                
        List<Market_Dto> list = marketServiceImpl.selectMarketList(marketVO);
        
        model.addAttribute("list", list);
        
        return "market/marketList";
    }
    
    /**
     * 글쓰기 폼
     */
    @RequestMapping(value="/MwriteForm.do")
    public String writeMarketForm() throws Exception{
        
        return "market/writeForm";
    }
    
    /**
     * 게시글 등록
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
    
    @RequestMapping(value="/productDetail.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String productDetail(@ModelAttribute("marketVO") Market_Dto marketVO, Model model, HttpServletRequest request) throws Exception{
        /*
    	Market_Dto resultVO = marketServiceImpl.selectMarketByCode(marketVO);
        model.addAttribute("result", resultVO);
		return "market/productDetail";
    	*/
    	
    	System.out.println("시작");
    	request.setCharacterEncoding("UTF-8");
        int mar_num = Integer.parseInt(request.getParameter("mar_num"));
        marketVO.setMar_num(mar_num);
        
        Market_Dto resultVO = marketServiceImpl.selectMarketByCode(marketVO);
        
        model.addAttribute("result", resultVO);
        
        return "market/productDetail";
    }
    
    
    @RequestMapping("list.do") //세부적인 url mapping
    public ModelAndView list(ModelAndView mav) throws Exception {
        mav.setViewName("/market/product_list"); //이동할 페이지 이름 (product_list.jsp 파일로 이동)
        mav.addObject("list", marketServiceImpl.listProduct());  //데이터 저장
        
        //서비스에서 상품 리스트를 받아와 list라는 이름의 변수에 저장
        
        //service -> model -> mybatis -> 리스트를 받아옴
        
        return mav; //페이지 이동    
    }
    
    
    //상세정보페이지에서 url매핑되서 실행?
    @RequestMapping("/market/productDetail/{mar_num}")
    public ModelAndView productDetail(
            //아까 product_list 페이지에서 보낸 id와, 
            @PathVariable("mar_num") //URL에 포함된 변수이기 때문에 반드시 @PathVariable를 사용한다.
            int mar_num,
            ModelAndView mav) throws Exception {

        //데이터를 보낼 뷰를 설정하고, 보낼 데이터를 동시에 설정하기 위해 ModelAndView를 사용
        //ModelAndView에 데이터를 보낼 뷰의 위치를 설정하고,
        //보낼 데이터를 설정하고, ModelAndView타입으로 리턴한다.
        mav.setViewName("/market/productDetail");
        mav.addObject("dto", marketServiceImpl.detailProduct(mar_num));

        return mav;
    }
}