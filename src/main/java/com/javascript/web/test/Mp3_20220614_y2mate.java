package com.javascript.web.test;

import java.io.File;
import java.util.List;

public class Mp3_20220614_y2mate {

	public static void main(String[] args) {
		String path = "C:\\Users\\82109\\Desktop\\music";
		File dir = new File(path);
		File[] fileList = dir.listFiles();
		//FileWriter writer = new FileWriter(new File(), true);
		
		for(int i=0; i<fileList.length; i++) {
			File file1 = fileList[i];
			String originalFile1Name = file1.getName();
			if(originalFile1Name.contains("y2mate.com - ")) {
				
				String[] strArrForSubstr = {"y2mate.com - ","Official","Audio","Lyric","Video","_192kbps","Studio","Music"};
				
				for(int j=0; j<strArrForSubstr.length; j++) {
					originalFile1Name = originalFile1Name.replaceAll(strArrForSubstr[j], "");
				}
				
			}
			File file2 = new File("C:\\Users\\82109\\Desktop\\music\\"+originalFile1Name);
			boolean success = file1.renameTo(file2);
			System.out.println(success);
			
			/*
			Path source = Paths.get("/file-location/abc.txt");
            Files.move(source, source.resolveSibling("/file-location/abcd.txt"));
			*/
			
			/*
			File file2 = new File("abcd.txt");
			
			if (file2.exists())
		        throw new java.io.IOException("file exists");
		        boolean success = file1.renameTo(file2);
			*/
		}
		
	}

}
