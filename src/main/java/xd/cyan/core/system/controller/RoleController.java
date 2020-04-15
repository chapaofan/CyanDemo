package xd.cyan.core.system.controller;


import xd.cyan.core.common.annotation.ControllerEndpoint;
import xd.cyan.core.common.controller.BaseController;
import xd.cyan.core.common.entity.CyanResponse;
import xd.cyan.core.common.entity.QueryRequest;
import xd.cyan.core.common.exception.FebsException;
import xd.cyan.core.system.entity.Role;
import xd.cyan.core.system.service.IRoleService;
import com.wuwenze.poi.ExcelKit;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import java.util.List;
import java.util.Map;

/**
 * @author MrBird
 */
@Slf4j
@RestController
@RequiredArgsConstructor
@RequestMapping("role")
public class RoleController extends BaseController {

    private final IRoleService roleService;

    @GetMapping
    public CyanResponse getAllRoles(Role role) {
        return new CyanResponse().success().data(roleService.findRoles(role));
    }

    @GetMapping("list")
    @RequiresPermissions("role:view")
    public CyanResponse roleList(Role role, QueryRequest request) {
        Map<String, Object> dataTable = getDataTable(this.roleService.findRoles(role, request));
        return new CyanResponse().success().data(dataTable);
    }

    @PostMapping
    @RequiresPermissions("role:add")
    @ControllerEndpoint(operation = "新增角色", exceptionMessage = "新增角色失败")
    public CyanResponse addRole(@Valid Role role) {
        this.roleService.createRole(role);
        return new CyanResponse().success();
    }

    @GetMapping("delete/{roleIds}")
    @RequiresPermissions("role:delete")
    @ControllerEndpoint(operation = "删除角色", exceptionMessage = "删除角色失败")
    public CyanResponse deleteRoles(@NotBlank(message = "{required}") @PathVariable String roleIds) {
        this.roleService.deleteRoles(roleIds);
        return new CyanResponse().success();
    }

    @PostMapping("update")
    @RequiresPermissions("role:update")
    @ControllerEndpoint(operation = "修改角色", exceptionMessage = "修改角色失败")
    public CyanResponse updateRole(Role role) {
        this.roleService.updateRole(role);
        return new CyanResponse().success();
    }

    @GetMapping("excel")
    @RequiresPermissions("role:export")
    @ControllerEndpoint(exceptionMessage = "导出Excel失败")
    public void export(QueryRequest queryRequest, Role role, HttpServletResponse response) throws FebsException {
        List<Role> roles = this.roleService.findRoles(role, queryRequest).getRecords();
        ExcelKit.$Export(Role.class, response).downXlsx(roles, false);
    }

}
