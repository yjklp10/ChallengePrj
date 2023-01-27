/*
package com.example.demo.entity;

import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

import javax.persistence.*;

@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Getter
@Setter
@Entity
@Builder
@Table(name = "search")
public class BoardEntity {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long challengeno;

    @Column
    private String challengetitle;

    @Column
    private String onoffchoice;

    @Column
    private String challengeintro;
    
    @Column
    private String chllengeprequency;
    
    @Column
    private String challengeperiod;
    
    @Column
    private Date challengestartdate;
    
    @Column
    private String thumbnailname;
    
    @Column
    private String thumbnailpath;

    @Builder
    public BoardEntity(Long challengeno, String challengetitle, String onoffchoice,
    		String challengeintro, String chllengeprequency, String challengeperiod,
    		Date challengestartdate, String thumbnailname, String thumbnailpath) {
    	
		this.challengeno = challengeno;
		this.challengetitle = challengetitle;
		this.onoffchoice = onoffchoice;
		this.chllengeprequency = chllengeprequency;
		this.challengeperiod = challengeperiod;
		this.challengestartdate = challengestartdate;
		this.challengeintro = challengeintro;
		this.thumbnailname = thumbnailname;
		this.thumbnailpath = thumbnailpath;
    }

	public Long getChallengeno() {
		return challengeno;
	}

	public void setChallengeno(Long challengeno) {
		this.challengeno = challengeno;
	}

	public String getChallengetitle() {
		return challengetitle;
	}

	public void setChallengetitle(String challengetitle) {
		this.challengetitle = challengetitle;
	}

	public String getOnoffchoice() {
		return onoffchoice;
	}

	public void setOnoffchoice(String onoffchoice) {
		this.onoffchoice = onoffchoice;
	}

	public String getChallengeintro() {
		return challengeintro;
	}

	public void setChallengeintro(String challengeintro) {
		this.challengeintro = challengeintro;
	}

	public String getChllengeprequency() {
		return chllengeprequency;
	}

	public void setChllengeprequency(String chllengeprequency) {
		this.chllengeprequency = chllengeprequency;
	}

	public String getChallengeperiod() {
		return challengeperiod;
	}

	public void setChallengeperiod(String challengeperiod) {
		this.challengeperiod = challengeperiod;
	}

	public Date getChallengestartdate() {
		return challengestartdate;
	}

	public void setChallengestartdate(Date challengestartdate) {
		this.challengestartdate = challengestartdate;
	}

	public String getThumbnailname() {
		return thumbnailname;
	}

	public void setThumbnailname(String thumbnailname) {
		this.thumbnailname = thumbnailname;
	}

	public String getThumbnailpath() {
		return thumbnailpath;
	}

	public void setThumbnailpath(String thumbnailpath) {
		this.thumbnailpath = thumbnailpath;
	}
    
    
    
	
}
*/
