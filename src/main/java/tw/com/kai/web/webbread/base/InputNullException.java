package tw.com.kai.web.webbread.base;

public class InputNullException extends RuntimeException {
    public InputNullException() {
        super();
    }
    public InputNullException(String message) {
        super(message);
    }
    public InputNullException(Throwable cause) {
        super(cause);
    }

    protected InputNullException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
