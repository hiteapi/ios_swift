import XCTest

// added !os(iOS) as a workaround to this error on Travis:
// XCTestManifests.swift:4:28: use of undeclared type 'XCTestCaseEntry'
// fix was suggested here:
// https://dive.github.io/swift-package-manager/ios/2019/01/20/swift_package_manager_vs_ios.html


#if !os(macOS) && !os(iOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(HelloWorldTests.allTests),
    ]
}
#endif
