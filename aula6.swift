/**

MapView

MapKit

Center é a centralização do mapa
Span é o zoom

@State --> Váriavel que atualiza a tela automaticamente

**/

import UIKit
import MapKit
import SwiftUI
import CoreLocation
import _MapKit_SwiftUI

@State private var region = MKCoordinateRegion(
  center: CLLocationCoordinate2D(latitude: -14, longitude: -51),
  span: MKCoordinateSpan(latitude: 40, longitude: 40))
