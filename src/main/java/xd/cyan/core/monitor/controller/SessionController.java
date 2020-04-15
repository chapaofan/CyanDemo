package xd.cyan.core.monitor.controller;

import xd.cyan.core.common.entity.CyanResponse;
import xd.cyan.core.monitor.entity.ActiveUser;
import xd.cyan.core.monitor.service.ISessionService;
import lombok.RequiredArgsConstructor;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author MrBird
 */
@RestController
@RequestMapping("session")
@RequiredArgsConstructor
public class SessionController {

    private final ISessionService sessionService;

    @GetMapping("list")
    @RequiresPermissions("online:view")
    public CyanResponse list(String username) {
        List<ActiveUser> list = sessionService.list(username);
        Map<String, Object> data = new HashMap<>(2);
        data.put("rows", list);
        data.put("total", CollectionUtils.size(list));
        return new CyanResponse().success().data(data);
    }

    @GetMapping("delete/{id}")
    @RequiresPermissions("user:kickout")
    public CyanResponse forceLogout(@PathVariable String id) {
        sessionService.forceLogout(id);
        return new CyanResponse().success();
    }
}
