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

class PWMgetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pin = null;
    }
    else {
      if (initObj.hasOwnProperty('pin')) {
        this.pin = initObj.pin
      }
      else {
        this.pin = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PWMgetRequest
    // Serialize message field [pin]
    bufferOffset = _serializer.uint8(obj.pin, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PWMgetRequest
    let len;
    let data = new PWMgetRequest(null);
    // Deserialize message field [pin]
    data.pin = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ian_bot/PWMgetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '41386d6ac585eedbab7b4d4f9192cbcc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint8 pin
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PWMgetRequest(null);
    if (msg.pin !== undefined) {
      resolved.pin = msg.pin;
    }
    else {
      resolved.pin = 0
    }

    return resolved;
    }
};

class PWMgetResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.duty = null;
    }
    else {
      if (initObj.hasOwnProperty('duty')) {
        this.duty = initObj.duty
      }
      else {
        this.duty = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PWMgetResponse
    // Serialize message field [duty]
    bufferOffset = _serializer.uint8(obj.duty, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PWMgetResponse
    let len;
    let data = new PWMgetResponse(null);
    // Deserialize message field [duty]
    data.duty = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ian_bot/PWMgetResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f9191ddc0c0b64448b0d2ca747dd200b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    uint8 duty
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PWMgetResponse(null);
    if (msg.duty !== undefined) {
      resolved.duty = msg.duty;
    }
    else {
      resolved.duty = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: PWMgetRequest,
  Response: PWMgetResponse,
  md5sum() { return '7e4c244c821737a5d9e99b63cbe39052'; },
  datatype() { return 'ian_bot/PWMget'; }
};
