/* This class was borrowed from nci.lims.util; */

package gov.nih.nci.caBIOApp.util;


public abstract class BaseException extends Exception
{
  /**
   * Nested throwable object to optionally hold "real" exception.
   */
  public Throwable detail;

  /**
   * Creates a new BaseException with no message.
   */
  public BaseException() {}

  /**
   * Creates a new BaseException with the specified detail message.
   *
   * @param s the detail message
   */
  public BaseException (String s) {super(s);}

  /**
   * Creates a new BaseException with the specified detail message and
   * nested exception.
   * @param s the detail message
   * @param ex the nested exception
   */
  public BaseException (String s, Throwable ex)
  {
    super(s);
    detail = ex;
  }

  /**
   * Returns the detail message, including the message from the nested
   * exception if there is one.
   *
   * @return	the detail message with the nested exception
   */
  public String getMessage() {
    if (detail == null)
      return super.getMessage();
    else
      return super.getMessage() + "; nested exception is: \n\t" +
	detail.toString();
  }

  /**
   * Prints the composite message and the embedded stack trace to
   * the specified stream <code>ps</code>.
   * @param ps the print stream
   */
  public void printStackTrace(java.io.PrintStream ps)
  {
    if (detail == null) {
      super.printStackTrace(ps);
    } else {
      synchronized(ps) {
	ps.println(this);
	detail.printStackTrace(ps);
      }
    }
  }

  /**
   * Prints the composite message to <code>System.err</code>.
   */
  public void printStackTrace()
  {
    printStackTrace(System.err);
  }

  /**
   * Prints the composite message and the embedded stack trace to
   * the specified print writer <code>pw</code>.
   * @param pw the print writer
   */
  public void printStackTrace(java.io.PrintWriter pw)
  {
    if (detail == null) {
      super.printStackTrace(pw);
    } else {
      synchronized(pw) {
	pw.println(this);
	detail.printStackTrace(pw);
      }
    }
  }

    

}


