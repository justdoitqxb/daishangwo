package com.dsw.exception;

public class ServiceException extends RuntimeException {
	private static final long serialVersionUID = 0xc1a865c45ffdc5f9L;
    public ServiceException(String frdMessage) {
       super(createFriendlyErrMsg(frdMessage));
       System.out.println(this.getMessage());
    }
    public ServiceException(Throwable throwable) {
       super(throwable);
    }
    public ServiceException(Throwable throwable, String frdMessage) {
       super(throwable);
    }
    private static String createFriendlyErrMsg(String msgBody) {
       String prefixStr = "Sorry,";
       String suffixStr = " try again later or contact with administrator£¡";
       StringBuffer friendlyErrMsg = new StringBuffer("");
       friendlyErrMsg.append(prefixStr);
       friendlyErrMsg.append(msgBody);
       friendlyErrMsg.append(suffixStr);
       return friendlyErrMsg.toString();
    }
}
