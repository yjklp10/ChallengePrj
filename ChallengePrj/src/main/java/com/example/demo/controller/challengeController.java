package com.example.demo.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.biz.CommentBiz;
import com.example.demo.biz.MakingChallengeBiz;
import com.example.demo.dto.CommentDto;
import com.example.demo.dto.Testchallenge;
import com.example.demo.dto.makingChallengeDto;

@Controller
public class challengeController {
	
	private static final Logger logger= LoggerFactory.getLogger(challengeController.class);
	
	@Autowired
	private MakingChallengeBiz makingChallengeBiz;
	
	@Autowired
	private CommentBiz commentBiz;
	
	@Value("${com.example.upload.path}") // application.properties의 변수
    private String uploadPath;
	
	
	//신호준
	@GetMapping(value="/chdetail")
	public String challengeView(Testchallenge challenge, Model model) {
		logger.info("challenge");
		
		model.addAttribute("challenge", makingChallengeBiz.getDetail(challenge.getChallengeno()));
		
		
		List<CommentDto> comment = commentBiz.commentListService(challenge.getChallengeno());
		
		model.addAttribute("comment",comment);
		
		return "challdetail";
	}
	
	@GetMapping(value="/payment")
	public String paymentView(Testchallenge challenge, Model model) {
		logger.info("payment");
		
		model.addAttribute("payment", makingChallengeBiz.getDetail(challenge.getChallengeno()));
		
		return "payment";
	}
	
	@RequestMapping(value="/replyWrite", method = RequestMethod.POST)
	public String replyWrite(CommentDto comment, RedirectAttributes rttr) throws Exception {
		logger.info("reply Write");
		
		commentBiz.commentInsertService(comment);
		
		rttr.addAttribute("challengeno", comment.getChallengeno());
		
		
		return "redirect:/chdetail";
	}
//	
//	
//	@PostMapping("/registOnlineChallenge")
//	public String registOnlineChallenge(
//			
//			@RequestPart MultipartFile successimg,
//			 @RequestPart MultipartFile failimg,
//			 @RequestPart MultipartFile thumbnail
//						 ) throws IOException {
//		
//		if(!successimg.isEmpty()) {
//        	String fileNm1 = getImgFileNm(successimg);
//        	dto.setSuccessimgname(fileNm1);
//        	
//        	successimg.transferTo(new File(fileNm1));
//
//        }
//		if(!failimg.isEmpty()) {
//        	String fileNm2 = getImgFileNm(failimg);
//        	dto.setFailimgname(fileNm2);
//        	
//        	failimg.transferTo(new File(fileNm2));
//        }
//		if(!thumbnail.isEmpty()) {
//        	String fileNm3 = getImgFileNm(thumbnail);
//        	dto.setThumbnailname(fileNm3);
//        	
//        	thumbnail.transferTo(new File(fileNm3));
//        }
//		makingChallengeBiz.insert(dto);
//
//		return "indeex";
//	}

	
	public String getImgFileNm(MultipartFile file) {
		String fileName = file.getOriginalFilename();
		String extension = fileName.substring(fileName.lastIndexOf("."), fileName.length());
		
		UUID uuid = UUID.randomUUID();
        String newFileName = uuid.toString() + extension;
        logger.info(newFileName);
        return newFileName;
	}
	
	@PostMapping("/registOfflineChallenge")
	public String registOfflineChallenge(
			@RequestParam("challengetitle") String challengetitle,
			@RequestParam("offlineaddress") String offlineaddress,
			@RequestParam("offlineaddressdetail") String offlineaddressdetail,
			@RequestParam("offlinestarttime") String offlinestarttime,
			@RequestParam("challengefrequency") String challengefrequency,
			@RequestParam("challengestartdate") String challengestartdate,
			@RequestParam("challengeenddate") String challengeenddate,
			@RequestParam("challengeperiod") String challengeperiod,
			@RequestParam("certificationstarttime") String certificationstarttime,
			@RequestParam("certificationendtime") String certificationendtime,
			@RequestParam("certificationway") String certificationway,
			@RequestParam("challengeintro") String challengeintro,
			@RequestParam("deposit") int deposit,
			@RequestParam("maxchallenger") int maxchallenger,
			@RequestParam("category") String category,
			@RequestPart MultipartFile success,
			 @RequestPart MultipartFile fail,
			 @RequestPart MultipartFile thumbnail
						 ) throws IOException {
		
		makingChallengeDto dto = new makingChallengeDto();
		String savePath = "/Users/lee/Desktop/uploadIMG:\\\\upload";
//		윈도우는 아래걸
//		String savePath = "C:/";
		
		
        	String successName = getImgFileNm(success);
        	String failName = getImgFileNm(fail);
        	String thumbnailName = getImgFileNm(thumbnail);

        	dto.setSuccessimgname(successName);
        	dto.setFailimgname(failName);
        	dto.setThumbnailname(thumbnailName);
        	
        	dto.setSuccessimgpath(savePath);
        	dto.setFailimgpath(savePath);
        	dto.setThumbnailpath(savePath);
        	
        	dto.setChallengetitle(challengetitle);
       
    		dto.setOfflineaddress(offlineaddress);
    		dto.setOfflineaddressdetail(offlineaddressdetail);	
    		dto.setOfflinestarttime(offlinestarttime);
    		dto.setChallengefrequency(challengefrequency);
    		
    		dto.setChallengestartdate(challengestartdate);
    		dto.setChallengeenddate(challengeenddate);
    		dto.setChallengeperiod(challengeperiod);
    		dto.setCertificationstarttime(certificationstarttime);
    		dto.setCertificationendtime(certificationendtime);

        	dto.setCertificationway(certificationway);
        	dto.setChallengeintro(challengeintro);
        	dto.setDeposit(deposit);
        	dto.setMaxchallenger(maxchallenger);
        	dto.setCategory(category);
        	String successPath = savePath+successName;
        	String failPath = savePath+failName;
        	String thumbnailPath = savePath+thumbnailName;
        	
        	logger.info(thumbnailPath);
        	
        	success.transferTo(new File(successPath));

        	fail.transferTo(new File(failPath));
        
        	thumbnail.transferTo(new File(thumbnailPath));

    		int res = makingChallengeBiz.offlineinsert(dto);
    		if(res>0) {
    			return "indeex";
    		}
    		return "home_main";
	}
//	
//	if(!successimg.isEmpty()) {
//    	String fileNm1 = getImgFileNm(successimg);
//    	dto.setSuccessimgname(fileNm1);
//    	
//    	successimg.transferTo(new File(fileNm1));
//
//    }
//	if(!failimg.isEmpty()) {
//    	String fileNm2 = getImgFileNm(failimg);
//    	dto.setFailimgname(fileNm2);
//    	
//    	failimg.transferTo(new File(fileNm2));
//    }
//	if(!thumbnail.isEmpty()) {
//    	String fileNm3 = getImgFileNm(thumbnail);
//    	dto.setThumbnailname(fileNm3);
//    	
//    	thumbnail.transferTo(new File(fileNm3));
//    }
//	makingChallengeBiz.offlineinsert(dto);
//
//	return "indeex";

}
