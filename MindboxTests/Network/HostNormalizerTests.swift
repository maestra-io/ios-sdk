//
//  HostNormalizerTests.swift
//  MindboxTests
//
//  Created by Sergei Semko on 4/27/26.
//  Copyright © 2026 Mindbox. All rights reserved.
//

import Foundation
import Testing
@testable import Mindbox

@Suite("HostNormalizer")
struct HostNormalizerTests {

    // MARK: - extractHost

    @Test("Bare host is returned unchanged")
    func bareHost() {
        #expect(HostNormalizer.extractHost("api.maestra.io") == "api.maestra.io")
    }

    @Test("https:// prefix is stripped")
    func stripsHttps() {
        #expect(HostNormalizer.extractHost("https://api.maestra.io") == "api.maestra.io")
    }

    @Test("http:// prefix is stripped")
    func stripsHttp() {
        #expect(HostNormalizer.extractHost("http://api.maestra.io") == "api.maestra.io")
    }

    @Test("Scheme stripping is case-insensitive")
    func schemeCaseInsensitive() {
        #expect(HostNormalizer.extractHost("HTTPS://api.maestra.io") == "api.maestra.io")
        #expect(HostNormalizer.extractHost("HtTp://api.maestra.io") == "api.maestra.io")
    }

    @Test("Trailing slashes are removed")
    func stripsTrailingSlashes() {
        #expect(HostNormalizer.extractHost("api.maestra.io/") == "api.maestra.io")
        #expect(HostNormalizer.extractHost("api.maestra.io///") == "api.maestra.io")
    }

    @Test("Whitespace is trimmed")
    func trimsWhitespace() {
        #expect(HostNormalizer.extractHost("  api.maestra.io  ") == "api.maestra.io")
    }

    @Test("Combined scheme + trailing slash + whitespace")
    func combinedNormalization() {
        #expect(HostNormalizer.extractHost("  https://api.maestra.io/  ") == "api.maestra.io")
    }

    // MARK: - toBaseURLString

    @Test("Bare host gets https:// prepended")
    func bareHostGetsHttps() {
        #expect(HostNormalizer.toBaseURLString("api.maestra.io") == "https://api.maestra.io")
    }

    @Test("https:// is preserved")
    func httpsPreserved() {
        #expect(HostNormalizer.toBaseURLString("https://api.maestra.io") == "https://api.maestra.io")
    }

    @Test("http:// is preserved")
    func httpPreserved() {
        #expect(HostNormalizer.toBaseURLString("http://proxy.example.com") == "http://proxy.example.com")
    }

    @Test("Trailing slash is stripped from base URL")
    func baseURLStripsTrailingSlash() {
        #expect(HostNormalizer.toBaseURLString("https://api.maestra.io/") == "https://api.maestra.io")
        #expect(HostNormalizer.toBaseURLString("api.maestra.io/") == "https://api.maestra.io")
    }
}
