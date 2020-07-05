package com.spring.ex.Controller;
 
import java.io.File;
import java.util.Base64;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.spring.ex.Dto.CartDto;
import com.spring.ex.Dto.CartListDto;
import com.spring.ex.Dto.MarketDto;
import com.spring.ex.Dto.MemberDto;
import com.spring.ex.Service.MarketService;
 
 
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
    @RequestMapping(value="/market/marketList.do")
    public String marketList(@ModelAttribute("marketVO") MarketDto marketVO, Model model) throws Exception{
                
        List<MarketDto> list = marketServiceImpl.selectMarketList(marketVO);
        
        model.addAttribute("list", list);
        
        return "market/marketList";
    }
    
    /**
     * 글쓰기 폼
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/market/writeForm.do")
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
    @RequestMapping(value="/market/write.do")
    public String write(@RequestParam("file") MultipartFile[] uploadFile, @ModelAttribute("marketVO") MarketDto marketVO) throws Exception{
    	System.out.println(marketVO);
    	String base64 = "";
    	for (MultipartFile multipartFile : uploadFile) {
    		byte[] b = multipartFile.getBytes();
    		base64 = Base64.getEncoder().encodeToString(b);
		}
    	marketVO.setMar_Img(base64);
        marketServiceImpl.insertMarket(marketVO);
        return "redirect:/market/marketList.do";
    }
    
    /**
     * 게시글 조회
     * @param marketVO
     * @param model
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/market/viewContent.do", method = RequestMethod.POST)
    public String viewForm(@ModelAttribute("marketVO") MarketDto marketVO, Model model, HttpServletRequest request) throws Exception{
        
    	request.setCharacterEncoding("UTF-8");
        int mar_num = Integer.parseInt(request.getParameter("mar_num"));
        marketVO.setMar_num(mar_num);
        
        MarketDto resultVO = marketServiceImpl.selectMarketByCode(marketVO);
        
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
    @RequestMapping(value="/market/updatemarket.do", method = RequestMethod.POST)
    public String updateMarket(HttpServletRequest request,@ModelAttribute("marketVO") MarketDto marketVO, Model model) throws Exception{
        
        try{
            marketServiceImpl.updateMarket(marketVO);
        } catch (Exception e){
            e.printStackTrace();
        }        
        
        return "redirect:/market/marketList.do";
        
    }
    
    /**
     * 게시글 삭제
     * @param marketVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/market/deletemarket.do")
    public String deleteMarket(HttpServletRequest request,@ModelAttribute("marketVO") MarketDto marketVO, Model model) throws Exception{
        
        try{
        	System.out.println(marketVO);
            marketServiceImpl.deleteMarket(marketVO);
        } catch (Exception e){
            e.printStackTrace();
        }        
        
        return "redirect:/market/marketList.do";
    }
    
    /**
     * 카트 담기 (Ajax)
     * @return 
     */
    @ResponseBody
    @RequestMapping(value = "/view/addCart", method = RequestMethod.POST)
    public int addCart(CartDto cart, HttpSession session) throws Exception {
		int result = 0;

		MemberDto member = (MemberDto) session.getAttribute("member");
		if (member != null) {
			cart.setM_id(member.getM_id());
			marketServiceImpl.addCart(cart);
			result = 1;
		}
		return result;
	}
    
    // 카트 목록
    @RequestMapping(value = "/cartList", method = RequestMethod.GET)
	public void getCartList(HttpSession session, Model model) throws Exception {
		//logger.info("get cart list");

		MemberDto member = (MemberDto) session.getAttribute("member");
		String m_id = member.getM_id();

		List<CartListDto> cartList = marketServiceImpl.cartList(m_id);

		model.addAttribute("cartList", cartList);
    }
}