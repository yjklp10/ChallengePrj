package com.example.demo.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.biz.CommentBiz;
import com.example.demo.biz.MakingChallengeBiz;
import com.example.demo.dto.CommentDto;
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
	public String challengeView(makingChallengeDto challenge, Model model) {
		logger.info("challenge");
		
		model.addAttribute("challenge", makingChallengeBiz.getDetail(challenge.getChallengeno()));
		
		
		List<CommentDto> comment = commentBiz.commentListService(challenge.getChallengeno());
		
		model.addAttribute("comment",comment);
		
		return "challdetail";
	}
	
	@GetMapping(value="/payment")
	public String paymentView(makingChallengeDto challenge, Model model) {
		logger.info("payment");
		
		model.addAttribute("payment", makingChallengeBiz.getDetail(challenge.getChallengeno()));
		
		return "payment";
	}
	
	@GetMapping(value="/participant")
	public String participantnoView(makingChallengeDto challenge, Model model) {
		logger.info("participant");
		
		model.addAttribute("participant", makingChallengeBiz.getDetail(challenge.getChallengeno()));
		
		return "challengelist";
	}
	
	@RequestMapping(value="/replyWrite", method = RequestMethod.POST)
	public String replyWrite(CommentDto comment, RedirectAttributes rttr) throws Exception {
		logger.info("reply Write");
		
		commentBiz.commentInsertService(comment);
		
		rttr.addAttribute("challengeno", comment.getChallengeno());
		
		
		return "redirect:/chdetail";
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
			@RequestParam("challengeperiod") int challengeperiod,
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
		
			//dto 생성
			makingChallengeDto dto = new makingChallengeDto();
		
			//String to date or time
			
        	LocalTime offStartTime = LocalTime.parse(offlinestarttime);
    		LocalTime certificationStartTime = LocalTime.parse(certificationstarttime);
    		LocalTime certificationEndTime = LocalTime.parse(certificationendtime);
    		LocalDate challengeStartDate = LocalDate.parse(challengestartdate);
    		LocalDate challengeEndDate = LocalDate.parse(challengeenddate);
    	
    		// 파일 이름 가져오기
    		String successOgName = success.getOriginalFilename();
        	String failOgName = fail.getOriginalFilename();
        	String thumbnailOgName = thumbnail.getOriginalFilename();
        	
        	String successFileName = successOgName.substring(successOgName.lastIndexOf("\\") + 1);
        	String failFileName = failOgName.substring(failOgName.lastIndexOf("\\") + 1);
        	String thumbnailFileName = thumbnailOgName.substring(thumbnailOgName.lastIndexOf("\\") + 1);
        	
//        	// 폴더 생성
//        	String folderPath = makeFolder();
//        	
        	// 랜덤 아이디 생성
        	String uuid1 = UUID.randomUUID().toString();
        	String uuid2 = UUID.randomUUID().toString();
        	String uuid3 = UUID.randomUUID().toString();
        	
        	//경로, 파일 이름 생성 및 패스 생성
        	String successSavePath = uploadPath  + File.separator;
        	String successSaveName = uuid1 + "_" + successFileName;
            Path FinalsuccessSavePath = Paths.get(successSavePath+successSaveName);
            
            String failSavePath = uploadPath + File.separator;
            String failSaveName = uuid2 + "_" + failFileName;
            Path FinalfailSavePath = Paths.get(failSavePath+failSaveName);
            
            String thumbnailSavePath = uploadPath + File.separator;
            String thumbnailSaveName = uuid3 + "_" + thumbnailFileName;
            Path FinalthumbnailSavePath = Paths.get(thumbnailSavePath + thumbnailSaveName);
            
            Authentication A = SecurityContextHolder.getContext().getAuthentication();
        	String memberid = A.getName();
            
            // 객체에 담기
        	dto.setChallengetitle(challengetitle);
    		dto.setOfflineaddress(offlineaddress);
    		dto.setOfflineaddressdetail(offlineaddressdetail);
    		dto.setOfflinestarttime(offStartTime);
    		dto.setChallengefrequency(challengefrequency);
    		dto.setChallengestartdate(challengeStartDate);
    		dto.setChallengeenddate(challengeEndDate);
    		dto.setChallengeperiod(challengeperiod);
    		dto.setCertificationstarttime(certificationStartTime);
    		dto.setCertificationendtime(certificationEndTime);
        	dto.setCertificationway(certificationway);
        	dto.setChallengeintro(challengeintro);
        	dto.setDeposit(deposit);
        	dto.setMaxchallenger(maxchallenger);
        	dto.setCategory(category);
        	dto.setSuccessimgname(successSaveName);
        	dto.setFailimgname(failSaveName);
        	dto.setThumbnailname(thumbnailSaveName);
        	dto.setSuccessimgpath(successSavePath);
        	dto.setFailimgpath(failSavePath);
        	dto.setThumbnailpath(thumbnailSavePath);
        	dto.setMemberid(memberid);
   
        	// 폴더 및 파일 저장
        	success.transferTo(FinalsuccessSavePath);
        	fail.transferTo(FinalfailSavePath);
        	thumbnail.transferTo(FinalthumbnailSavePath);
        	
        	
        	
        
    		int res = makingChallengeBiz.offlineinsert(dto);
    		
    		if(res>0) {

    		return "redirect:/home_main";
    		}

    		return "redirect:/home_main";
    		

	}
	
	@PostMapping("/registOnlineChallenge")
	public String registOnlineChallenge(
			@RequestParam("challengetitle") String challengetitle,
			@RequestParam("challengefrequency") String challengefrequency,
			@RequestParam("challengestartdate") String challengestartdate,
			@RequestParam("challengeenddate") String challengeenddate,
			@RequestParam("challengeperiod") int challengeperiod,
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
		
			//dto 생성
			makingChallengeDto dto = new makingChallengeDto();
		
			//String to date or time
			
        	
    		LocalTime certificationStartTime = LocalTime.parse(certificationstarttime);
    		LocalTime certificationEndTime = LocalTime.parse(certificationendtime);
    		LocalDate challengeStartDate = LocalDate.parse(challengestartdate);
    		LocalDate challengeEndDate = LocalDate.parse(challengeenddate);
    	
    		// 파일 이름 가져오기
    		String successOgName = success.getOriginalFilename();
        	String failOgName = fail.getOriginalFilename();
        	String thumbnailOgName = thumbnail.getOriginalFilename();
        	
        	String successFileName = successOgName.substring(successOgName.lastIndexOf("\\") + 1);
        	String failFileName = failOgName.substring(failOgName.lastIndexOf("\\") + 1);
        	String thumbnailFileName = thumbnailOgName.substring(thumbnailOgName.lastIndexOf("\\") + 1);
        	
//        	// 폴더 생성
//        	String folderPath = makeFolder();
        	
        	// 랜덤 아이디 생성
        	String uuid1 = UUID.randomUUID().toString();
        	String uuid2 = UUID.randomUUID().toString();
        	String uuid3 = UUID.randomUUID().toString();
        	
        	//경로, 파일 이름 생성 및 패스 생성
//        	String successSavePath = uploadPath + File.separator + folderPath + File.separator;
//        	String successSaveName = uuid1 + "_" + successFileName;
//            Path FinalsuccessSavePath = Paths.get(successSavePath+successSaveName);
//            
        	String successSavePath = uploadPath + File.separator;
        	String successSaveName = uuid1 + "_" + successFileName;
            Path FinalsuccessSavePath = Paths.get(successSavePath+successSaveName);
            
            
            String failSavePath = uploadPath + File.separator;
            String failSaveName = uuid2 + "_" + failFileName;
            Path FinalfailSavePath = Paths.get(failSavePath+failSaveName);
            
            String thumbnailSavePath = uploadPath+ File.separator;
            String thumbnailSaveName = uuid3 + "_" + thumbnailFileName;
            Path FinalthumbnailSavePath = Paths.get(thumbnailSavePath + thumbnailSaveName);
            
            Authentication A = SecurityContextHolder.getContext().getAuthentication();
        	String memberid = A.getName();
            
            // 객체에 담기
        	dto.setChallengetitle(challengetitle);
    		dto.setChallengefrequency(challengefrequency);
    		dto.setChallengestartdate(challengeStartDate);
    		dto.setChallengeenddate(challengeEndDate);
    		dto.setChallengeperiod(challengeperiod);
    		dto.setCertificationstarttime(certificationStartTime);
    		dto.setCertificationendtime(certificationEndTime);
        	dto.setCertificationway(certificationway);
        	dto.setChallengeintro(challengeintro);
        	dto.setDeposit(deposit);
        	dto.setMaxchallenger(maxchallenger);
        	dto.setCategory(category);
        	dto.setSuccessimgname(successSaveName);
        	dto.setFailimgname(failSaveName);
        	dto.setThumbnailname(thumbnailSaveName);
        	dto.setSuccessimgpath(successSavePath);
        	dto.setFailimgpath(failSavePath);
        	dto.setThumbnailpath(thumbnailSavePath);
        	dto.setMemberid(memberid);
   
        	// 폴더 및 파일 저장
        	success.transferTo(FinalsuccessSavePath);
        	fail.transferTo(FinalfailSavePath);
        	thumbnail.transferTo(FinalthumbnailSavePath);
        	
        	
        	
        
    		int res = makingChallengeBiz.onlineinsert(dto);
    		
    		if(res>0) {


    		return "redirect:/home_main";
    		}
    		return "redirect:/home_main";

	}
//	
//	 private String makeFolder() {
//
//	        String str = LocalDate.now().format(DateTimeFormatter.ofPattern("yyyy/MM/dd"));
//
//	        String folderPath = str.replace("/", File.separator);
//
//	        // make folder ----
//	        File uploadPatheFolder = new File(uploadPath,folderPath);
//
//	        if(uploadPatheFolder.exists() == false){
//	            uploadPatheFolder.mkdirs();
//	        }
//
//	        return folderPath;
//	    }

}
