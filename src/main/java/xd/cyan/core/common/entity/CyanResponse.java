package xd.cyan.core.common.entity;

import org.springframework.http.HttpStatus;

import java.util.HashMap;

/**
 * @author MrBird
 */
public class CyanResponse extends HashMap<String, Object> {

    private static final long serialVersionUID = -8713837118340960775L;

    public CyanResponse code(HttpStatus status) {
        this.put("code", status.value());
        return this;
    }

    public CyanResponse message(String message) {
        this.put("message", message);
        return this;
    }

    public CyanResponse data(Object data) {
        this.put("data", data);
        return this;
    }

    public CyanResponse success() {
        this.code(HttpStatus.OK);
        return this;
    }

    public CyanResponse fail() {
        this.code(HttpStatus.INTERNAL_SERVER_ERROR);
        return this;
    }

    @Override
    public CyanResponse put(String key, Object value) {
        super.put(key, value);
        return this;
    }
}
