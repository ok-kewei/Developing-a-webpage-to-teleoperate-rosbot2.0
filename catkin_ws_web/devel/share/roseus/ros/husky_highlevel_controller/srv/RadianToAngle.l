;; Auto-generated. Do not edit!


(when (boundp 'husky_highlevel_controller::RadianToAngle)
  (if (not (find-package "HUSKY_HIGHLEVEL_CONTROLLER"))
    (make-package "HUSKY_HIGHLEVEL_CONTROLLER"))
  (shadow 'RadianToAngle (find-package "HUSKY_HIGHLEVEL_CONTROLLER")))
(unless (find-package "HUSKY_HIGHLEVEL_CONTROLLER::RADIANTOANGLE")
  (make-package "HUSKY_HIGHLEVEL_CONTROLLER::RADIANTOANGLE"))
(unless (find-package "HUSKY_HIGHLEVEL_CONTROLLER::RADIANTOANGLEREQUEST")
  (make-package "HUSKY_HIGHLEVEL_CONTROLLER::RADIANTOANGLEREQUEST"))
(unless (find-package "HUSKY_HIGHLEVEL_CONTROLLER::RADIANTOANGLERESPONSE")
  (make-package "HUSKY_HIGHLEVEL_CONTROLLER::RADIANTOANGLERESPONSE"))

(in-package "ROS")





(defclass husky_highlevel_controller::RadianToAngleRequest
  :super ros::object
  :slots (_radian ))

(defmethod husky_highlevel_controller::RadianToAngleRequest
  (:init
   (&key
    ((:radian __radian) 0.0)
    )
   (send-super :init)
   (setq _radian (float __radian))
   self)
  (:radian
   (&optional __radian)
   (if __radian (setq _radian __radian)) _radian)
  (:serialization-length
   ()
   (+
    ;; float64 _radian
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _radian
       (sys::poke _radian (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _radian
     (setq _radian (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass husky_highlevel_controller::RadianToAngleResponse
  :super ros::object
  :slots (_angle _success ))

(defmethod husky_highlevel_controller::RadianToAngleResponse
  (:init
   (&key
    ((:angle __angle) 0.0)
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _angle (float __angle))
   (setq _success __success)
   self)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; float64 _angle
    8
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass husky_highlevel_controller::RadianToAngle
  :super ros::object
  :slots ())

(setf (get husky_highlevel_controller::RadianToAngle :md5sum-) "8dd47fc5494973709ed579a85c77ce44")
(setf (get husky_highlevel_controller::RadianToAngle :datatype-) "husky_highlevel_controller/RadianToAngle")
(setf (get husky_highlevel_controller::RadianToAngle :request) husky_highlevel_controller::RadianToAngleRequest)
(setf (get husky_highlevel_controller::RadianToAngle :response) husky_highlevel_controller::RadianToAngleResponse)

(defmethod husky_highlevel_controller::RadianToAngleRequest
  (:response () (instance husky_highlevel_controller::RadianToAngleResponse :init)))

(setf (get husky_highlevel_controller::RadianToAngleRequest :md5sum-) "8dd47fc5494973709ed579a85c77ce44")
(setf (get husky_highlevel_controller::RadianToAngleRequest :datatype-) "husky_highlevel_controller/RadianToAngleRequest")
(setf (get husky_highlevel_controller::RadianToAngleRequest :definition-)
      "float64 radian
---
float64 angle
bool success
")

(setf (get husky_highlevel_controller::RadianToAngleResponse :md5sum-) "8dd47fc5494973709ed579a85c77ce44")
(setf (get husky_highlevel_controller::RadianToAngleResponse :datatype-) "husky_highlevel_controller/RadianToAngleResponse")
(setf (get husky_highlevel_controller::RadianToAngleResponse :definition-)
      "float64 radian
---
float64 angle
bool success
")



(provide :husky_highlevel_controller/RadianToAngle "8dd47fc5494973709ed579a85c77ce44")


