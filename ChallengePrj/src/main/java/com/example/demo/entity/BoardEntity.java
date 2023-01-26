/*
package com.example.demo.entity;

import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.Date;

import javax.persistence.*;

@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Getter
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
	
}
*/