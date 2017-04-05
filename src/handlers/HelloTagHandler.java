package handlers;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.io.StringWriter;

/**
 * Created by hjdeng on 4/1/17.
 */
public class HelloTagHandler extends SimpleTagSupport {

    private String who;

    private String said;

    public void setWho(String who) {
        this.who = who;
    }

    public void setSaid(String said) {
        this.said = said;
    }

    private String getBody() throws IOException, JspException {
        StringWriter bodyWriter = new StringWriter();

        try {
            this.getJspBody().invoke(bodyWriter);
            bodyWriter.close();
            return bodyWriter.toString();
        } finally {
            bodyWriter.close();
        }

    }

    private String createResponse() throws IOException, JspException {
        String response = "%s said: %s. But the point is %s";
        return String.format(response, this.who, this.said, this.getBody());
    }

    private void Execute() throws IOException, JspException {
        String response = this.createResponse();
        this.getJspContext().getOut().println(response);
    }

    @Override
    public void doTag() throws IOException, JspException {
        this.Execute();
    }
}

