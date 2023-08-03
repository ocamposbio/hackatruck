//
//  MapStructures.swift
//  Maps
//
//  Created by Student21 on 03/08/23.
//

import Foundation
import MapKit

struct Location: Identifiable{
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let flag: String
    let description: String
}
