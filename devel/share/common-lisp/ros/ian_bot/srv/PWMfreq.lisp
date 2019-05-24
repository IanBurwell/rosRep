; Auto-generated. Do not edit!


(cl:in-package ian_bot-srv)


;//! \htmlinclude PWMfreq-request.msg.html

(cl:defclass <PWMfreq-request> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0)
   (freq
    :reader freq
    :initarg :freq
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PWMfreq-request (<PWMfreq-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PWMfreq-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PWMfreq-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ian_bot-srv:<PWMfreq-request> is deprecated: use ian_bot-srv:PWMfreq-request instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <PWMfreq-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ian_bot-srv:pin-val is deprecated.  Use ian_bot-srv:pin instead.")
  (pin m))

(cl:ensure-generic-function 'freq-val :lambda-list '(m))
(cl:defmethod freq-val ((m <PWMfreq-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ian_bot-srv:freq-val is deprecated.  Use ian_bot-srv:freq instead.")
  (freq m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PWMfreq-request>) ostream)
  "Serializes a message object of type '<PWMfreq-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'freq)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PWMfreq-request>) istream)
  "Deserializes a message object of type '<PWMfreq-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'freq)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PWMfreq-request>)))
  "Returns string type for a service object of type '<PWMfreq-request>"
  "ian_bot/PWMfreqRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PWMfreq-request)))
  "Returns string type for a service object of type 'PWMfreq-request"
  "ian_bot/PWMfreqRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PWMfreq-request>)))
  "Returns md5sum for a message object of type '<PWMfreq-request>"
  "1be73106e596b32fd43bb7f7063c881b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PWMfreq-request)))
  "Returns md5sum for a message object of type 'PWMfreq-request"
  "1be73106e596b32fd43bb7f7063c881b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PWMfreq-request>)))
  "Returns full string definition for message of type '<PWMfreq-request>"
  (cl:format cl:nil "~%uint8 pin~%~%~%uint16 freq~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PWMfreq-request)))
  "Returns full string definition for message of type 'PWMfreq-request"
  (cl:format cl:nil "~%uint8 pin~%~%~%uint16 freq~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PWMfreq-request>))
  (cl:+ 0
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PWMfreq-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PWMfreq-request
    (cl:cons ':pin (pin msg))
    (cl:cons ':freq (freq msg))
))
;//! \htmlinclude PWMfreq-response.msg.html

(cl:defclass <PWMfreq-response> (roslisp-msg-protocol:ros-message)
  ((actual_freq
    :reader actual_freq
    :initarg :actual_freq
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PWMfreq-response (<PWMfreq-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PWMfreq-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PWMfreq-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ian_bot-srv:<PWMfreq-response> is deprecated: use ian_bot-srv:PWMfreq-response instead.")))

(cl:ensure-generic-function 'actual_freq-val :lambda-list '(m))
(cl:defmethod actual_freq-val ((m <PWMfreq-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ian_bot-srv:actual_freq-val is deprecated.  Use ian_bot-srv:actual_freq instead.")
  (actual_freq m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PWMfreq-response>) ostream)
  "Serializes a message object of type '<PWMfreq-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'actual_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'actual_freq)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PWMfreq-response>) istream)
  "Deserializes a message object of type '<PWMfreq-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'actual_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'actual_freq)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PWMfreq-response>)))
  "Returns string type for a service object of type '<PWMfreq-response>"
  "ian_bot/PWMfreqResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PWMfreq-response)))
  "Returns string type for a service object of type 'PWMfreq-response"
  "ian_bot/PWMfreqResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PWMfreq-response>)))
  "Returns md5sum for a message object of type '<PWMfreq-response>"
  "1be73106e596b32fd43bb7f7063c881b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PWMfreq-response)))
  "Returns md5sum for a message object of type 'PWMfreq-response"
  "1be73106e596b32fd43bb7f7063c881b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PWMfreq-response>)))
  "Returns full string definition for message of type '<PWMfreq-response>"
  (cl:format cl:nil "~%~%uint16 actual_freq~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PWMfreq-response)))
  "Returns full string definition for message of type 'PWMfreq-response"
  (cl:format cl:nil "~%~%uint16 actual_freq~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PWMfreq-response>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PWMfreq-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PWMfreq-response
    (cl:cons ':actual_freq (actual_freq msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PWMfreq)))
  'PWMfreq-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PWMfreq)))
  'PWMfreq-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PWMfreq)))
  "Returns string type for a service object of type '<PWMfreq>"
  "ian_bot/PWMfreq")