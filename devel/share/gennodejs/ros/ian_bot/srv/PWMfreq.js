// Auto-generated. Do not edit!

// (in-package ian_bot.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class PWMfreqRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pin = null;
      this.freq = null;
    }
    else {
      if (initObj.hasOwnProperty('pin')) {
        this.pin = initObj.pin
      }
      else {
        this.pin = 0;
      }
      if (initObj.hasOwnProperty('freq')) {
        this.freq = initObj.freq
      }
      else {
        this.freq = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PWMfreqRequest
    // Serialize message field [pin]
    bufferOffset = _serializer.uint8(obj.pin, buffer, bufferOffset);
    // Serialize message field [freq]
    bufferOffset = _serializer.uint16(obj.freq, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PWMfreqRequest
    let len;
    let data = new PWMfreqRequest(null);
    // Deserialize message field [pin]
    data.pin = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [freq]
    data.freq = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ian_bot/PWMfreqRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6c113b04c16feb54800f5386454232b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint8 pin
    
    
    uint16 freq
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PWMfreqRequest(null);
    if (msg.pin !== undefined) {
      resolved.pin = msg.pin;
    }
    else {
      resolved.pin = 0
    }

    if (msg.freq !== undefined) {
      resolved.freq = msg.freq;
    }
    else {
      resolved.freq = 0
    }

    return resolved;
    }
};

class PWMfreqResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.actual_freq = null;
    }
    else {
      if (initObj.hasOwnProperty('actual_freq')) {
        this.actual_freq = initObj.actual_freq
      }
      else {
        this.actual_freq = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PWMfreqResponse
    // Serialize message field [actual_freq]
    bufferOffset = _serializer.uint16(obj.actual_freq, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PWMfreqResponse
    let len;
    let data = new PWMfreqResponse(null);
    // Deserialize message field [actual_freq]
    data.actual_freq = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ian_bot/PWMfreqResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f1988e52f9fdbbcf3e1c6fbb44e3e57a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    uint16 actual_freq
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PWMfreqResponse(null);
    if (msg.actual_freq !== undefined) {
      resolved.actual_freq = msg.actual_freq;
    }
    else {
      resolved.actual_freq = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: PWMfreqRequest,
  Response: PWMfreqResponse,
  md5sum() { return '1be73106e596b32fd43bb7f7063c881b'; },
  datatype() { return 'ian_bot/PWMfreq'; }
};
