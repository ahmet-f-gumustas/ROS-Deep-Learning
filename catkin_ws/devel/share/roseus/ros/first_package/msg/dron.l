;; Auto-generated. Do not edit!


(when (boundp 'first_package::dron)
  (if (not (find-package "FIRST_PACKAGE"))
    (make-package "FIRST_PACKAGE"))
  (shadow 'dron (find-package "FIRST_PACKAGE")))
(unless (find-package "FIRST_PACKAGE::DRON")
  (make-package "FIRST_PACKAGE::DRON"))

(in-package "ROS")
;;//! \htmlinclude dron.msg.html


(defclass first_package::dron
  :super ros::object
  :slots (_id _name _hiz _sicaklik _batarya_durumu ))

(defmethod first_package::dron
  (:init
   (&key
    ((:id __id) 0)
    ((:name __name) "")
    ((:hiz __hiz) 0)
    ((:sicaklik __sicaklik) 0.0)
    ((:batarya_durumu __batarya_durumu) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _name (string __name))
   (setq _hiz (round __hiz))
   (setq _sicaklik (float __sicaklik))
   (setq _batarya_durumu (float __batarya_durumu))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:hiz
   (&optional __hiz)
   (if __hiz (setq _hiz __hiz)) _hiz)
  (:sicaklik
   (&optional __sicaklik)
   (if __sicaklik (setq _sicaklik __sicaklik)) _sicaklik)
  (:batarya_durumu
   (&optional __batarya_durumu)
   (if __batarya_durumu (setq _batarya_durumu __batarya_durumu)) _batarya_durumu)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; string _name
    4 (length _name)
    ;; int32 _hiz
    4
    ;; float32 _sicaklik
    4
    ;; float32 _batarya_durumu
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32 _hiz
       (write-long _hiz s)
     ;; float32 _sicaklik
       (sys::poke _sicaklik (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _batarya_durumu
       (sys::poke _batarya_durumu (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _hiz
     (setq _hiz (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _sicaklik
     (setq _sicaklik (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _batarya_durumu
     (setq _batarya_durumu (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get first_package::dron :md5sum-) "bd87af409edd0de2354fdb3acd1dd1d0")
(setf (get first_package::dron :datatype-) "first_package/dron")
(setf (get first_package::dron :definition-)
      "int32 id 
string name
int32 hiz
float32 sicaklik
float32 batarya_durumu
")



(provide :first_package/dron "bd87af409edd0de2354fdb3acd1dd1d0")


