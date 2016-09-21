package com.job.test;

import static org.mockito.Mockito.atLeast;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.io.PrintWriter;
import java.io.StringWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.job.ApplyServlet;

import junit.framework.TestCase;

public class ApplyServletTest extends TestCase {

	public void testDoPostHttpServletRequestHttpServletResponse() throws Exception {
		HttpServletRequest request = mock(HttpServletRequest.class);       
        HttpServletResponse response = mock(HttpServletResponse.class);    

        when(request.getParameter("name")).thenReturn("jonatha");
        when(request.getParameter("email")).thenReturn("jonatha.schmitz@gmail.com");
        when(request.getParameter("html")).thenReturn("9");
        when(request.getParameter("javascript")).thenReturn("9");
        when(request.getParameter("python")).thenReturn("9");
        when(request.getParameter("ios")).thenReturn("9");
        
        StringWriter sw = new StringWriter();
        
        PrintWriter writer = new PrintWriter(sw);
        when(response.getWriter()).thenReturn(writer);

        new ApplyServlet().doPost(request, response);

        verify(request, atLeast(1)).getParameter("name");
        verify(request, atLeast(1)).getParameter("email");
        verify(request, atLeast(1)).getParameter("html");
        verify(request, atLeast(1)).getParameter("css");
        verify(request, atLeast(1)).getParameter("javascript");
        verify(request, atLeast(1)).getParameter("python");
        verify(request, atLeast(1)).getParameter("django");
        verify(request, atLeast(1)).getParameter("ios");
        verify(request, atLeast(1)).getParameter("android");
        
        assertTrue(sw.toString().contains("sucesso") || sw.toString().contains("erro"));
        
	}
}
