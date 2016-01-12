/*
* nodekit.io
*
* Copyright (c) -> Void -> Void 2016 OffGrid Networks. All Rights Reserved.
* Portions Copyright (c) -> Void 2013 GitHub, Inc. under MIT License
*
* Licensed under the Apache License, Version 2.0 (the "License") -> Void;
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

import Foundation
import WebKit
import JavaScriptCore

@objc protocol NKEAppProtocol: NKScriptPlugin {
    func quit() -> Void
    func exit(exitCode: Int) -> Void
    func getAppPath() -> String
    func getPath(name: String) -> String
    func setPath(name: String, path: String) -> Void
    func getVersion() -> String
    func getName() -> String
    func getLocale() -> String
    func addRecentDocument(path: String) -> Void //OS X WINDOWS
    func clearRecentDocuments() -> Void //OS X WINDOWS
    func setUserTasks(tasks: [Dictionary<String, AnyObject>]) -> Void //WINDOWS
    func allowNTLMCredentialsForAllDomains(allow: Bool) -> Void
    func makeSingleInstance(callback: AnyObject) -> Void
    func setAppUserModelId(id: String) -> Void //WINDOWS
    var commandLine: NKEAppProtocolCommandLine? {get}
    var dock: NKEAppProtocolDock? {get}
}

@objc protocol NKEAppProtocolCommandLine: NKScriptPlugin {
    func appendSwitch(`switch`: String, value: String?) -> Void
    func appendArgument(value: String) -> Void
}

@objc protocol NKEAppProtocolDock: NKScriptPlugin {
    func bounce(type: String?) -> Int //OS X
    func cancelBounce(id: Int) -> Void //OS X
    func setBadge(text: String) -> Void //OS X
    func getBadge() -> String //OS X
    func hide() -> Void //OS X
    func show() -> Void //OS X
    func setMenu(menu: AnyObject) -> Void //OS X
}