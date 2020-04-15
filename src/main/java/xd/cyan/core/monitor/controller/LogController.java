package xd.cyan.core.monitor.controller;

import xd.cyan.core.common.annotation.ControllerEndpoint;
import xd.cyan.core.common.controller.BaseController;
import xd.cyan.core.common.entity.CyanResponse;
import xd.cyan.core.common.entity.QueryRequest;
import xd.cyan.core.monitor.entity.SystemLog;
import xd.cyan.core.monitor.service.ILogService;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.wuwenze.poi.ExcelKit;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import javax.validation.constraints.NotBlank;
import java.util.List;
import java.util.Map;

/**
 * @author MrBird
 */
@Slf4j
@RestController
@RequestMapping("log")
@RequiredArgsConstructor
public class LogController extends BaseController {

    private final ILogService logService;

    @GetMapping("list")
    @RequiresPermissions("log:view")
    public CyanResponse logList(SystemLog log, QueryRequest request) {
        Map<String, Object> dataTable = getDataTable(this.logService.findLogs(log, request));
        return new CyanResponse().success().data(dataTable);
    }

    @GetMapping("delete/{ids}")
    @RequiresPermissions("log:delete")
    @ControllerEndpoint(exceptionMessage = "删除日志失败")
    public CyanResponse deleteLogss(@NotBlank(message = "{required}") @PathVariable String ids) {
        String[] logIds = ids.split(StringPool.COMMA);
        this.logService.deleteLogs(logIds);
        return new CyanResponse().success();
    }

    @GetMapping("excel")
    @RequiresPermissions("log:export")
    @ControllerEndpoint(exceptionMessage = "导出Excel失败")
    public void export(QueryRequest request, SystemLog lg, HttpServletResponse response) {
        List<SystemLog> logs = this.logService.findLogs(lg, request).getRecords();
        ExcelKit.$Export(SystemLog.class, response).downXlsx(logs, false);
    }
}
