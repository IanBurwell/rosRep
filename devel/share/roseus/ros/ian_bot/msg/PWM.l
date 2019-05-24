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
  :slots (_pin _width ))

(defmethod ian_bot::PWM
  (:init
   (&key
    ((:pin __pin) 0)
    ((:width __width) 0)
    )
   (send-super :init)
   (setq _pin (round __pin))
   (setq _width (round __width))
   self)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:serialization-length
   ()
   (+
    ;; uint8 _pin
    1
    ;; uint16 _width
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _pin
       (write-byte _pin s)
     ;; uint16 _width
       (write-word _width s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _pin
     (setq _pin (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _width
     (setq _width (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get ian_bot::PWM :md5sum-) "4d014280e020a5ca2f6af8bf78a593ff")
(setf (get ian_bot::PWM :datatype-) "ian_bot/PWM")
(setf (get ian_bot::PWM :definition-)
      "#0-31
uint8 pin

#500 - 2500 (0-3000)
uint16 width

")



(provide :ian_bot/PWM "4d014280e020a5ca2f6af8bf78a593ff")


