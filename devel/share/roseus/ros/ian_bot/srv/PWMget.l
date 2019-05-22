;; Auto-generated. Do not edit!


(when (boundp 'ian_bot::PWMget)
  (if (not (find-package "IAN_BOT"))
    (make-package "IAN_BOT"))
  (shadow 'PWMget (find-package "IAN_BOT")))
(unless (find-package "IAN_BOT::PWMGET")
  (make-package "IAN_BOT::PWMGET"))
(unless (find-package "IAN_BOT::PWMGETREQUEST")
  (make-package "IAN_BOT::PWMGETREQUEST"))
(unless (find-package "IAN_BOT::PWMGETRESPONSE")
  (make-package "IAN_BOT::PWMGETRESPONSE"))

(in-package "ROS")





(defclass ian_bot::PWMgetRequest
  :super ros::object
  :slots (_pin ))

(defmethod ian_bot::PWMgetRequest
  (:init
   (&key
    ((:pin __pin) 0)
    )
   (send-super :init)
   (setq _pin (round __pin))
   self)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:serialization-length
   ()
   (+
    ;; uint8 _pin
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _pin
       (write-byte _pin s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _pin
     (setq _pin (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass ian_bot::PWMgetResponse
  :super ros::object
  :slots (_duty ))

(defmethod ian_bot::PWMgetResponse
  (:init
   (&key
    ((:duty __duty) 0)
    )
   (send-super :init)
   (setq _duty (round __duty))
   self)
  (:duty
   (&optional __duty)
   (if __duty (setq _duty __duty)) _duty)
  (:serialization-length
   ()
   (+
    ;; uint8 _duty
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _duty
       (write-byte _duty s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _duty
     (setq _duty (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass ian_bot::PWMget
  :super ros::object
  :slots ())

(setf (get ian_bot::PWMget :md5sum-) "7e4c244c821737a5d9e99b63cbe39052")
(setf (get ian_bot::PWMget :datatype-) "ian_bot/PWMget")
(setf (get ian_bot::PWMget :request) ian_bot::PWMgetRequest)
(setf (get ian_bot::PWMget :response) ian_bot::PWMgetResponse)

(defmethod ian_bot::PWMgetRequest
  (:response () (instance ian_bot::PWMgetResponse :init)))

(setf (get ian_bot::PWMgetRequest :md5sum-) "7e4c244c821737a5d9e99b63cbe39052")
(setf (get ian_bot::PWMgetRequest :datatype-) "ian_bot/PWMgetRequest")
(setf (get ian_bot::PWMgetRequest :definition-)
      "
uint8 pin

---


uint8 duty

")

(setf (get ian_bot::PWMgetResponse :md5sum-) "7e4c244c821737a5d9e99b63cbe39052")
(setf (get ian_bot::PWMgetResponse :datatype-) "ian_bot/PWMgetResponse")
(setf (get ian_bot::PWMgetResponse :definition-)
      "
uint8 pin

---


uint8 duty

")



(provide :ian_bot/PWMget "7e4c244c821737a5d9e99b63cbe39052")


