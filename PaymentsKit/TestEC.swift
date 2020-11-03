//
//  TestEC.swift
//  PaymentsKit
//
//  Created by Deepesh.Vasthimal on 30/10/2020.
//

import Foundation
import CryptoSwift // used for AES Encrpytion as a wrapper
import CommonCrypto // use for generating randomGenerateBytes
import GMEllipticCurveCrypto

//swiftlint:disable identifier_name

public class TestEC {

    let payload: String
    let contentEncryptionKey: Data // 32 bytes
    let transactionId: String?
    let kty = "EC"
    let crv = "P-256"
    let alg = "dir"
    let enc = "A128CBC-HS256"

    public init(payload: String, contentEncryptionKey: Data, transactionId: String) {
        self.payload = payload
        self.contentEncryptionKey = contentEncryptionKey
        self.transactionId = transactionId
    }

    public func compactSerialization() -> String {
        
        guard let aesObject = try? AES(key: [UInt8](Data()),
                                     blockMode: CBC(iv: Array(Data())),
                                     padding: .pkcs7) else {
            //throw CheckoutError.threeDS2ProtocolError3531
            return ""
        }

        return ""
    }

}
