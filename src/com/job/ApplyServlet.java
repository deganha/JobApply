package com.job;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ApplyServlet
 */
@WebServlet(description = "ApplyServlet", urlPatterns = { "/ApplyServlet" })
public class ApplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ApplyServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();

		try {
			Applicant applicant = new Applicant();

			parseParametersToApplicant(request, applicant);

			EmailSender sender = new EmailSender();

			sender.send(composeEmail(evaluateApplicant(applicant), applicant));

			out.print(Constants.SUCCESS);
		} catch (RuntimeException e) {
			out.print(Constants.ERROR);
		}
	}

	protected void parseParametersToApplicant(HttpServletRequest request, Applicant applicant) {

		applicant.setName(request.getParameter("name"));
		applicant.setEmail(request.getParameter("email"));
		applicant.setHtml(Integer.parseInt(request.getParameter("html") != null ? request.getParameter("html") : "0"));
		applicant.setCss(Integer.parseInt(request.getParameter("css") != null ? request.getParameter("css") : "0"));
		applicant.setJavascript(Integer
				.parseInt(request.getParameter("javascript") != null ? request.getParameter("javascript") : "0"));
		applicant.setPython(
				Integer.parseInt(request.getParameter("python") != null ? request.getParameter("python") : "0"));
		applicant.setDjango(
				Integer.parseInt(request.getParameter("django") != null ? request.getParameter("django") : "0"));
		applicant.setIos(Integer.parseInt(request.getParameter("ios") != null ? request.getParameter("ios") : "0"));
		applicant.setAndroid(
				Integer.parseInt(request.getParameter("android") != null ? request.getParameter("android") : "0"));

	}

	protected int evaluateApplicant(Applicant applicant) {
		
		if (applicant.getHtml() >= 7 && applicant.getCss() >= 7 && applicant.getJavascript() >= 7) {
			return Constants.FRONT_END;
		} else {
			if (applicant.getDjango() >= 7 && applicant.getPython() >= 7) {
				return Constants.BACK_END;
			} else {
				if (applicant.getIos() >= 7 && applicant.getAndroid() >= 7) {
					return Constants.MOBILE;
				} else {
					return Constants.GENERICO;
				}
			}
		}
	}

	protected Email composeEmail(int type, Applicant applicant) {
		
		Email email = new Email();
		
		email.setFrom(Constants.EMAIL_USER);
		email.setTo(applicant.getEmail());
		email.setSubject(Constants.SUBJECT);
		email.setText(Constants.TEXT_START);

		switch (type) {
		case Constants.FRONT_END:
			email.setText(email.getText() + Constants.TEXT_FRONT_END);
			break;
		case Constants.BACK_END:
			email.setText(email.getText() + Constants.TEXT_BACK_END);
			break;
		case Constants.MOBILE:
			email.setText(email.getText() + Constants.TEXT_MOBILE);
			break;
		default:
			break;
		}

		email.setText(email.getText() + Constants.TEXT_END);

		return email;
	}
}
