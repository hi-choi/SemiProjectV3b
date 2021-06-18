package hi_choi.spring.mvc.dao;

import hi_choi.spring.mvc.vo.Gallery;
import hi_choi.spring.mvc.vo.Pds;

import java.util.List;
import java.util.Map;

public interface GalleryDAO {
    int insertGallery(Gallery p);
    List<Gallery> selectGallery(int snum);
    Gallery selectOneGallery(String gno);

    int updateGallery(Gallery g);

    String readFnames(String gno);

    String readFsizes(String gno);
}
