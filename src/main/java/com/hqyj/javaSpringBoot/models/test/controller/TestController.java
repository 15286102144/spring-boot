package com.hqyj.javaSpringBoot.models.test.controller;

import com.hqyj.javaSpringBoot.models.test.entity.City;
import com.hqyj.javaSpringBoot.models.test.entity.Country;
import com.hqyj.javaSpringBoot.models.test.service.CityService;
import com.hqyj.javaSpringBoot.models.test.service.CountryServcie;
import com.hqyj.javaSpringBoot.models.test.vo.ApplicationTest;
import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.MalformedURLException;
import java.nio.file.Paths;
import java.util.List;
import java.util.stream.Collectors;


@Controller
@RequestMapping("/test")
public class TestController {

    private final static Logger LOGGER = LoggerFactory.getLogger(TestController.class);
    @Value("${server.port}")
    private int port;
    @Value("${com.name}")
    private String name;
    @Value("${com.age}")
    private int age;
    @Value("${com.desc}")
    private String desc;
    @Value("${com.random}")
    private String random;


    @GetMapping("/logtest")
    @ResponseBody
    public String logtest() {
        LOGGER.trace("trace");
        LOGGER.debug("debug");
        LOGGER.info("info");
        LOGGER.warn("warn");
        LOGGER.error("error");
        return "logtest";
    }

    @GetMapping("/config")
    @ResponseBody
    public String configtest() {
        StringBuffer s = new StringBuffer();
        s
                .append(port).append("-----")
                .append(name).append("-----")
                .append(age).append("-----")
                .append(desc).append("-----")
                .append(random).append("-----").append("<br>");
        s
                .append(applicationTest.getPort()).append("-----")
                .append(applicationTest.getName()).append("-----")
                .append(applicationTest.getAge()).append("-----")
                .append(applicationTest.getDesc()).append("-----")
                .append(applicationTest.getRandom()).append("-----").append("<br>");
        return s.toString();
    }

    @Autowired
    private ApplicationTest applicationTest;

    //git方式请求
    @GetMapping("/demo1")
    @ResponseBody
    public String text() {
        return "ddsfsdfsdk6333554784";
    }

    @Autowired
    private CityService cityService;
    @Autowired
    private CountryServcie countryServcie;

    /**
     * 127.0.0.1/test/index
     */
    @GetMapping("/index")
    public String testIndexPage(ModelMap modelMap) {
        int countryId = 522;
        List<City> cities = cityService.getCitiesByCountryId(countryId);
        cities = cities.stream().limit(10).collect(Collectors.toList());
        Country country = countryServcie.getCountryByCountryId(countryId);

        modelMap.addAttribute("thymeleafTitle", "1234665564");
        modelMap.addAttribute("checked", true);
        modelMap.addAttribute("currentNumber", 99);
        modelMap.addAttribute("changeType", "checkbox");
        modelMap.addAttribute("baiduUrl", "/test/log");
        modelMap.addAttribute("city", cities.get(0));
        modelMap.addAttribute("shopLogo",
                "http://cdn.duitang.com/uploads/item/201308/13/20130813115619_EJCWm.thumb.700_0.jpeg");
        modelMap.addAttribute("shopLogo",
                "/upload/1111.png");
        modelMap.addAttribute("country", country);
        modelMap.addAttribute("cities", cities);
        modelMap.addAttribute("updateCityUri", "/api/cititt");
        // 返回外层的碎片组装器
        return "index";
    }

    /**
     * 127.0.0.1/test/index2
     */
    @GetMapping("/index2")
    public String testIndex2Page(ModelMap modelMap) {
        modelMap.addAttribute("template", "test/index2");
        return "index";
    }

    /**
     * 127.0.0.1/test/testDesc?paramKey=fuck ---- get
     */
    @GetMapping("/testDesc")
    @ResponseBody
        public String testDesc (HttpServletRequest request,
                @RequestParam(value = "paramKey") String paramValue){
            String paramValue2 = request.getParameter("paramKey");
            return "This is test module desc." + paramValue + "==" + paramValue2;
        }

