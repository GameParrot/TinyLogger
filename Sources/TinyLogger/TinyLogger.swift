import Foundation
public extension TinyLogger {
    class TinyLoggerMain {
        public func info(msg: String, format: String = "%t [%f/%T]: %m", dateFormat: String = "HH:mm:ss", file: String = #file, function: String = #function) {
            let date = Date()
            let formatter = DateFormatter()
            formatter.dateFormat = dateFormat
            fputs(format.replacingOccurrences(of: "%t", with: formatter.string(from: date)).replacingOccurrences(of: "%f", with: URL(fileURLWithPath: file).lastPathComponent.dropLast(6)).replacingOccurrences(of: "%T", with: "INFO").replacingOccurrences(of: "%F", with: function).replacingOccurrences(of: "%m", with: msg + "\n"), stdout)
            fflush(stdout)
        }
        public func trace(msg: String, format: String = "%t [%f/%T]: %m", dateFormat: String = "HH:mm:ss", file: String = #file, function: String = #function) {
            let date = Date()
            let formatter = DateFormatter()
            formatter.dateFormat = dateFormat
            fputs(format.replacingOccurrences(of: "%t", with: formatter.string(from: date)).replacingOccurrences(of: "%f", with: URL(fileURLWithPath: file).lastPathComponent.dropLast(6)).replacingOccurrences(of: "%T", with: "TRACE").replacingOccurrences(of: "%F", with: function).replacingOccurrences(of: "%m", with: msg + "\n"), stdout)
            fflush(stdout)
        }
        public func warn(msg: String, format: String = "%t [%f/%T]: %m", dateFormat: String = "HH:mm:ss", file: String = #file, function: String = #function) {
            let date = Date()
            let formatter = DateFormatter()
            formatter.dateFormat = dateFormat
            fputs(format.replacingOccurrences(of: "%t", with: formatter.string(from: date)).replacingOccurrences(of: "%f", with: URL(fileURLWithPath: file).lastPathComponent.dropLast(6)).replacingOccurrences(of: "%T", with: "WARN").replacingOccurrences(of: "%F", with: function).replacingOccurrences(of: "%m", with: msg + "\n"), stderr)
            fflush(stderr)
        }
        public func error(msg: String, format: String = "%t [%f/%T]: %m", dateFormat: String = "HH:mm:ss", file: String = #file, function: String = #function) {
            let date = Date()
            let formatter = DateFormatter()
            formatter.dateFormat = dateFormat
            fputs(format.replacingOccurrences(of: "%t", with: formatter.string(from: date)).replacingOccurrences(of: "%f", with: URL(fileURLWithPath: file).lastPathComponent.dropLast(6)).replacingOccurrences(of: "%T", with: "ERROR").replacingOccurrences(of: "%F", with: function).replacingOccurrences(of: "%m", with: msg + "\n"), stderr)
            fflush(stderr)
        }
        public func fatal(msg: String, format: String = "%t [%f/%T]: %m", dateFormat: String = "HH:mm:ss", file: String = #file, function: String = #function) {
            let date = Date()
            let formatter = DateFormatter()
            formatter.dateFormat = dateFormat
            fputs(format.replacingOccurrences(of: "%t", with: formatter.string(from: date)).replacingOccurrences(of: "%f", with: URL(fileURLWithPath: file).lastPathComponent.dropLast(6)).replacingOccurrences(of: "%T", with: "FATAL").replacingOccurrences(of: "%F", with: function).replacingOccurrences(of: "%m", with: msg + "\n"), stderr)
            fflush(stderr)
        }
    }
}
public struct TinyLogger {
    public static let log = TinyLoggerMain()
}
