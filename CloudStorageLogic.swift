
import Foundation
import CloudrailSI

class CloudStorageLogic {
    
   
    
    static func saveAsString(cloudStorage: CloudStorageProtocol) -> String {
        do {
            return try cloudStorage.saveAsString()
        } catch {
            return String(describing: error)
        }
    }
    
    static func loadAsString(cloudStorage: CloudStorageProtocol, savedState: String) {
        do {
            try cloudStorage.loadAsString(savedState)
        } catch {
            print(error)
        }
    }
    
   
    static func login(cloudStorage: CloudStorageProtocol) ->Bool! {
        do {
            try cloudStorage.login()
            return true
        } catch {
            print(error)
            return false
        }
    }
    
    static func logout(cloudStorage: CloudStorageProtocol) ->Bool! {
        do {
            try cloudStorage.logout()
            return true
        } catch {
            print(error)
            return false
        }
    }
    static func userLogin(cloudStorage: CloudStorageProtocol) -> String? {
        do {
            let result = try cloudStorage.userLogin()
            return result
        } catch {
            print(error)
            return ""
        }
    }
    static func userName(cloudStorage: CloudStorageProtocol) -> String? {
        do {
            let result = try cloudStorage.userName()
            return result
        } catch {
            print(error)
            return ""
        }
    }
    static func childrenOfFolderWithPath(cloudStorage: CloudStorageProtocol, path: String) -> Array<Any> {
        do {
            let result = try cloudStorage.childrenOfFolderWithPath(path)
            return result as! Array<Any>
        } catch {
            print(error)
            return []
        }
    }
    static func shareLinkForFileWithPath(cloudStorage: CloudStorageProtocol, path: String) -> String? {
        do {
            let resultString = try cloudStorage.shareLinkForFileWithPath(path)
            return resultString
        } catch {
            print(error)
            return""
        }
    }
    static func deleteFileWithPath(cloudStorage: CloudStorageProtocol, path: String) -> Bool{
        do {
            try cloudStorage.deleteFileWithPath(path)
            return true
        } catch {
            print(error)
            return false
        }
    }
    static func uploadFileToPath(cloudStorage: CloudStorageProtocol,
                          path: String,
                          inputStream: InputStream,
                          size: Int) -> Bool {
        do {
            try cloudStorage.uploadFileToPath(path, stream: inputStream, size: size, overwrite: true)
            return true
        } catch {
            print(error)
            return false
        }
    }
    static func downloadFileWithPath(cloudStorage: CloudStorageProtocol, path: String) -> InputStream? {
        do {
            let result = try cloudStorage.downloadFileWithPath(path)
            return result
        } catch {
            print(error)
            return nil
        }
    }
    static func spaceAllocation(cloudstorage: CloudStorageProtocol) -> CRSpaceAllocation? {
        do {
            let result = try cloudstorage.spaceAllocation()
            return result
        } catch {
            print(error)
            return nil
        }
    }
    static func fileExistsAtPath(cloudstorage: CloudStorageProtocol, path: String) -> Bool {
        do {
            let result = try cloudstorage.fileExistsAtPath(path)
            return result
        } catch {
            print(error)
            return false
        }
    }
    static func thumbnailOfFileWithPath(cloudstorage: CloudStorageProtocol, path: String) -> InputStream? {
        do {
            let result = try cloudstorage.thumbnailOfFileWithPath(path)
            return result
        } catch {
            print(error)
            return nil
        }
    }
    static func createFolderWithPath(cloudstorage: CloudStorageProtocol, path: String) {
        do {
            try cloudstorage.createFolderWithPath(path)
        } catch {
            print(error)
        }
    }
    static func copyFileFromPath(cloudstorage: CloudStorageProtocol, path: String, destination: String) {
        do {
            try cloudstorage.copyFileFromPath(path,destinationPath: destination)
        } catch {
            print(error)
        }
    }
    static func moveFileFromPath(cloudstorage: CloudStorageProtocol, path: String, destination: String) {
        do {
            try cloudstorage.moveFileFromPath(path,destinationPath: destination)
        } catch {
            print(error)
        }
    }
    static func metadataOfFileWithPath(cloudstorage: CloudStorageProtocol, path: String) -> CRCloudMetaData? {
        do {
            let result = try cloudstorage.metadataOfFileWithPath(path)
            return result
        } catch {
            print(error)
            return nil
        }
    }
    static func searchWithQuery(cloudStorage: CloudStorageProtocol, query: String) -> Array<Any> {
        do {
            let result = try cloudStorage.searchWithQuery(query)
            return result as! Array<Any>
        } catch {
            print(error)
            return []
        }
    }
}
