; Auto-generated. Do not edit!


(cl:in-package ian_bot-srv)


;//! \htmlinclude PWMget-request.msg.html

(cl:defclass <PWMget-request> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PWMget-request (<PWMget-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PWMget-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PWMget-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ian_bot-srv:<PWMget-request> is deprecated: use ian_bot-srv:PWMget-request instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <PWMget-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ian_bot-srv:pin-val is deprecated.  Use ian_bot-srv:pin instead.")
  (pin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PWMget-request>) ostream)
  "Serializes a message object of type '<PWMget-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PWMget-request>) istream)
  "Deserializes a message object of type '<PWMget-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PWMget-request>)))
  "Returns string type for a service object of type '<PWMget-request>"
  "ian_bot/PWMgetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PWMget-request)))
  "Returns string type for a service object of type 'PWMget-request"
  "ian_bot/PWMgetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PWMget-request>)))
  "Returns md5sum for a message object of type '<PWMget-request>"
  "7e4c244c821737a5d9e99b63cbe39052")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PWMget-request)))
  "Returns md5sum for a message object of type 'PWMget-request"
  "7e4c244c821737a5d9e99b63cbe39052")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PWMget-request>)))
  "Returns full string definition for message of type '<PWMget-request>"
  (cl:format cl:nil "~%uint8 pin~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PWMget-request)))
  "Returns full string definition for message of type 'PWMget-request"
  (cl:format cl:nil "~%uint8 pin~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PWMget-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PWMget-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PWMget-request
    (cl:cons ':pin (pin msg))
))
;//! \htmlinclude PWMget-response.msg.html

(cl:defclass <PWMget-response> (roslisp-msg-protocol:ros-message)
  ((duty
    :reader duty
    :initarg :duty
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PWMget-response (<PWMget-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PWMget-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PWMget-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ian_bot-srv:<PWMget-response> is deprecated: use ian_bot-srv:PWMget-response instead.")))

(cl:ensure-generic-function 'duty-val :lambda-list '(m))
(cl:defmethod duty-val ((m <PWMget-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ian_bot-srv:duty-val is deprecated.  Use ian_bot-srv:duty instead.")
  (duty m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PWMget-response>) ostream)
  "Serializes a message object of type '<PWMget-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'duty)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PWMget-response>) istream)
  "Deserializes a message object of type '<PWMget-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'duty)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PWMget-response>)))
  "Returns string type for a service object of type '<PWMget-response>"
  "ian_bot/PWMgetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PWMget-response)))
  "Returns string type for a service object of type 'PWMget-response"
  "ian_bot/PWMgetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PWMget-response>)))
  "Returns md5sum for a message object of type '<PWMget-response>"
  "7e4c244c821737a5d9e99b63cbe39052")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PWMget-response)))
  "Returns md5sum for a message object of type 'PWMget-response"
  "7e4c244c821737a5d9e99b63cbe39052")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PWMget-response>)))
  "Returns full string definition for message of type '<PWMget-response>"
  (cl:format cl:nil "~%~%uint8 duty~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PWMget-response)))
  "Returns full string definition for message of type 'PWMget-response"
  (cl:format cl:nil "~%~%uint8 duty~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PWMget-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PWMget-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PWMget-response
    (cl:cons ':duty (duty msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PWMget)))
  'PWMget-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PWMget)))
  'PWMget-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PWMget)))
  "Returns string type for a service object of type '<PWMget>"
  "ian_bot/PWMget")