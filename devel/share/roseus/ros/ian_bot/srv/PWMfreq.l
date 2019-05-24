;; Auto-generated. Do not edit!


(when (boundp 'ian_bot::PWMfreq)
  (if (not (find-package "IAN_BOT"))
    (make-package "IAN_BOT"))
  (shadow 'PWMfreq (find-package "IAN_BOT")))
(unless (find-package "IAN_BOT::PWMFREQ")
  (make-package "IAN_BOT::PWMFREQ"))
(unless (find-package "IAN_BOT::PWMFREQREQUEST")
  (make-package "IAN_BOT::PWMFREQREQUEST"))
(unless (find-package "IAN_BOT::PWMFREQRESPONSE")
  (make-package "IAN_BOT::PWMFREQRESPONSE"))

(in-package "ROS")





(defclass ian_bot::PWMfreqRequest
  :super ros::object
  :slots (_pin _freq ))

(defmethod ian_bot::PWMfreqRequest
  (:init
   (&key
    ((:pin __pin) 0)
    ((:freq __freq) 0)
    )
   (send-super :init)
   (setq _pin (round __pin))
   (setq _freq (round __freq))
   self)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:freq
   (&optional __freq)
   (if __freq (setq _freq __freq)) _freq)
  (:serialization-length
   ()
   (+
    ;; uint8 _pin
    1
    ;; uint16 _freq
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _pin
       (write-byte _pin s)
     ;; uint16 _freq
       (write-word _freq s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _pin
     (setq _pin (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _freq
     (setq _freq (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass ian_bot::PWMfreqResponse
  :super ros::object
  :slots (_actual_freq ))

(defmethod ian_bot::PWMfreqResponse
  (:init
   (&key
    ((:actual_freq __actual_freq) 0)
    )
   (send-super :init)
   (setq _actual_freq (round __actual_freq))
   self)
  (:actual_freq
   (&optional __actual_freq)
   (if __actual_freq (setq _actual_freq __actual_freq)) _actual_freq)
  (:serialization-length
   ()
   (+
    ;; uint16 _actual_freq
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _actual_freq
       (write-word _actual_freq s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _actual_freq
     (setq _actual_freq (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass ian_bot::PWMfreq
  :super ros::object
  :slots ())

(setf (get ian_bot::PWMfreq :md5sum-) "1be73106e596b32fd43bb7f7063c881b")
(setf (get ian_bot::PWMfreq :datatype-) "ian_bot/PWMfreq")
(setf (get ian_bot::PWMfreq :request) ian_bot::PWMfreqRequest)
(setf (get ian_bot::PWMfreq :response) ian_bot::PWMfreqResponse)

(defmethod ian_bot::PWMfreqRequest
  (:response () (instance ian_bot::PWMfreqResponse :init)))

(setf (get ian_bot::PWMfreqRequest :md5sum-) "1be73106e596b32fd43bb7f7063c881b")
(setf (get ian_bot::PWMfreqRequest :datatype-) "ian_bot/PWMfreqRequest")
(setf (get ian_bot::PWMfreqRequest :definition-)
      "
uint8 pin


uint16 freq

---


uint16 actual_freq

")

(setf (get ian_bot::PWMfreqResponse :md5sum-) "1be73106e596b32fd43bb7f7063c881b")
(setf (get ian_bot::PWMfreqResponse :datatype-) "ian_bot/PWMfreqResponse")
(setf (get ian_bot::PWMfreqResponse :definition-)
      "
uint8 pin


uint16 freq

---


uint16 actual_freq

")



(provide :ian_bot/PWMfreq "1be73106e596b32fd43bb7f7063c881b")


