// Generated by gencpp from file ian_bot/PWMfreq.msg
// DO NOT EDIT!


#ifndef IAN_BOT_MESSAGE_PWMFREQ_H
#define IAN_BOT_MESSAGE_PWMFREQ_H

#include <ros/service_traits.h>


#include <ian_bot/PWMfreqRequest.h>
#include <ian_bot/PWMfreqResponse.h>


namespace ian_bot
{

struct PWMfreq
{

typedef PWMfreqRequest Request;
typedef PWMfreqResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct PWMfreq
} // namespace ian_bot


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ian_bot::PWMfreq > {
  static const char* value()
  {
    return "1be73106e596b32fd43bb7f7063c881b";
  }

  static const char* value(const ::ian_bot::PWMfreq&) { return value(); }
};

template<>
struct DataType< ::ian_bot::PWMfreq > {
  static const char* value()
  {
    return "ian_bot/PWMfreq";
  }

  static const char* value(const ::ian_bot::PWMfreq&) { return value(); }
};


// service_traits::MD5Sum< ::ian_bot::PWMfreqRequest> should match 
// service_traits::MD5Sum< ::ian_bot::PWMfreq > 
template<>
struct MD5Sum< ::ian_bot::PWMfreqRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ian_bot::PWMfreq >::value();
  }
  static const char* value(const ::ian_bot::PWMfreqRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ian_bot::PWMfreqRequest> should match 
// service_traits::DataType< ::ian_bot::PWMfreq > 
template<>
struct DataType< ::ian_bot::PWMfreqRequest>
{
  static const char* value()
  {
    return DataType< ::ian_bot::PWMfreq >::value();
  }
  static const char* value(const ::ian_bot::PWMfreqRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ian_bot::PWMfreqResponse> should match 
// service_traits::MD5Sum< ::ian_bot::PWMfreq > 
template<>
struct MD5Sum< ::ian_bot::PWMfreqResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ian_bot::PWMfreq >::value();
  }
  static const char* value(const ::ian_bot::PWMfreqResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ian_bot::PWMfreqResponse> should match 
// service_traits::DataType< ::ian_bot::PWMfreq > 
template<>
struct DataType< ::ian_bot::PWMfreqResponse>
{
  static const char* value()
  {
    return DataType< ::ian_bot::PWMfreq >::value();
  }
  static const char* value(const ::ian_bot::PWMfreqResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // IAN_BOT_MESSAGE_PWMFREQ_H