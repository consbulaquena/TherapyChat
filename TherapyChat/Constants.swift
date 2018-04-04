//
//  Constants.swift
//  TherapyChat
//
//  Created by Cons Bulaqueña on 04/04/2018.
//  Copyright © 2018 consios. All rights reserved.
//

import Foundation

import Firebase

import FirebaseDatabase


// All the constants


var firebase = FIRDatabase.database().reference()

let userDefaults = UserDefaults.standard

//IDS and Keys

public let kONESIGNALAPPID = "cc0a00c0-55fc-4b11-bd98-60ew1bb6b548d"

public let kSINCHKEY = "e4353417-067c-43a2-8100-r4b0eb8b8e15"

public let kSINCHSECRET = "LGMw6Zds/kKk6eqbweMZcg=="

//FUser

public let kOBJECTID = "objectId"

public let kUSER = "User"

public let kCREATEDAT = "createdAt"

public let kUPDATEDAT = "updatedAt"

public let kEMAIL = "email"

public let kFACEBOOK = "facebook"

public let kLOGINMETHOD = "loginMethod"

public let kPUSHID = "pushId"

public let kFIRSTNAME = "firstname"

public let kLASTNAME = "lastname"

public let kFULLNAME = "fullname"

public let kAVATAR = "avatar"

public let kCURRENTUSER = "currentUser"

//typeing

public let kTYPINGPATH = "Typing"

//

public let kAVATARSTATE = "avatarState"

public let kFILEREFERENCE = "gs://quickchat20.appspot.com"

public let kFIRSTRUN = "firstRun"

public let kNUMBEROFMESSAGES = 40

public let kMAXDURATION = 5.0

public let kAUDIOMAXDURATION = 10.0

public let kSUCCESS = 2

//recent

public let kRECENT = "Recent"

public let kCHATROOMID = "chatRoomID"

public let kUSERID = "userId"

public let kDATE = "date"

public let kPRIVATE = "private"

public let kGROUP = "group"

public let kGROUPID = "groupId"

public let kRECENTID = "recentId"

public let kMEMBERS = "members"

public let kDISCRIPTION = "discription"

public let kLASTMESSAGE = "lastMessage"

public let kCOUNTER = "counter"

public let kTYPE = "type"

public let kWITHUSERUSERNAME = "withUserUserName"

public let kWITHUSERUSERID = "withUserUserID"

public let kOWNERID = "ownerID"

public let kSTATUS = "status"

public let kMESSAGE = "Message"

public let kMESSAGEID = "messageId"

public let kNAME = "name"

public let kSENDERID = "senderId"

public let kSENDERNAME = "senderName"

public let kTHUMBNAIL = "thumbnail"

//Friends

public let kFRIEND = "friends"

public let kFRIENDID = "friendId"

//message types

public let kPICTURE = "picture"

public let kTEXT = "text"

public let kVIDEO = "video"

public let kAUDIO = "audio"

public let kLOCATION = "location"

//coordinates

public let kLATITUDE = "latitude"

public let kLONGITUDE = "longitude"

//message status

public let kDELIVERED = "Delivered"

public let kREAD = "Read"

//push

public let kDEVICEID = "deviceId"

//backgroung color

public let kRED = "red"

public let kGREEN = "green"

public let kBLUE = "blue"
