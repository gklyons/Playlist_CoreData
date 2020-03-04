//
//  SongController.swift
//  PlaylistCoredata
//
//  Created by Garrett Lyons on 3/4/20.
//  Copyright © 2020 Trevor Walker. All rights reserved.
//

import Foundation
import CoreData

class SongController {
    
    // MARK: - CRUD
    func createSong(with title: String, and artist: String, addTo playlist: Playlist) {
     Song(title: title, artist: artist, playlist: playlist)
        PlaylistController.sharedInstance.saveToPersistentStore()
    }

    func deleteSong(song: Song) {
        CoreDataStack.context.delete(song)
        PlaylistController.sharedInstance.saveToPersistentStore()
    }
    
}// End of Class
