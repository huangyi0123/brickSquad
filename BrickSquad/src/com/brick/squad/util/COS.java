package com.brick.squad.util;

import com.qcloud.cos.COSClient;
import com.qcloud.cos.ClientConfig;
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
		String data = cosClient.uploadFile(request);
		cosClient.shutdown();
		return data;
	}
}