        /**
     * 127.0.0.1/test/files---- post
     */
    @PostMapping(value = "/files",consumes = "multipart/form-data")
        public String uploadfils (@RequestParam MultipartFile[] files, RedirectAttributes redirectAttributes){
    boolean empty = true;
        try {
        for (MultipartFile file : files) {
            if (file.isEmpty()) {
                continue;
            }

            String destFilePath = "C:\\Users\\wang\\Desktop\\files\\" + file.getOriginalFilename();
            File destFile = new File(destFilePath);
            file.transferTo(destFile);
            empty = false;
        }

        if (empty) {
            redirectAttributes.addFlashAttribute(
                    "message", "请选择要上传的文件");
        } else {
            redirectAttributes.addFlashAttribute(
                    "message", "文件上传成功");
        }

    } catch (IOException e) {
        e.printStackTrace();
        redirectAttributes.addFlashAttribute(
                "message", "文件上传失败");
    }

        return "redirect:/test/index";
}
@GetMapping("/file")
public ResponseEntity donloadFile(@RequestParam String fileName){
    try {
        Resource resource=new UrlResource(Paths.get("C:\\Users\\wang\\Desktop\\files\\"+fileName).toUri());
        return ResponseEntity.ok().header(HttpHeaders.CONTENT_TYPE,
                "application/octer-stream")
                .header(HttpHeaders.CONTENT_DISPOSITION,String.format("attachment;filename=\"%s\"", resource.getFilename())).body(resource);
    } catch (MalformedURLException e) {
        e.printStackTrace();
    }
    return null;
}

    /**
     * 将文件以BufferedInputStream的方式读取到byte[]里面，然后用OutputStream.write输出文件
     */
    @RequestMapping("/download1")
    public void downloadFile1(HttpServletRequest request,
                              HttpServletResponse response, @RequestParam String fileName) {
        String filePath = "D:/upload" + File.separator + fileName;
        File downloadFile = new File(filePath);

        if (downloadFile.exists()) {
            response.setContentType("application/octet-stream");
            response.setContentLength((int)downloadFile.length());
            response.setHeader(HttpHeaders.CONTENT_DISPOSITION,
                    String.format("attachment; filename=\"%s\"", fileName));

            byte[] buffer = new byte[1024];
            FileInputStream fis = null;
            BufferedInputStream bis = null;
            try {
                fis = new FileInputStream(downloadFile);
                bis = new BufferedInputStream(fis);
                OutputStream os = response.getOutputStream();
                int i = bis.read(buffer);
                while (i != -1) {
                    os.write(buffer, 0, i);
                    i = bis.read(buffer);
                }
            } catch (Exception e) {
                LOGGER.debug(e.getMessage());
                e.printStackTrace();
            } finally {
                try {
                    if (fis != null) {
                        fis.close();
                    }
                    if (bis != null) {
                        bis.close();
                    }
                } catch (Exception e2) {
                    LOGGER.debug(e2.getMessage());
                    e2.printStackTrace();
                }
            }
        }
    }

    /**
     * 以包装类 IOUtils 输出文件
     */
    @RequestMapping("/download2")
    public void downloadFile2(HttpServletRequest request,
                              HttpServletResponse response, @RequestParam String fileName) {
        String filePath = "D:/upload" + File.separator + fileName;
        File downloadFile = new File(filePath);

        try {
            if (downloadFile.exists()) {
                response.setContentType("application/octet-stream");
                response.setContentLength((int)downloadFile.length());
                response.setHeader(HttpHeaders.CONTENT_DISPOSITION,
                        String.format("attachment; filename=\"%s\"", fileName));

                InputStream is = new FileInputStream(downloadFile);
                IOUtils.copy(is, response.getOutputStream());
                response.flushBuffer();
            }
        } catch (Exception e) {
            LOGGER.debug(e.getMessage());
            e.printStackTrace();
        }
    }
    }

