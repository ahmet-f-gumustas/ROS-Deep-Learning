; Auto-generated. Do not edit!


(cl:in-package first_package-msg)


;//! \htmlinclude dron.msg.html

(cl:defclass <dron> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (hiz
    :reader hiz
    :initarg :hiz
    :type cl:integer
    :initform 0)
   (sicaklik
    :reader sicaklik
    :initarg :sicaklik
    :type cl:float
    :initform 0.0)
   (batarya_durumu
    :reader batarya_durumu
    :initarg :batarya_durumu
    :type cl:float
    :initform 0.0))
)

(cl:defclass dron (<dron>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <dron>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'dron)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name first_package-msg:<dron> is deprecated: use first_package-msg:dron instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <dron>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader first_package-msg:id-val is deprecated.  Use first_package-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <dron>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader first_package-msg:name-val is deprecated.  Use first_package-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'hiz-val :lambda-list '(m))
(cl:defmethod hiz-val ((m <dron>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader first_package-msg:hiz-val is deprecated.  Use first_package-msg:hiz instead.")
  (hiz m))

(cl:ensure-generic-function 'sicaklik-val :lambda-list '(m))
(cl:defmethod sicaklik-val ((m <dron>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader first_package-msg:sicaklik-val is deprecated.  Use first_package-msg:sicaklik instead.")
  (sicaklik m))

(cl:ensure-generic-function 'batarya_durumu-val :lambda-list '(m))
(cl:defmethod batarya_durumu-val ((m <dron>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader first_package-msg:batarya_durumu-val is deprecated.  Use first_package-msg:batarya_durumu instead.")
  (batarya_durumu m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <dron>) ostream)
  "Serializes a message object of type '<dron>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'hiz)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sicaklik))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'batarya_durumu))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <dron>) istream)
  "Deserializes a message object of type '<dron>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hiz) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sicaklik) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'batarya_durumu) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<dron>)))
  "Returns string type for a message object of type '<dron>"
  "first_package/dron")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'dron)))
  "Returns string type for a message object of type 'dron"
  "first_package/dron")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<dron>)))
  "Returns md5sum for a message object of type '<dron>"
  "bd87af409edd0de2354fdb3acd1dd1d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'dron)))
  "Returns md5sum for a message object of type 'dron"
  "bd87af409edd0de2354fdb3acd1dd1d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<dron>)))
  "Returns full string definition for message of type '<dron>"
  (cl:format cl:nil "int32 id ~%string name~%int32 hiz~%float32 sicaklik~%float32 batarya_durumu~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'dron)))
  "Returns full string definition for message of type 'dron"
  (cl:format cl:nil "int32 id ~%string name~%int32 hiz~%float32 sicaklik~%float32 batarya_durumu~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <dron>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'name))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <dron>))
  "Converts a ROS message object to a list"
  (cl:list 'dron
    (cl:cons ':id (id msg))
    (cl:cons ':name (name msg))
    (cl:cons ':hiz (hiz msg))
    (cl:cons ':sicaklik (sicaklik msg))
    (cl:cons ':batarya_durumu (batarya_durumu msg))
))
