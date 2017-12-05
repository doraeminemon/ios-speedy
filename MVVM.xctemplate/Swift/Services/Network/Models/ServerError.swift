//
//  ServerError.swift
//  actisso
//
//  Created by Dang Thai Son on 7/4/17.
//  Copyright © 2017 Innovatube. All rights reserved.
//

import ObjectMapper

struct InvalidParameter: ImmutableMappable {
    let name: String
    let message: String

    init(map: Map) throws {
        name = try map.value("name")
        message = try map.value("message")
    }
}

struct ServerError: Error {

    /** if it works fine */
    var isSuccess: Bool = false

    /** Ref RFC7807 spec. A URI reference [RFC3986] that identifies the problem type */
    var type: String = ""

    /** Ref RFC7807 spec. A short, human-readable summary of the problem type. */
    var title: String = ""

    /** The HTTP status code generated by the origin server for this occurrence of the problem. */
    var status: Int = 0

    /** 4 digits error code defined in the service. ( Refer error code list ) */
    var errorCode: Int = 0

    /** A human-readable explanation specific to this occurrence of the problem. Don't use this text to analyze error content systematially. Because this text can be changed to describe better. */
    var detail: String = ""

    /** If something wrong with params, this params returns an array of invalid params. */
    var invalidParams: [InvalidParameter] = []
}

extension ServerError: ImmutableMappable {
    init(map: Map) throws {

        isSuccess = try map.value("isSuccess")
        type = try map.value("type")
        title = try map.value("title")
        status = try map.value("status")
        errorCode = try map.value("errorCode")
        detail = try map.value("detail")
        invalidParams = try map.value("invalidParams")
    }
}

