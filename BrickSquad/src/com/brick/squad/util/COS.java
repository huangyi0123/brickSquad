package com.brick.squad.util;

import java.util.ArrayList;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.qcloud.cos.COSClient;
import com.qcloud.cos.ClientConfig;
import com.qcloud.cos.meta.InsertOnly;
import com.qcloud.cos.request.CreateFolderRequest;
import com.qcloud.cos.request.DelFileRequest;
import com.qcloud.cos.request.DelFolderRequest;
import com.qcloud.cos.request.ListFolderRequest;
import com.qcloud.cos.request.UploadFileRequest;
import com.qcloud.cos.sign.Credentials;

public class COS {
	private final long appId = 1252037400;
	private final String secretId = "AKIDUlma8P1Bfz3rOfrRwCCwQt77sOfhg0IL";
	private final String secretKey = "vay6xXrugBPN5XidKlwrWv3wYu0rRxGK";
	private String bucketName;
	private String region;

	public String getBucketName() {
		return bucketName;
	}

	public void setBucketName(String bucketName) {
		this.bucketName = bucketName;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	/**
	 * 上传文件到COS
	 * 
	 * @param localhostPath
	 *            文件本地路径
	 * @param COSPath
	 *            COS路径
	 */
	public String upLoadImageToCOS(String localhostPath, String COSPath) {
		Credentials cred = new Credentials(appId, secretId, secretKey);
		ClientConfig clientConfig = new ClientConfig();
		clientConfig.setRegion(region);
		COSClient cosClient = new COSClient(clientConfig, cred);
		UploadFileRequest request = new UploadFileRequest(bucketName, COSPath,
				localhostPath);
		request.setInsertOnly(InsertOnly.OVER_WRITE);
		String data = cosClient.uploadFile(request);
		cosClient.shutdown();
		return data;
	}

	/**
	 * 在cos中创建目录
	 * 
	 * @param folderName
	 *            目录名称
	 * @return 创建结果
	 */
	public String createFolder(String folderName) {
		Credentials cred = new Credentials(appId, secretId, secretKey);
		ClientConfig clientConfig = new ClientConfig();
		clientConfig.setRegion(region);
		COSClient cosClient = new COSClient(clientConfig, cred);
		CreateFolderRequest request = new CreateFolderRequest(bucketName,
				"/articleList/" + folderName + "/");
		String data = cosClient.createFolder(request);
		cosClient.shutdown();
		return data;
	}

	/**
	 * 获取目录的CDN访问路径
	 * 
	 * @param folderName
	 *            目录名称
	 * @return CDN路径集合
	 */
	public List<String> listFolder(String folderName) {
		Credentials cred = new Credentials(appId, secretId, secretKey);
		ClientConfig clientConfig = new ClientConfig();
		clientConfig.setRegion(region);
		COSClient cosClient = new COSClient(clientConfig, cred);
		ListFolderRequest request = new ListFolderRequest(bucketName,
				folderName);
		String data = cosClient.listFolder(request);
		cosClient.shutdown();
		System.out.println(data);
		JSONObject jsonArray = JSONObject.fromObject(data);
		jsonArray = JSONObject.fromObject(jsonArray.get("data"));
		JSONArray jsonArray2 = JSONArray.fromObject(jsonArray.get("infos"));
		List<String> list = new ArrayList<String>();
		for (Object object : jsonArray2) {
			JSONObject jsonObject = JSONObject.fromObject(object);
			list.add(jsonObject.get("access_url").toString());
		}
		return list;
	}

	/**
	 * 删除指定目录
	 * 
	 * @param cosPath
	 *            路径
	 * @return 删除信息
	 */
	public String delete(String cosPath) {
		Credentials cred = new Credentials(appId, secretId, secretKey);
		ClientConfig clientConfig = new ClientConfig();
		clientConfig.setRegion(region);
		COSClient cosClient = new COSClient(clientConfig, cred);
		DelFolderRequest request = new DelFolderRequest(bucketName, cosPath);
		String data = cosClient.delFolder(request);
		cosClient.shutdown();
		return data;
	}

	/**
	 * 删除指定目录及目录下的文件
	 * 
	 * @param cospath 目录
	 */
	public void deleteAll(String cospath) {
		List<String> list=listFolder(cospath);
		if (list.size()>0) {
			for (String string : list) {
				String s=string.substring(string.lastIndexOf("/")+1);
				s=cospath+s;
				deleteFile(s);
			}
		}
		delete(cospath);
	}
	/**
	 * 删除指定文件
	 * @param cospath  文件路径
	 */
	public void deleteFile(String cospath) {
		Credentials cred = new Credentials(appId, secretId, secretKey);
		ClientConfig clientConfig = new ClientConfig();
		clientConfig.setRegion(region);
		COSClient cosClient = new COSClient(clientConfig, cred);
		DelFileRequest request=new DelFileRequest(bucketName, cospath);
		String data = cosClient.delFile(request);
		cosClient.shutdown();
	}
}
