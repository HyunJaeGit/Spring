package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/*")
public class EncodingFilter implements Filter {
	// init : ������ ����� ���� �ѹ� ����
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("������ ���� �Ǿ����ϴ�!!!");
		
	}
	
	// destroy : ������ ����� �� �ѹ� ����
	@Override
	public void destroy() {
		System.out.println("������ ���� �Ǿ����ϴ�!!!");
		
	}

	// doFilter : ���� ��η� ��û�� ���� ����
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		// System.out.println("��û�� �߻��߽��ϴ�~");
		
		request.setCharacterEncoding("utf-8");
		chain.doFilter(request, response);
		
		// System.out.println("������ �߻��߽��ϴ�~");
	}
	
}
