package bigpic.bean;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

public class PhotoAlbum {
    public static String ATTRIBUTE_NAME = "Photo_Album";

    private List<byte[]> photoDataList = new ArrayList<>();
    private List<String> names = new ArrayList<>();

    public PhotoAlbum() {
    }

    public static PhotoAlbum getPhotoAlbum(ServletContext context) {
        if (context.getAttribute(ATTRIBUTE_NAME) == null) {
            PhotoAlbum pa = new PhotoAlbum();
            context.setAttribute(ATTRIBUTE_NAME, pa);
        }
        return (PhotoAlbum) context.getAttribute(ATTRIBUTE_NAME);
    }


    public static PhotoAlbum getPhotoAlbumS(HttpSession session) {
        return (PhotoAlbum) session.getAttribute(ATTRIBUTE_NAME);
    }

    public void setSession(HttpSession session) {
        session.setAttribute(ATTRIBUTE_NAME, this);
    }


    public synchronized void addPhoto(String name, byte[] bytes) {
        this.photoDataList.add(bytes);
        this.names.add(name);
    }

    public synchronized byte[] getPhotoData(int index) {
        return photoDataList.get(index);
    }

    public synchronized String getPhotoName(int index) {
        return names.get(index);
    }

    public synchronized int getPhotoQuantity() {
        return photoDataList.size();
    }

    public synchronized void removePhoto(int index) {
        photoDataList.remove(index);
        names.remove(index);
    }
}
