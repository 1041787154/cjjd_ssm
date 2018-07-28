package cn.ysu.file.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.ysu.file.dao.UploadFileDao;
import cn.ysu.file.service.UploadFileService;

@Service("uploadFileService")
public class UploadFileServiceImpl implements UploadFileService{

	@Resource
	private UploadFileDao uploadFileDao;
	
}
