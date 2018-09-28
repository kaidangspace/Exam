//
//  Item.swift
//  Exam
//
//  Created by Narumol Wangampa on 27/9/2561 BE.
//  Copyright © 2561 Narumol Wangampa. All rights reserved.
//

import Foundation
import ObjectMapper

class VdoSearchResponse: Mappable {
    var kind: String?
    var etag: String?
    var pageInfo: PageInfo?
    var nextPageToken: String?
    var regionCode: String?
    var items: [VdoItem]?
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        
        self.kind <- map["kind"]
        self.etag <- map["etag"]
        self.pageInfo <- map["pageInfo"]
        self.nextPageToken <- map["nextPageToken"]
        self.regionCode <- map["regionCode"]
        self.items <- map["items"]
    }
}


class PageInfo:Mappable{
    var totalResults: Int?
    var resultsPerPage: Int?
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        
        self.totalResults <- map["totalResults"]
        self.resultsPerPage <- map["resultsPerPage"]
    }
}


class VdoItem:Mappable {

    var kind: String?
    var etag: String?
    var id: VideoItemId?
    var snippet: Snippet?
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        
        self.kind <- map["kind"]
        self.etag <- map["etag"]
        self.id <- map["id"]
        self.snippet <- map["snippet"]
    }
}

class VideoItemId: Mappable {

    var kind: String?
    var videoId: String?
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        
        self.kind <- map["kind"]
        self.videoId <- map["videoId"]
    }
}

class Snippet:Mappable {
    var publishedAt: String?
    var channelId: String?
    var title: String?
    var description: String?
    var thumbnails: Thumbnails?
    var channelTitle: String?
    var liveBroadcastContent: String?
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        
        self.publishedAt <- map["publishedAt"]
        self.channelId <- map["channelId"]
        self.title <- map["title"]
        self.description <- map["description"]
        self.thumbnails <- map["thumbnails"]
        self.channelTitle <- map["channelTitle"]
        self.liveBroadcastContent <- map["liveBroadcastContent"]
    }
}

class Thumbnails:Mappable {

    var default_size:ThumbnailProperties?
    var medium_size:ThumbnailProperties?
    var high_size:ThumbnailProperties?
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        
        self.default_size <- map["default"]
        self.medium_size <- map["medium"]
        self.high_size <- map["high"]
    }
}

class ThumbnailProperties:Mappable {

    var url: String?
    var width: Int?
    var height: Int?
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        
        self.url <- map["url"]
        self.width <- map["width"]
        self.height <- map["height"]
    }
}











//
//struct VdoSearchResponse: Codable{
//    var kind: String
//    var etag: String
//    var pageInfo: PageInfo
//    var nextPageToken: String
//    var regionCode: String
//    var items: [VdoItem]
//
//}
//
//struct PageInfo:Codable{
//    let totalResults: Int
//    let resultsPerPage: Int
//}
//
//struct VdoItem:Codable {
//
//    let kind: String
//    let etag: String
//    let id: VideoItemId
//    let snippet: Snippet
//}
//
//struct VideoItemId: Codable {
//
//    let kind: String
//    let videoId: String
//}
//
//struct Snippet:Codable {
//    let publishedAt: String
//    let channelId: String
//    let title: String
//    let description: String
//    let thumbnails: Thumbnails
//    let channelTitle: String
//    let liveBroadcastContent: String
//}
//
//struct Thumbnails:Codable {
//
//    let `default`:ThumbnailProperties
//    let medium:ThumbnailProperties
//    let high:ThumbnailProperties
//}
//
//struct ThumbnailProperties:Codable {
//
//    let url: String
//    let width: Int
//    let height: Int
//}

