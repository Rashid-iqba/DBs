using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Doctordb
{
    #region Doctor_user
    public class Doctor_user
    {
        #region Member Variables
        protected int _id;
        protected int _doctor_type;
        protected int _other_type_one;
        protected int _other_type_two;
        protected int _symptoms_category;
        protected unknown _rating;
        protected string _doctor_name;
        protected string _email;
        protected string _password;
        protected int _experince;
        protected int _fee;
        protected string _address;
        protected string _phone;
        protected string _doctor_image;
        protected string _lat;
        protected string _lng;
        protected DateTime _crated_at;
        protected string _updated_at;
        protected unknown _active_status;
        protected unknown _login_status;
        protected string _about;
        protected int _booking_ids;
        #endregion
        #region Constructors
        public Doctor_user() { }
        public Doctor_user(int doctor_type, int other_type_one, int other_type_two, int symptoms_category, unknown rating, string doctor_name, string email, string password, int experince, int fee, string address, string phone, string doctor_image, string lat, string lng, DateTime crated_at, string updated_at, unknown active_status, unknown login_status, string about, int booking_ids)
        {
            this._doctor_type=doctor_type;
            this._other_type_one=other_type_one;
            this._other_type_two=other_type_two;
            this._symptoms_category=symptoms_category;
            this._rating=rating;
            this._doctor_name=doctor_name;
            this._email=email;
            this._password=password;
            this._experince=experince;
            this._fee=fee;
            this._address=address;
            this._phone=phone;
            this._doctor_image=doctor_image;
            this._lat=lat;
            this._lng=lng;
            this._crated_at=crated_at;
            this._updated_at=updated_at;
            this._active_status=active_status;
            this._login_status=login_status;
            this._about=about;
            this._booking_ids=booking_ids;
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual int Doctor_type
        {
            get {return _doctor_type;}
            set {_doctor_type=value;}
        }
        public virtual int Other_type_one
        {
            get {return _other_type_one;}
            set {_other_type_one=value;}
        }
        public virtual int Other_type_two
        {
            get {return _other_type_two;}
            set {_other_type_two=value;}
        }
        public virtual int Symptoms_category
        {
            get {return _symptoms_category;}
            set {_symptoms_category=value;}
        }
        public virtual unknown Rating
        {
            get {return _rating;}
            set {_rating=value;}
        }
        public virtual string Doctor_name
        {
            get {return _doctor_name;}
            set {_doctor_name=value;}
        }
        public virtual string Email
        {
            get {return _email;}
            set {_email=value;}
        }
        public virtual string Password
        {
            get {return _password;}
            set {_password=value;}
        }
        public virtual int Experince
        {
            get {return _experince;}
            set {_experince=value;}
        }
        public virtual int Fee
        {
            get {return _fee;}
            set {_fee=value;}
        }
        public virtual string Address
        {
            get {return _address;}
            set {_address=value;}
        }
        public virtual string Phone
        {
            get {return _phone;}
            set {_phone=value;}
        }
        public virtual string Doctor_image
        {
            get {return _doctor_image;}
            set {_doctor_image=value;}
        }
        public virtual string Lat
        {
            get {return _lat;}
            set {_lat=value;}
        }
        public virtual string Lng
        {
            get {return _lng;}
            set {_lng=value;}
        }
        public virtual DateTime Crated_at
        {
            get {return _crated_at;}
            set {_crated_at=value;}
        }
        public virtual string Updated_at
        {
            get {return _updated_at;}
            set {_updated_at=value;}
        }
        public virtual unknown Active_status
        {
            get {return _active_status;}
            set {_active_status=value;}
        }
        public virtual unknown Login_status
        {
            get {return _login_status;}
            set {_login_status=value;}
        }
        public virtual string About
        {
            get {return _about;}
            set {_about=value;}
        }
        public virtual int Booking_ids
        {
            get {return _booking_ids;}
            set {_booking_ids=value;}
        }
        #endregion
    }
    #endregion
}