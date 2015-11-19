package com.dsw.interceptor;

import java.io.IOException;
import java.sql.SQLException;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.dsw.exception.ServiceException;

public class ServiceInterceptor extends AbstractInterceptor {
	private static final long serialVersionUID = 1000L;

	@Override
    public String intercept(ActionInvocation invocation) throws Exception {
       System.out.println("ServiceInterceptor intercept() invoked! ");
       before(invocation);
       String result = "";
       try {
           result = invocation.invoke();
       } catch (NullPointerException ex) {
           throw new ServiceException("������δ����ʼ���Ķ�������ǲ����ڵĶ���");
       } catch (IOException ex) {
           throw new ServiceException("IO�쳣��");
       } catch (ClassNotFoundException ex) {
           throw new ServiceException("ָ�����಻���ڣ�");
       } catch (ArithmeticException ex) {
           throw new ServiceException("��ѧ�����쳣��");
       } catch (ArrayIndexOutOfBoundsException ex) {
           throw new ServiceException("�����±�Խ��!");
       } catch (IllegalArgumentException ex) {
           throw new ServiceException("�����Ĳ�������");
       } catch (ClassCastException ex) {
           throw new ServiceException("����ǿ��ת������");
       } catch (SecurityException ex) {
           throw new ServiceException("Υ����ȫԭ���쳣��");
       } catch (SQLException ex) {
           throw new ServiceException("�������ݿ��쳣��");
       } catch (NoSuchMethodError ex) {
           throw new ServiceException("����ĩ�ҵ��쳣��");
       } catch (InternalError ex) {
           throw new ServiceException("Java������������ڲ�����");
       } catch (Exception ex) {
           throw new ServiceException("�����ڲ����󣬲���ʧ�ܣ�");
       }
       after(invocation, result);
       return "login";
    }
    /**
     * ��֤��½��...
     * @param invocation
     * @return
     * @throws Exception
     */
    public void before(ActionInvocation invocation) throws Exception {
       //...
    }

    /**
     * ��¼��־��..
     * @param invocation
     * @return
     * @throws Exception
     */
    public void after(ActionInvocation invocation,String result) throws Exception{
       //...
    }  
}
