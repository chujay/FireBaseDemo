import Firebase

class FireBaseSupport {
    
    static let shared: FireBaseSupport = FireBaseSupport()
    
    let ref: FIRDatabaseReference?
    
    init() {
        ref = nil
    }
}
