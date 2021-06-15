package hi_choi.spring.mvc.service;

import hi_choi.spring.mvc.vo.Pds;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface PdsService {

    boolean newPds(Pds p, MultipartFile[] file);
    List<Pds> readPds(String cp);
    int countPds();

    Pds readOnePds(String pno);
    Pds readOneFname(String pno, String order);

    boolean downCountPds(String pno, String order);


    void modifyRecmd(String pno);

    String readPrevpno(String pno);

    String readNxtpno(String pno);

    Pds removePds(String pno);
}
