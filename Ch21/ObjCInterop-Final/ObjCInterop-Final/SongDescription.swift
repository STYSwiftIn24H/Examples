//
//  SongDescription.swift
//  ObjCInterop-Final
//
//  Created by BJ Miller on 10/28/14.
//  Copyright (c) 2014 Six Five Software, LLC. All rights reserved.
//

extension Song : Printable {
    public override var description: String {
        return "\(artist) sings the song \(title), \(rating) stars."
    }
}
