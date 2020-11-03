//
//  Payment.swift
//  PaymentsKit
//
//  Created by Deepesh.Vasthimal on 27/10/2020.
//

import Foundation
import JOSESwift
import CryptoSwift
import GMEllipticCurveCrypto

public class Payment {
    
    private var amount : Int = 0
    
    public init(amount: Int) {
        self.amount = amount
    }
    
    public func makePayment() {
        print("making payment for amount \(amount)")
    }
    
    public func refundPayment() {
        print("making refund for amount \(amount)")
    }
    
    public func payload() {
        let message = "Summer ⛱, Sun ☀️, Cactus 🌵".data(using: .utf8)!
        let payload = Payload(message)
        print("payload is \(payload)")
    }
    
    public func hash() {
        let hash = "123".md5() // "123".bytes.md5()
        print(hash)
    }
    
    public func createKeyPair() {
        
        let keyPair = GMEllipticCurveCrypto.generateKeyPair(for: GMEllipticCurveSecp256r1)
        keyPair?.compressedPublicKey = false
        
        print("keyPair privateKeyBase64 : \(String(describing: keyPair?.privateKeyBase64))")
        
        print("keyPair publicKeyXBase64: \(String(describing: keyPair?.publicKeyXBase64))")
        print("keyPair publicKeyYBase64: \(String(describing: keyPair?.publicKeyYBase64))")
    }

}
