// Auto-generated. Do not edit!

// (in-package IntegratedNavigation.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class integratedNavigationMsg {
  constructor() {
    this.header = new std_msgs.msg.Header();
    this.GPSWeek = 0;
    this.GPSTime = 0.0;
    this.Heading = 0.0;
    this.Pitch = 0.0;
    this.Roll = 0.0;
    this.gyroX = 0.0;
    this.gyroY = 0.0;
    this.gyroZ = 0.0;
    this.accX = 0.0;
    this.accY = 0.0;
    this.accZ = 0.0;
    this.Lattitude = 0.0;
    this.Longitude = 0.0;
    this.Altitude = 0.0;
    this.Ve = 0.0;
    this.Vn = 0.0;
    this.Vu = 0.0;
    this.Baseline = 0.0;
    this.NSV1 = 0;
    this.NSV2 = 0;
    this.Status = 0;
    this.Age = 0.0;
    this.warning = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type integratedNavigationMsg
    // Serialize message field [header]
    bufferInfo = std_msgs.msg.Header.serialize(obj.header, bufferInfo);
    // Serialize message field [GPSWeek]
    bufferInfo = _serializer.int32(obj.GPSWeek, bufferInfo);
    // Serialize message field [GPSTime]
    bufferInfo = _serializer.float64(obj.GPSTime, bufferInfo);
    // Serialize message field [Heading]
    bufferInfo = _serializer.float64(obj.Heading, bufferInfo);
    // Serialize message field [Pitch]
    bufferInfo = _serializer.float64(obj.Pitch, bufferInfo);
    // Serialize message field [Roll]
    bufferInfo = _serializer.float64(obj.Roll, bufferInfo);
    // Serialize message field [gyroX]
    bufferInfo = _serializer.float64(obj.gyroX, bufferInfo);
    // Serialize message field [gyroY]
    bufferInfo = _serializer.float64(obj.gyroY, bufferInfo);
    // Serialize message field [gyroZ]
    bufferInfo = _serializer.float64(obj.gyroZ, bufferInfo);
    // Serialize message field [accX]
    bufferInfo = _serializer.float64(obj.accX, bufferInfo);
    // Serialize message field [accY]
    bufferInfo = _serializer.float64(obj.accY, bufferInfo);
    // Serialize message field [accZ]
    bufferInfo = _serializer.float64(obj.accZ, bufferInfo);
    // Serialize message field [Lattitude]
    bufferInfo = _serializer.float64(obj.Lattitude, bufferInfo);
    // Serialize message field [Longitude]
    bufferInfo = _serializer.float64(obj.Longitude, bufferInfo);
    // Serialize message field [Altitude]
    bufferInfo = _serializer.float64(obj.Altitude, bufferInfo);
    // Serialize message field [Ve]
    bufferInfo = _serializer.float64(obj.Ve, bufferInfo);
    // Serialize message field [Vn]
    bufferInfo = _serializer.float64(obj.Vn, bufferInfo);
    // Serialize message field [Vu]
    bufferInfo = _serializer.float64(obj.Vu, bufferInfo);
    // Serialize message field [Baseline]
    bufferInfo = _serializer.float64(obj.Baseline, bufferInfo);
    // Serialize message field [NSV1]
    bufferInfo = _serializer.int32(obj.NSV1, bufferInfo);
    // Serialize message field [NSV2]
    bufferInfo = _serializer.int32(obj.NSV2, bufferInfo);
    // Serialize message field [Status]
    bufferInfo = _serializer.int8(obj.Status, bufferInfo);
    // Serialize message field [Age]
    bufferInfo = _serializer.float32(obj.Age, bufferInfo);
    // Serialize message field [warning]
    bufferInfo = _serializer.int8(obj.warning, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type integratedNavigationMsg
    let tmp;
    let len;
    let data = new integratedNavigationMsg();
    // Deserialize message field [header]
    tmp = std_msgs.msg.Header.deserialize(buffer);
    data.header = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [GPSWeek]
    tmp = _deserializer.int32(buffer);
    data.GPSWeek = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [GPSTime]
    tmp = _deserializer.float64(buffer);
    data.GPSTime = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [Heading]
    tmp = _deserializer.float64(buffer);
    data.Heading = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [Pitch]
    tmp = _deserializer.float64(buffer);
    data.Pitch = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [Roll]
    tmp = _deserializer.float64(buffer);
    data.Roll = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [gyroX]
    tmp = _deserializer.float64(buffer);
    data.gyroX = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [gyroY]
    tmp = _deserializer.float64(buffer);
    data.gyroY = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [gyroZ]
    tmp = _deserializer.float64(buffer);
    data.gyroZ = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [accX]
    tmp = _deserializer.float64(buffer);
    data.accX = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [accY]
    tmp = _deserializer.float64(buffer);
    data.accY = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [accZ]
    tmp = _deserializer.float64(buffer);
    data.accZ = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [Lattitude]
    tmp = _deserializer.float64(buffer);
    data.Lattitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [Longitude]
    tmp = _deserializer.float64(buffer);
    data.Longitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [Altitude]
    tmp = _deserializer.float64(buffer);
    data.Altitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [Ve]
    tmp = _deserializer.float64(buffer);
    data.Ve = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [Vn]
    tmp = _deserializer.float64(buffer);
    data.Vn = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [Vu]
    tmp = _deserializer.float64(buffer);
    data.Vu = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [Baseline]
    tmp = _deserializer.float64(buffer);
    data.Baseline = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [NSV1]
    tmp = _deserializer.int32(buffer);
    data.NSV1 = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [NSV2]
    tmp = _deserializer.int32(buffer);
    data.NSV2 = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [Status]
    tmp = _deserializer.int8(buffer);
    data.Status = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [Age]
    tmp = _deserializer.float32(buffer);
    data.Age = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [warning]
    tmp = _deserializer.int8(buffer);
    data.warning = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'IntegratedNavigation/integratedNavigationMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '041e1fa850daadf3d28954c7ff76c76d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    int32 GPSWeek
    float64 GPSTime
    float64 Heading
    float64 Pitch
    float64 Roll
    float64 gyroX
    float64 gyroY
    float64 gyroZ
    float64 accX
    float64 accY
    float64 accZ
    float64 Lattitude
    float64 Longitude
    float64 Altitude
    float64 Ve # velocity towards east
    float64 Vn # velocity towards north
    float64 Vu
    float64 Baseline # Velocity of vehicle
    int32 NSV1 # number of the settlelites
    int32 NSV2
    int8 Status
    float32 Age
    int8 warning
    
    
    
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

};

module.exports = integratedNavigationMsg;
