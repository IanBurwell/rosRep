;; Auto-generated. Do not edit!


(when (boundp 'ian_bot::PWM)
  (if (not (find-package "IAN_BOT"))
    (make-package "IAN_BOT"))
  (shadow 'PWM (find-package "IAN_BOT")))
(unless (find-package "IAN_BOT::PWM")
  (make-package "IAN_BOT::PWM"))

(in-package "ROS")
;;//! \htmlinclude PWM.msg.html


(defclass ian_bot::PWM
  :super ros::object
  :slots (_pin _duty ))

(defmethod ian_bot::PWM
  (:init
   (&key
    ((:pin __pin) 0)
    ((:duty __duty) 0)
    )
   (send-super :init)
   (setq _pin (round __pin))
   (setq _duty (round __duty))
   self)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:duty
   (&optional __duty)
   (if __duty (setq _duty __duty)) _duty)
  (:serialization-length
   ()
   (+
    ;; uint8 _pin
    1
    ;; uint8 _duty
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _pin
       (write-byte _pin s)
     ;; uint8 _duty
       (write-byte _duty s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _pin
     (setq _pin (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _duty
     (setq _duty (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ian_bot::PWM :md5sum-) "a1987ff6213a184ccd240b69dafb5382")
(setf (get ian_bot::PWM :datatype-) "ian_bot/PWM")
(setf (get ian_bot::PWM :definition-)
      "#0-31
uint8 pin

#0-255
uint8 duty

")



(provide :ian_bot/PWM "a1987ff6213a184ccd240b69dafb5382")


