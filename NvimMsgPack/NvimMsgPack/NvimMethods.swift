// Auto generated for nvim version 0.2.2.
// See bin/generate_api_methods.py

import MsgPackRpc

public extension Nvim.Error {

  public enum ErrorType: Int {
    
    case exception = 0
    case validation = 1
    case unknown
  }
}

public extension Nvim {

  public func bufLineCount(
    buffer: Nvim.Buffer,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Int> {
  
    let params: [Nvim.Value] = [
        .int(Int64(buffer.handle)),
    ]
    let response = self.rpc(method: "nvim_buf_line_count", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = ((value.integerValue == nil ? nil : Int(value.integerValue!))) else {
      return .failure(Nvim.Error("Error converting result to \(Int.self)"))
    }
    
    return .success(result)
  }

  public func bufGetLines(
    buffer: Nvim.Buffer,
    start: Int,
    end: Int,
    strict_indexing: Bool,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<[String]> {
  
    let params: [Nvim.Value] = [
        .int(Int64(buffer.handle)),
        .int(Int64(start)),
        .int(Int64(end)),
        .bool(strict_indexing),
    ]
    let response = self.rpc(method: "nvim_buf_get_lines", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (value.arrayValue?.flatMap({ v in v.stringValue })) else {
      return .failure(Nvim.Error("Error converting result to \([String].self)"))
    }
    
    return .success(result)
  }

  public func bufSetLines(
    buffer: Nvim.Buffer,
    start: Int,
    end: Int,
    strict_indexing: Bool,
    replacement: [String],
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .int(Int64(buffer.handle)),
        .int(Int64(start)),
        .int(Int64(end)),
        .bool(strict_indexing),
        .array(replacement.map { .string($0) }),
    ]
    let response = self.rpc(method: "nvim_buf_set_lines", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func bufGetVar(
    buffer: Nvim.Buffer,
    name: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Nvim.Value> {
  
    let params: [Nvim.Value] = [
        .int(Int64(buffer.handle)),
        .string(name),
    ]
    let response = self.rpc(method: "nvim_buf_get_var", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (Optional(value)) else {
      return .failure(Nvim.Error("Error converting result to \(Nvim.Value.self)"))
    }
    
    return .success(result)
  }

  public func bufGetChangedtick(
    buffer: Nvim.Buffer,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Int> {
  
    let params: [Nvim.Value] = [
        .int(Int64(buffer.handle)),
    ]
    let response = self.rpc(method: "nvim_buf_get_changedtick", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = ((value.integerValue == nil ? nil : Int(value.integerValue!))) else {
      return .failure(Nvim.Error("Error converting result to \(Int.self)"))
    }
    
    return .success(result)
  }

  public func bufGetKeymap(
    buffer: Nvim.Buffer,
    mode: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<[Nvim.Value]> {
  
    let params: [Nvim.Value] = [
        .int(Int64(buffer.handle)),
        .string(mode),
    ]
    let response = self.rpc(method: "nvim_buf_get_keymap", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (value.arrayValue?.flatMap({ v in Optional(v) })) else {
      return .failure(Nvim.Error("Error converting result to \([Nvim.Value].self)"))
    }
    
    return .success(result)
  }

  public func bufSetVar(
    buffer: Nvim.Buffer,
    name: String,
    value: Nvim.Value,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .int(Int64(buffer.handle)),
        .string(name),
        value,
    ]
    let response = self.rpc(method: "nvim_buf_set_var", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func bufDelVar(
    buffer: Nvim.Buffer,
    name: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .int(Int64(buffer.handle)),
        .string(name),
    ]
    let response = self.rpc(method: "nvim_buf_del_var", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func bufGetOption(
    buffer: Nvim.Buffer,
    name: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Nvim.Value> {
  
    let params: [Nvim.Value] = [
        .int(Int64(buffer.handle)),
        .string(name),
    ]
    let response = self.rpc(method: "nvim_buf_get_option", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (Optional(value)) else {
      return .failure(Nvim.Error("Error converting result to \(Nvim.Value.self)"))
    }
    
    return .success(result)
  }

  public func bufSetOption(
    buffer: Nvim.Buffer,
    name: String,
    value: Nvim.Value,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .int(Int64(buffer.handle)),
        .string(name),
        value,
    ]
    let response = self.rpc(method: "nvim_buf_set_option", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func bufGetName(
    buffer: Nvim.Buffer,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<String> {
  
    let params: [Nvim.Value] = [
        .int(Int64(buffer.handle)),
    ]
    let response = self.rpc(method: "nvim_buf_get_name", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (value.stringValue) else {
      return .failure(Nvim.Error("Error converting result to \(String.self)"))
    }
    
    return .success(result)
  }

  public func bufSetName(
    buffer: Nvim.Buffer,
    name: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .int(Int64(buffer.handle)),
        .string(name),
    ]
    let response = self.rpc(method: "nvim_buf_set_name", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func bufIsValid(
    buffer: Nvim.Buffer,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Bool> {
  
    let params: [Nvim.Value] = [
        .int(Int64(buffer.handle)),
    ]
    let response = self.rpc(method: "nvim_buf_is_valid", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (value.boolValue) else {
      return .failure(Nvim.Error("Error converting result to \(Bool.self)"))
    }
    
    return .success(result)
  }

  public func bufGetMark(
    buffer: Nvim.Buffer,
    name: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<[Int]> {
  
    let params: [Nvim.Value] = [
        .int(Int64(buffer.handle)),
        .string(name),
    ]
    let response = self.rpc(method: "nvim_buf_get_mark", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (value.arrayValue?.flatMap({ v in (v.integerValue == nil ? nil : Int(v.integerValue!)) })) else {
      return .failure(Nvim.Error("Error converting result to \([Int].self)"))
    }
    
    return .success(result)
  }

  public func bufAddHighlight(
    buffer: Nvim.Buffer,
    src_id: Int,
    hl_group: String,
    line: Int,
    col_start: Int,
    col_end: Int,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Int> {
  
    let params: [Nvim.Value] = [
        .int(Int64(buffer.handle)),
        .int(Int64(src_id)),
        .string(hl_group),
        .int(Int64(line)),
        .int(Int64(col_start)),
        .int(Int64(col_end)),
    ]
    let response = self.rpc(method: "nvim_buf_add_highlight", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = ((value.integerValue == nil ? nil : Int(value.integerValue!))) else {
      return .failure(Nvim.Error("Error converting result to \(Int.self)"))
    }
    
    return .success(result)
  }

  public func bufClearHighlight(
    buffer: Nvim.Buffer,
    src_id: Int,
    line_start: Int,
    line_end: Int,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .int(Int64(buffer.handle)),
        .int(Int64(src_id)),
        .int(Int64(line_start)),
        .int(Int64(line_end)),
    ]
    let response = self.rpc(method: "nvim_buf_clear_highlight", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func tabpageListWins(
    tabpage: Nvim.Tabpage,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<[Nvim.Window]> {
  
    let params: [Nvim.Value] = [
        .int(Int64(tabpage.handle)),
    ]
    let response = self.rpc(method: "nvim_tabpage_list_wins", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (value.arrayValue?.flatMap({ v in Nvim.Window(v) })) else {
      return .failure(Nvim.Error("Error converting result to \([Nvim.Window].self)"))
    }
    
    return .success(result)
  }

  public func tabpageGetVar(
    tabpage: Nvim.Tabpage,
    name: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Nvim.Value> {
  
    let params: [Nvim.Value] = [
        .int(Int64(tabpage.handle)),
        .string(name),
    ]
    let response = self.rpc(method: "nvim_tabpage_get_var", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (Optional(value)) else {
      return .failure(Nvim.Error("Error converting result to \(Nvim.Value.self)"))
    }
    
    return .success(result)
  }

  public func tabpageSetVar(
    tabpage: Nvim.Tabpage,
    name: String,
    value: Nvim.Value,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .int(Int64(tabpage.handle)),
        .string(name),
        value,
    ]
    let response = self.rpc(method: "nvim_tabpage_set_var", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func tabpageDelVar(
    tabpage: Nvim.Tabpage,
    name: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .int(Int64(tabpage.handle)),
        .string(name),
    ]
    let response = self.rpc(method: "nvim_tabpage_del_var", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func tabpageGetWin(
    tabpage: Nvim.Tabpage,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Nvim.Window> {
  
    let params: [Nvim.Value] = [
        .int(Int64(tabpage.handle)),
    ]
    let response = self.rpc(method: "nvim_tabpage_get_win", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (Nvim.Window(value)) else {
      return .failure(Nvim.Error("Error converting result to \(Nvim.Window.self)"))
    }
    
    return .success(result)
  }

  public func tabpageGetNumber(
    tabpage: Nvim.Tabpage,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Int> {
  
    let params: [Nvim.Value] = [
        .int(Int64(tabpage.handle)),
    ]
    let response = self.rpc(method: "nvim_tabpage_get_number", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = ((value.integerValue == nil ? nil : Int(value.integerValue!))) else {
      return .failure(Nvim.Error("Error converting result to \(Int.self)"))
    }
    
    return .success(result)
  }

  public func tabpageIsValid(
    tabpage: Nvim.Tabpage,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Bool> {
  
    let params: [Nvim.Value] = [
        .int(Int64(tabpage.handle)),
    ]
    let response = self.rpc(method: "nvim_tabpage_is_valid", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (value.boolValue) else {
      return .failure(Nvim.Error("Error converting result to \(Bool.self)"))
    }
    
    return .success(result)
  }

  public func uiAttach(
    width: Int,
    height: Int,
    options: Nvim.Value,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .int(Int64(width)),
        .int(Int64(height)),
        options,
    ]
    let response = self.rpc(method: "nvim_ui_attach", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func uiDetach(
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        
    ]
    let response = self.rpc(method: "nvim_ui_detach", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func uiTryResize(
    width: Int,
    height: Int,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .int(Int64(width)),
        .int(Int64(height)),
    ]
    let response = self.rpc(method: "nvim_ui_try_resize", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func uiSetOption(
    name: String,
    value: Nvim.Value,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .string(name),
        value,
    ]
    let response = self.rpc(method: "nvim_ui_set_option", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func command(
    command: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .string(command),
    ]
    let response = self.rpc(method: "nvim_command", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func getHlByName(
    name: String,
    rgb: Bool,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Nvim.Value> {
  
    let params: [Nvim.Value] = [
        .string(name),
        .bool(rgb),
    ]
    let response = self.rpc(method: "nvim_get_hl_by_name", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (Optional(value)) else {
      return .failure(Nvim.Error("Error converting result to \(Nvim.Value.self)"))
    }
    
    return .success(result)
  }

  public func getHlById(
    hl_id: Int,
    rgb: Bool,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Nvim.Value> {
  
    let params: [Nvim.Value] = [
        .int(Int64(hl_id)),
        .bool(rgb),
    ]
    let response = self.rpc(method: "nvim_get_hl_by_id", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (Optional(value)) else {
      return .failure(Nvim.Error("Error converting result to \(Nvim.Value.self)"))
    }
    
    return .success(result)
  }

  public func feedkeys(
    keys: String,
    mode: String,
    escape_csi: Bool,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .string(keys),
        .string(mode),
        .bool(escape_csi),
    ]
    let response = self.rpc(method: "nvim_feedkeys", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func input(
    keys: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Int> {
  
    let params: [Nvim.Value] = [
        .string(keys),
    ]
    let response = self.rpc(method: "nvim_input", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = ((value.integerValue == nil ? nil : Int(value.integerValue!))) else {
      return .failure(Nvim.Error("Error converting result to \(Int.self)"))
    }
    
    return .success(result)
  }

  public func replaceTermcodes(
    str: String,
    from_part: Bool,
    do_lt: Bool,
    special: Bool,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<String> {
  
    let params: [Nvim.Value] = [
        .string(str),
        .bool(from_part),
        .bool(do_lt),
        .bool(special),
    ]
    let response = self.rpc(method: "nvim_replace_termcodes", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (value.stringValue) else {
      return .failure(Nvim.Error("Error converting result to \(String.self)"))
    }
    
    return .success(result)
  }

  public func commandOutput(
    str: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<String> {
  
    let params: [Nvim.Value] = [
        .string(str),
    ]
    let response = self.rpc(method: "nvim_command_output", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (value.stringValue) else {
      return .failure(Nvim.Error("Error converting result to \(String.self)"))
    }
    
    return .success(result)
  }

  public func eval(
    expr: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Nvim.Value> {
  
    let params: [Nvim.Value] = [
        .string(expr),
    ]
    let response = self.rpc(method: "nvim_eval", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (Optional(value)) else {
      return .failure(Nvim.Error("Error converting result to \(Nvim.Value.self)"))
    }
    
    return .success(result)
  }

  public func callFunction(
    fname: String,
    args: Nvim.Value,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Nvim.Value> {
  
    let params: [Nvim.Value] = [
        .string(fname),
        args,
    ]
    let response = self.rpc(method: "nvim_call_function", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (Optional(value)) else {
      return .failure(Nvim.Error("Error converting result to \(Nvim.Value.self)"))
    }
    
    return .success(result)
  }

  public func executeLua(
    code: String,
    args: Nvim.Value,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Nvim.Value> {
  
    let params: [Nvim.Value] = [
        .string(code),
        args,
    ]
    let response = self.rpc(method: "nvim_execute_lua", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (Optional(value)) else {
      return .failure(Nvim.Error("Error converting result to \(Nvim.Value.self)"))
    }
    
    return .success(result)
  }

  public func strwidth(
    text: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Int> {
  
    let params: [Nvim.Value] = [
        .string(text),
    ]
    let response = self.rpc(method: "nvim_strwidth", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = ((value.integerValue == nil ? nil : Int(value.integerValue!))) else {
      return .failure(Nvim.Error("Error converting result to \(Int.self)"))
    }
    
    return .success(result)
  }

  public func listRuntimePaths(
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<[String]> {
  
    let params: [Nvim.Value] = [
        
    ]
    let response = self.rpc(method: "nvim_list_runtime_paths", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (value.arrayValue?.flatMap({ v in v.stringValue })) else {
      return .failure(Nvim.Error("Error converting result to \([String].self)"))
    }
    
    return .success(result)
  }

  public func setCurrentDir(
    dir: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .string(dir),
    ]
    let response = self.rpc(method: "nvim_set_current_dir", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func getCurrentLine(
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<String> {
  
    let params: [Nvim.Value] = [
        
    ]
    let response = self.rpc(method: "nvim_get_current_line", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (value.stringValue) else {
      return .failure(Nvim.Error("Error converting result to \(String.self)"))
    }
    
    return .success(result)
  }

  public func setCurrentLine(
    line: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .string(line),
    ]
    let response = self.rpc(method: "nvim_set_current_line", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func delCurrentLine(
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        
    ]
    let response = self.rpc(method: "nvim_del_current_line", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func getVar(
    name: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Nvim.Value> {
  
    let params: [Nvim.Value] = [
        .string(name),
    ]
    let response = self.rpc(method: "nvim_get_var", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (Optional(value)) else {
      return .failure(Nvim.Error("Error converting result to \(Nvim.Value.self)"))
    }
    
    return .success(result)
  }

  public func setVar(
    name: String,
    value: Nvim.Value,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .string(name),
        value,
    ]
    let response = self.rpc(method: "nvim_set_var", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func delVar(
    name: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .string(name),
    ]
    let response = self.rpc(method: "nvim_del_var", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func getVvar(
    name: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Nvim.Value> {
  
    let params: [Nvim.Value] = [
        .string(name),
    ]
    let response = self.rpc(method: "nvim_get_vvar", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (Optional(value)) else {
      return .failure(Nvim.Error("Error converting result to \(Nvim.Value.self)"))
    }
    
    return .success(result)
  }

  public func getOption(
    name: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Nvim.Value> {
  
    let params: [Nvim.Value] = [
        .string(name),
    ]
    let response = self.rpc(method: "nvim_get_option", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (Optional(value)) else {
      return .failure(Nvim.Error("Error converting result to \(Nvim.Value.self)"))
    }
    
    return .success(result)
  }

  public func setOption(
    name: String,
    value: Nvim.Value,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .string(name),
        value,
    ]
    let response = self.rpc(method: "nvim_set_option", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func outWrite(
    str: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .string(str),
    ]
    let response = self.rpc(method: "nvim_out_write", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func errWrite(
    str: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .string(str),
    ]
    let response = self.rpc(method: "nvim_err_write", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func errWriteln(
    str: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .string(str),
    ]
    let response = self.rpc(method: "nvim_err_writeln", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func listBufs(
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<[Nvim.Buffer]> {
  
    let params: [Nvim.Value] = [
        
    ]
    let response = self.rpc(method: "nvim_list_bufs", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (value.arrayValue?.flatMap({ v in Nvim.Buffer(v) })) else {
      return .failure(Nvim.Error("Error converting result to \([Nvim.Buffer].self)"))
    }
    
    return .success(result)
  }

  public func getCurrentBuf(
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Nvim.Buffer> {
  
    let params: [Nvim.Value] = [
        
    ]
    let response = self.rpc(method: "nvim_get_current_buf", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (Nvim.Buffer(value)) else {
      return .failure(Nvim.Error("Error converting result to \(Nvim.Buffer.self)"))
    }
    
    return .success(result)
  }

  public func setCurrentBuf(
    buffer: Nvim.Buffer,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .int(Int64(buffer.handle)),
    ]
    let response = self.rpc(method: "nvim_set_current_buf", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func listWins(
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<[Nvim.Window]> {
  
    let params: [Nvim.Value] = [
        
    ]
    let response = self.rpc(method: "nvim_list_wins", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (value.arrayValue?.flatMap({ v in Nvim.Window(v) })) else {
      return .failure(Nvim.Error("Error converting result to \([Nvim.Window].self)"))
    }
    
    return .success(result)
  }

  public func getCurrentWin(
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Nvim.Window> {
  
    let params: [Nvim.Value] = [
        
    ]
    let response = self.rpc(method: "nvim_get_current_win", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (Nvim.Window(value)) else {
      return .failure(Nvim.Error("Error converting result to \(Nvim.Window.self)"))
    }
    
    return .success(result)
  }

  public func setCurrentWin(
    window: Nvim.Window,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .int(Int64(window.handle)),
    ]
    let response = self.rpc(method: "nvim_set_current_win", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func listTabpages(
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<[Nvim.Tabpage]> {
  
    let params: [Nvim.Value] = [
        
    ]
    let response = self.rpc(method: "nvim_list_tabpages", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (value.arrayValue?.flatMap({ v in Nvim.Tabpage(v) })) else {
      return .failure(Nvim.Error("Error converting result to \([Nvim.Tabpage].self)"))
    }
    
    return .success(result)
  }

  public func getCurrentTabpage(
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Nvim.Tabpage> {
  
    let params: [Nvim.Value] = [
        
    ]
    let response = self.rpc(method: "nvim_get_current_tabpage", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (Nvim.Tabpage(value)) else {
      return .failure(Nvim.Error("Error converting result to \(Nvim.Tabpage.self)"))
    }
    
    return .success(result)
  }

  public func setCurrentTabpage(
    tabpage: Nvim.Tabpage,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .int(Int64(tabpage.handle)),
    ]
    let response = self.rpc(method: "nvim_set_current_tabpage", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func subscribe(
    event: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .string(event),
    ]
    let response = self.rpc(method: "nvim_subscribe", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func unsubscribe(
    event: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .string(event),
    ]
    let response = self.rpc(method: "nvim_unsubscribe", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func getColorByName(
    name: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Int> {
  
    let params: [Nvim.Value] = [
        .string(name),
    ]
    let response = self.rpc(method: "nvim_get_color_by_name", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = ((value.integerValue == nil ? nil : Int(value.integerValue!))) else {
      return .failure(Nvim.Error("Error converting result to \(Int.self)"))
    }
    
    return .success(result)
  }

  public func getColorMap(
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Nvim.Value> {
  
    let params: [Nvim.Value] = [
        
    ]
    let response = self.rpc(method: "nvim_get_color_map", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (Optional(value)) else {
      return .failure(Nvim.Error("Error converting result to \(Nvim.Value.self)"))
    }
    
    return .success(result)
  }

  public func getMode(
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Nvim.Value> {
  
    let params: [Nvim.Value] = [
        
    ]
    let response = self.rpc(method: "nvim_get_mode", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (Optional(value)) else {
      return .failure(Nvim.Error("Error converting result to \(Nvim.Value.self)"))
    }
    
    return .success(result)
  }

  public func getKeymap(
    mode: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<[Nvim.Value]> {
  
    let params: [Nvim.Value] = [
        .string(mode),
    ]
    let response = self.rpc(method: "nvim_get_keymap", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (value.arrayValue?.flatMap({ v in Optional(v) })) else {
      return .failure(Nvim.Error("Error converting result to \([Nvim.Value].self)"))
    }
    
    return .success(result)
  }

  public func getApiInfo(
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Nvim.Value> {
  
    let params: [Nvim.Value] = [
        
    ]
    let response = self.rpc(method: "nvim_get_api_info", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (Optional(value)) else {
      return .failure(Nvim.Error("Error converting result to \(Nvim.Value.self)"))
    }
    
    return .success(result)
  }

  public func callAtomic(
    calls: Nvim.Value,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Nvim.Value> {
  
    let params: [Nvim.Value] = [
        calls,
    ]
    let response = self.rpc(method: "nvim_call_atomic", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (Optional(value)) else {
      return .failure(Nvim.Error("Error converting result to \(Nvim.Value.self)"))
    }
    
    return .success(result)
  }

  public func winGetBuf(
    window: Nvim.Window,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Nvim.Buffer> {
  
    let params: [Nvim.Value] = [
        .int(Int64(window.handle)),
    ]
    let response = self.rpc(method: "nvim_win_get_buf", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (Nvim.Buffer(value)) else {
      return .failure(Nvim.Error("Error converting result to \(Nvim.Buffer.self)"))
    }
    
    return .success(result)
  }

  public func winGetCursor(
    window: Nvim.Window,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<[Int]> {
  
    let params: [Nvim.Value] = [
        .int(Int64(window.handle)),
    ]
    let response = self.rpc(method: "nvim_win_get_cursor", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (value.arrayValue?.flatMap({ v in (v.integerValue == nil ? nil : Int(v.integerValue!)) })) else {
      return .failure(Nvim.Error("Error converting result to \([Int].self)"))
    }
    
    return .success(result)
  }

  public func winSetCursor(
    window: Nvim.Window,
    pos: [Int],
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .int(Int64(window.handle)),
        .array(pos.map { .int(Int64($0)) }),
    ]
    let response = self.rpc(method: "nvim_win_set_cursor", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func winGetHeight(
    window: Nvim.Window,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Int> {
  
    let params: [Nvim.Value] = [
        .int(Int64(window.handle)),
    ]
    let response = self.rpc(method: "nvim_win_get_height", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = ((value.integerValue == nil ? nil : Int(value.integerValue!))) else {
      return .failure(Nvim.Error("Error converting result to \(Int.self)"))
    }
    
    return .success(result)
  }

  public func winSetHeight(
    window: Nvim.Window,
    height: Int,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .int(Int64(window.handle)),
        .int(Int64(height)),
    ]
    let response = self.rpc(method: "nvim_win_set_height", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func winGetWidth(
    window: Nvim.Window,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Int> {
  
    let params: [Nvim.Value] = [
        .int(Int64(window.handle)),
    ]
    let response = self.rpc(method: "nvim_win_get_width", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = ((value.integerValue == nil ? nil : Int(value.integerValue!))) else {
      return .failure(Nvim.Error("Error converting result to \(Int.self)"))
    }
    
    return .success(result)
  }

  public func winSetWidth(
    window: Nvim.Window,
    width: Int,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .int(Int64(window.handle)),
        .int(Int64(width)),
    ]
    let response = self.rpc(method: "nvim_win_set_width", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func winGetVar(
    window: Nvim.Window,
    name: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Nvim.Value> {
  
    let params: [Nvim.Value] = [
        .int(Int64(window.handle)),
        .string(name),
    ]
    let response = self.rpc(method: "nvim_win_get_var", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (Optional(value)) else {
      return .failure(Nvim.Error("Error converting result to \(Nvim.Value.self)"))
    }
    
    return .success(result)
  }

  public func winSetVar(
    window: Nvim.Window,
    name: String,
    value: Nvim.Value,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .int(Int64(window.handle)),
        .string(name),
        value,
    ]
    let response = self.rpc(method: "nvim_win_set_var", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func winDelVar(
    window: Nvim.Window,
    name: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .int(Int64(window.handle)),
        .string(name),
    ]
    let response = self.rpc(method: "nvim_win_del_var", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func winGetOption(
    window: Nvim.Window,
    name: String,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Nvim.Value> {
  
    let params: [Nvim.Value] = [
        .int(Int64(window.handle)),
        .string(name),
    ]
    let response = self.rpc(method: "nvim_win_get_option", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (Optional(value)) else {
      return .failure(Nvim.Error("Error converting result to \(Nvim.Value.self)"))
    }
    
    return .success(result)
  }

  public func winSetOption(
    window: Nvim.Window,
    name: String,
    value: Nvim.Value,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Void> {
  
    let params: [Nvim.Value] = [
        .int(Int64(window.handle)),
        .string(name),
        value,
    ]
    let response = self.rpc(method: "nvim_win_set_option", params: params, expectsReturnValue: expectsReturnValue)
    
    if let error = response.error {
      return .failure(error)
    }
    
    return .success(())
  }

  public func winGetPosition(
    window: Nvim.Window,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<[Int]> {
  
    let params: [Nvim.Value] = [
        .int(Int64(window.handle)),
    ]
    let response = self.rpc(method: "nvim_win_get_position", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (value.arrayValue?.flatMap({ v in (v.integerValue == nil ? nil : Int(v.integerValue!)) })) else {
      return .failure(Nvim.Error("Error converting result to \([Int].self)"))
    }
    
    return .success(result)
  }

  public func winGetTabpage(
    window: Nvim.Window,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Nvim.Tabpage> {
  
    let params: [Nvim.Value] = [
        .int(Int64(window.handle)),
    ]
    let response = self.rpc(method: "nvim_win_get_tabpage", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (Nvim.Tabpage(value)) else {
      return .failure(Nvim.Error("Error converting result to \(Nvim.Tabpage.self)"))
    }
    
    return .success(result)
  }

  public func winGetNumber(
    window: Nvim.Window,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Int> {
  
    let params: [Nvim.Value] = [
        .int(Int64(window.handle)),
    ]
    let response = self.rpc(method: "nvim_win_get_number", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = ((value.integerValue == nil ? nil : Int(value.integerValue!))) else {
      return .failure(Nvim.Error("Error converting result to \(Int.self)"))
    }
    
    return .success(result)
  }

  public func winIsValid(
    window: Nvim.Window,
    expectsReturnValue: Bool = true
  ) -> Nvim.Response<Bool> {
  
    let params: [Nvim.Value] = [
        .int(Int64(window.handle)),
    ]
    let response = self.rpc(method: "nvim_win_is_valid", params: params, expectsReturnValue: expectsReturnValue)
    
    guard let value = response.value else {
      return .failure(response.error!)
    }
    
    guard let result = (value.boolValue) else {
      return .failure(Nvim.Error("Error converting result to \(Bool.self)"))
    }
    
    return .success(result)
  }

}

extension Nvim.Buffer {

  init?(_ value: Nvim.Value) {
    guard let (type, data) = value.extendedValue else {
      return nil
    }

    guard type == 0 else {
      return nil
    }

    guard let handle = (try? unpack(data))?.value.integerValue else {
      return nil
    }

    self.handle = Int(handle)
  }
}

extension Nvim.Window {

  init?(_ value: Nvim.Value) {
    guard let (type, data) = value.extendedValue else {
      return nil
    }

    guard type == 1 else {
      return nil
    }

    guard let handle = (try? unpack(data))?.value.integerValue else {
      return nil
    }

    self.handle = Int(handle)
  }
}

extension Nvim.Tabpage {

  init?(_ value: Nvim.Value) {
    guard let (type, data) = value.extendedValue else {
      return nil
    }

    guard type == 2 else {
      return nil
    }

    guard let handle = (try? unpack(data))?.value.integerValue else {
      return nil
    }

    self.handle = Int(handle)
  }
}
