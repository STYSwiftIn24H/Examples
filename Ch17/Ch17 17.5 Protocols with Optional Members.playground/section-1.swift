import MapKit

@objc protocol BJMAnnotation : NSObjectProtocol {
    var coordinate: CLLocationCoordinate2D { get }
    optional var title: String! { get }
    optional var subtitle: String! { get }
    optional func setCoordinate(newCoordinate: CLLocationCoordinate2D)
}
