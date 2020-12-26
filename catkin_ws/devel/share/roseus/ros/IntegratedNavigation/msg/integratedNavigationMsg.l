;; Auto-generated. Do not edit!


(when (boundp 'IntegratedNavigation::IntegratedNavigationMsg)
  (if (not (find-package "INTEGRATEDNAVIGATION"))
    (make-package "INTEGRATEDNAVIGATION"))
  (shadow 'IntegratedNavigationMsg (find-package "INTEGRATEDNAVIGATION")))
(unless (find-package "INTEGRATEDNAVIGATION::INTEGRATEDNAVIGATIONMSG")
  (make-package "INTEGRATEDNAVIGATION::INTEGRATEDNAVIGATIONMSG"))

(in-package "ROS")
;;//! \htmlinclude IntegratedNavigationMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass IntegratedNavigation::IntegratedNavigationMsg
  :super ros::object
  :slots (_header _GPSWeek _GPSTime _Heading _Pitch _Roll _gyroX _gyroY _gyroZ _accX _accY _accZ _Lattitude _Longitude _Altitude _Ve _Vn _Vu _Baseline _NSV1 _NSV2 _Status _Age _warning ))

(defmethod IntegratedNavigation::IntegratedNavigationMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:GPSWeek __GPSWeek) 0.0)
    ((:GPSTime __GPSTime) 0.0)
    ((:Heading __Heading) 0.0)
    ((:Pitch __Pitch) 0.0)
    ((:Roll __Roll) 0.0)
    ((:gyroX __gyroX) 0.0)
    ((:gyroY __gyroY) 0.0)
    ((:gyroZ __gyroZ) 0.0)
    ((:accX __accX) 0.0)
    ((:accY __accY) 0.0)
    ((:accZ __accZ) 0.0)
    ((:Lattitude __Lattitude) 0.0)
    ((:Longitude __Longitude) 0.0)
    ((:Altitude __Altitude) 0.0)
    ((:Ve __Ve) 0.0)
    ((:Vn __Vn) 0.0)
    ((:Vu __Vu) 0.0)
    ((:Baseline __Baseline) 0.0)
    ((:NSV1 __NSV1) 0)
    ((:NSV2 __NSV2) 0)
    ((:Status __Status) 0)
    ((:Age __Age) 0.0)
    ((:warning __warning) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _GPSWeek (float __GPSWeek))
   (setq _GPSTime (float __GPSTime))
   (setq _Heading (float __Heading))
   (setq _Pitch (float __Pitch))
   (setq _Roll (float __Roll))
   (setq _gyroX (float __gyroX))
   (setq _gyroY (float __gyroY))
   (setq _gyroZ (float __gyroZ))
   (setq _accX (float __accX))
   (setq _accY (float __accY))
   (setq _accZ (float __accZ))
   (setq _Lattitude (float __Lattitude))
   (setq _Longitude (float __Longitude))
   (setq _Altitude (float __Altitude))
   (setq _Ve (float __Ve))
   (setq _Vn (float __Vn))
   (setq _Vu (float __Vu))
   (setq _Baseline (float __Baseline))
   (setq _NSV1 (round __NSV1))
   (setq _NSV2 (round __NSV2))
   (setq _Status (round __Status))
   (setq _Age (float __Age))
   (setq _warning (round __warning))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:GPSWeek
   (&optional __GPSWeek)
   (if __GPSWeek (setq _GPSWeek __GPSWeek)) _GPSWeek)
  (:GPSTime
   (&optional __GPSTime)
   (if __GPSTime (setq _GPSTime __GPSTime)) _GPSTime)
  (:Heading
   (&optional __Heading)
   (if __Heading (setq _Heading __Heading)) _Heading)
  (:Pitch
   (&optional __Pitch)
   (if __Pitch (setq _Pitch __Pitch)) _Pitch)
  (:Roll
   (&optional __Roll)
   (if __Roll (setq _Roll __Roll)) _Roll)
  (:gyroX
   (&optional __gyroX)
   (if __gyroX (setq _gyroX __gyroX)) _gyroX)
  (:gyroY
   (&optional __gyroY)
   (if __gyroY (setq _gyroY __gyroY)) _gyroY)
  (:gyroZ
   (&optional __gyroZ)
   (if __gyroZ (setq _gyroZ __gyroZ)) _gyroZ)
  (:accX
   (&optional __accX)
   (if __accX (setq _accX __accX)) _accX)
  (:accY
   (&optional __accY)
   (if __accY (setq _accY __accY)) _accY)
  (:accZ
   (&optional __accZ)
   (if __accZ (setq _accZ __accZ)) _accZ)
  (:Lattitude
   (&optional __Lattitude)
   (if __Lattitude (setq _Lattitude __Lattitude)) _Lattitude)
  (:Longitude
   (&optional __Longitude)
   (if __Longitude (setq _Longitude __Longitude)) _Longitude)
  (:Altitude
   (&optional __Altitude)
   (if __Altitude (setq _Altitude __Altitude)) _Altitude)
  (:Ve
   (&optional __Ve)
   (if __Ve (setq _Ve __Ve)) _Ve)
  (:Vn
   (&optional __Vn)
   (if __Vn (setq _Vn __Vn)) _Vn)
  (:Vu
   (&optional __Vu)
   (if __Vu (setq _Vu __Vu)) _Vu)
  (:Baseline
   (&optional __Baseline)
   (if __Baseline (setq _Baseline __Baseline)) _Baseline)
  (:NSV1
   (&optional __NSV1)
   (if __NSV1 (setq _NSV1 __NSV1)) _NSV1)
  (:NSV2
   (&optional __NSV2)
   (if __NSV2 (setq _NSV2 __NSV2)) _NSV2)
  (:Status
   (&optional __Status)
   (if __Status (setq _Status __Status)) _Status)
  (:Age
   (&optional __Age)
   (if __Age (setq _Age __Age)) _Age)
  (:warning
   (&optional __warning)
   (if __warning (setq _warning __warning)) _warning)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _GPSWeek
    4
    ;; float32 _GPSTime
    4
    ;; float32 _Heading
    4
    ;; float32 _Pitch
    4
    ;; float32 _Roll
    4
    ;; float32 _gyroX
    4
    ;; float32 _gyroY
    4
    ;; float32 _gyroZ
    4
    ;; float32 _accX
    4
    ;; float32 _accY
    4
    ;; float32 _accZ
    4
    ;; float32 _Lattitude
    4
    ;; float32 _Longitude
    4
    ;; float32 _Altitude
    4
    ;; float32 _Ve
    4
    ;; float32 _Vn
    4
    ;; float32 _Vu
    4
    ;; float32 _Baseline
    4
    ;; int32 _NSV1
    4
    ;; int32 _NSV2
    4
    ;; int8 _Status
    1
    ;; float32 _Age
    4
    ;; int8 _warning
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _GPSWeek
       (sys::poke _GPSWeek (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _GPSTime
       (sys::poke _GPSTime (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Heading
       (sys::poke _Heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Pitch
       (sys::poke _Pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Roll
       (sys::poke _Roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyroX
       (sys::poke _gyroX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyroY
       (sys::poke _gyroY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyroZ
       (sys::poke _gyroZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accX
       (sys::poke _accX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accY
       (sys::poke _accY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accZ
       (sys::poke _accZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Lattitude
       (sys::poke _Lattitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Longitude
       (sys::poke _Longitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Altitude
       (sys::poke _Altitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Ve
       (sys::poke _Ve (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Vn
       (sys::poke _Vn (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Vu
       (sys::poke _Vu (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Baseline
       (sys::poke _Baseline (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _NSV1
       (write-long _NSV1 s)
     ;; int32 _NSV2
       (write-long _NSV2 s)
     ;; int8 _Status
       (write-byte _Status s)
     ;; float32 _Age
       (sys::poke _Age (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _warning
       (write-byte _warning s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _GPSWeek
     (setq _GPSWeek (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _GPSTime
     (setq _GPSTime (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Heading
     (setq _Heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Pitch
     (setq _Pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Roll
     (setq _Roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyroX
     (setq _gyroX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyroY
     (setq _gyroY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyroZ
     (setq _gyroZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accX
     (setq _accX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accY
     (setq _accY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accZ
     (setq _accZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Lattitude
     (setq _Lattitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Longitude
     (setq _Longitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Altitude
     (setq _Altitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Ve
     (setq _Ve (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Vn
     (setq _Vn (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Vu
     (setq _Vu (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Baseline
     (setq _Baseline (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _NSV1
     (setq _NSV1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _NSV2
     (setq _NSV2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _Status
     (setq _Status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Status 127) (setq _Status (- _Status 256)))
   ;; float32 _Age
     (setq _Age (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _warning
     (setq _warning (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _warning 127) (setq _warning (- _warning 256)))
   ;;
   self)
  )

(setf (get IntegratedNavigation::IntegratedNavigationMsg :md5sum-) "d81d7ef76c6aee37d26e89632fe99105")
(setf (get IntegratedNavigation::IntegratedNavigationMsg :datatype-) "IntegratedNavigation/IntegratedNavigationMsg")
(setf (get IntegratedNavigation::IntegratedNavigationMsg :definition-)
      "std_msgs/Header header
float32 GPSWeek
float32 GPSTime
float32 Heading
float32 Pitch
float32 Roll
float32 gyroX
float32 gyroY
float32 gyroZ
float32 accX
float32 accY
float32 accZ
float32 Lattitude
float32 Longitude
float32 Altitude
float32 Ve # velocity towards east
float32 Vn # velocity towards north
float32 Vu
float32 Baseline # Velocity of vehicle
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

")



(provide :IntegratedNavigation/IntegratedNavigationMsg "d81d7ef76c6aee37d26e89632fe99105")


