/**
 * Copyright IBM Corporation 2016, 2017
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

public enum DataLayerError: Error {
   case InternalError(Error)
   case TodoNotFound
}

// From http://alisoftware.github.io/swift/async/error/2016/02/06/async-errors/
public enum Result<T> {
   case Success(T)
   case Failure(DataLayerError)
}

public protocol DataLayer {
    func get(completion: Result<[Todo]>)
    func add(title: String, order: Int, completed: Bool, completion: Result<Todo>)
}
