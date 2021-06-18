package hi_choi.spring.mvc.service;

import hi_choi.spring.mvc.vo.Gallery;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface GalleryService {
    boolean newGallery(Gallery g, MultipartFile[] img);
    List<Gallery> readGallery(String cp);
    Gallery readOneGallery(String gno);

    void modifyGallery(Gallery g, MultipartFile[] img);
}
