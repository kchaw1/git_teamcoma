package teamcoma.common.file;

import java.io.File;
import java.util.UUID;

import com.oreilly.servlet.multipart.FileRenamePolicy;

public class MlecFileRenamePolicy implements FileRenamePolicy{

	@Override
	public File rename(File f) {
		// d:/app/upload/2018/09/06/12/(원본이름)a.jpg
		String parent = f.getParent();    // d:/app/upload/2018/09/06/12
		String name = f.getName();       //a.jpg
		String ext = "";
		//split, substring, indexOf
		int index = name.lastIndexOf(".");
		if(index != -1) {
			ext = name.substring(index);
		}
		String uName = UUID.randomUUID().toString();
		return new File(parent, uName + ext);
	}
	
}
