package cn.ysu.file.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ysu.file.service.UploadFileService;

@Controller
@RequestMapping("/file/uploadFile")
public class UploadFileController {
	
	@Resource
	private UploadFileService uploadFileService;
	
	
}
