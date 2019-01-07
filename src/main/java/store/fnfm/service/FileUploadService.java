package store.fnfm.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Calendar;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service("fileUploadService")
public class FileUploadService {
	private String uploadPath = "/SpringHome/fnfm03/src/main/webapp/static/img/fileupload";
	//Windows의 경우에는 JVM이 자동으로 Eclipse의 workspace의 drive를 인식한다.
	public String restore(MultipartFile multipartFile, String uploadPath) {
		this.uploadPath = uploadPath;
		String savedFileName = null;
		try {
			String originalName = multipartFile.getOriginalFilename();
			String extName = originalName.substring(originalName.lastIndexOf("."), 
																			originalName.length());
			long fileSize = multipartFile.getSize();
			savedFileName = this.generateSavedName(extName);
			
			System.out.println("originalName = " + originalName);
			System.out.println("extName = " + extName);
			System.out.println("fileSize = " + fileSize);
			System.out.println("savedFileName = " + savedFileName);
			
			saveToFileSystem(multipartFile, savedFileName);
		}catch(Exception ex) {
			System.out.println(ex);
		}	
		return savedFileName;
	}
	private void saveToFileSystem(MultipartFile mFile, String savedFileName) 
			throws IOException{
		byte [] buffers = mFile.getBytes();
		File file = new File(this.uploadPath + "/" + savedFileName);
		FileOutputStream fos = new FileOutputStream(file);
		fos.write(buffers);
		fos.close();
	}
	
	private String generateSavedName(String extName) {
		String newName = "";
		Calendar now = Calendar.getInstance();
		newName += now.get(Calendar.YEAR);
		newName += now.get(Calendar.MONTH) + 1;
		newName += now.get(Calendar.DATE);
		newName += now.get(Calendar.HOUR_OF_DAY);
		newName += now.get(Calendar.MINUTE);
		newName += now.get(Calendar.SECOND);
		newName += now.get(Calendar.MILLISECOND);
		newName += extName;
		return newName;
	}
}
