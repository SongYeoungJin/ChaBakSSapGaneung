package com.spring.ex.service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.spring.ex.dao.MarketDao;
import com.spring.ex.dto.MarketDto;

public class MarketService implements IMarketService{
	 	@Autowired
	    private MarketDao marketDAOService;
	    
	    @Override
	    public List<MarketDto> selectMarketList(MarketDto dto) throws Exception {
	        List<MarketDto> list = null;
	        list = marketDAOService.selectMarketList(dto);
	        return list;
	    }
	 
	    @Override
	    public void marketInsert(MarketDto dto) throws Exception {
	        marketDAOService.marketInsert(dto);
	    }
	    
	    /*
	    public static String getRandomString() {
	    	 
	        return UUID.randomUUID().toString().replaceAll("-", "");
	    }
	    */
	    
	    /*
	    public List<BoardFileForm> getMarketFileInfo(MarketDto marketVO) throws Exception {
			List<MultipartFile> files = marketVO.getMar_img();
			 
	        List<BoardFileForm> boardFileList = new ArrayList<BoardFileForm>();
	 
	        BoardFileForm boardFileForm = new BoardFileForm();
	 
	        int mar_num = marketVO.getMar_num();
	        String fileName = null;
	        String fileExt = null;
	        String fileNameKey = null;
	        String fileSize = null;
	        // 파일이 저장될 Path 설정
	        String filePath = "C:\\upload\\file";
	        
	        if (files != null && files.size() > 0) {
	 
	            File file = new File(filePath);
	            
	            // 디렉토리가 없으면 생성
	            if (file.exists() == false) {
	                file.mkdirs();
	            }
	 
	            for (MultipartFile multipartFile : files) {
	 
	                fileName = multipartFile.getOriginalFilename();
	                fileExt = fileName.substring(fileName.lastIndexOf("."));
	                // 파일명 변경(uuid로 암호화) + 확장자
	                fileNameKey = getRandomString() + fileExt;
	                fileSize = String.valueOf(multipartFile.getSize());
	 
	                // 설정한 Path에 파일 저장
	                file = new File(filePath + "/" + fileNameKey);
	 
	                multipartFile.transferTo(file);
	 
	                boardFileForm = new BoardFileForm();
	                boardFileForm.setMar_num(mar_num);
	                boardFileForm.setFile_name(fileName);
	                boardFileForm.setFile_name_key(fileNameKey);
	                boardFileForm.setFile_path(filePath);
	                boardFileForm.setFile_size(fileSize);
	                boardFileList.add(boardFileForm);
	            }
	        }
	        return boardFileList;
		}
		*/
	 
	    @Override
	    public void marketUpdate(MarketDto dto) throws Exception {
	        marketDAOService.marketUpdate(dto);
	    }
	 
	    @Override
	    public void marketDelete(MarketDto dto) throws Exception {
	        marketDAOService.marketDelete(dto);
	    }
	    /*
	    @Override
	    public MarketDto selectMarketByCode(MarketDto marketVO) throws Exception {
	        
	    	MarketDto resultVO = marketDAOService.selectMarketByCode(marketVO);
	        
	        return resultVO; 
	    }
	    */
}
