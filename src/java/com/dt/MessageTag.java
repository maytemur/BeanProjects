package com.dt;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
public class MessageTag extends BodyTagSupport {
    private String message="Hello Tag Library";
    public int doEndTag(){
        try {
            JspWriter out=pageContext.getOut();
            out.print("<h1>"+message+"</h1>");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return EVAL_PAGE;
    }   
}