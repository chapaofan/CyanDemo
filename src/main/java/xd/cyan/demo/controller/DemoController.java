package xd.cyan.demo.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import xd.cyan.core.common.annotation.ControllerEndpoint;
import xd.cyan.core.common.entity.CyanResponse;
import xd.cyan.core.common.exception.FebsException;

/**
 * @copyright Copyright (c) 2020
 * @description Demo
 * @email zzmaolin@gmail.com
 * @author  maolin
 * @date  2020/4/15 19:31
 */
@Slf4j
@RestController
@RequiredArgsConstructor
@RequestMapping("test")
public class DemoController {

    @GetMapping("map2")
    @RequiresPermissions("test:map")
    @ControllerEndpoint(operation = "demo", exceptionMessage = "失败")
    public CyanResponse getDeptTree() throws FebsException {
        return new CyanResponse().success();
    }

}
