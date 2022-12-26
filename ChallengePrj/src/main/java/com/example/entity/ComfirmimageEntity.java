package com.example.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import com.sun.istack.NotNull;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Getter
public class ComfirmimageEntity {

@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private Long id;

@NotNull
private long boardIdx;

@NotNull
private String originalFileName;

@NotNull
private String storedFileName;

private long fileSize;





	
	
}
