package plz;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SearchCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		String writeday = request.getParameter("writedays");
		String member = request.getParameter("members");
		String search = request.getParameter("search");
		return new CommandAction(true, "list.do?writeday="+writeday+"?"+member+"="+search);

}
}
