#ifndef SIMPLE_H
#define SIMPLE_H

#include <memory>
#include <string>
#include <grpc++/grpc++.h>

#include "proto/simple.pb.h"
#include "proto/simple.grpc.pb.h"

using grpc::Channel;
using grpc::ClientContext;
using grpc::Status;
using proto::FooRequest;
using proto::FooReply;
using proto::BarRequest;
using proto::BarReply;
using proto::Simple;

class SimpleClient {
 public:
  SimpleClient(std::shared_ptr<Channel> channel);

  std::string Foo(const std::string& user);

  std::string Bar(const std::string& user);

 private:
  std::unique_ptr<Simple::Stub> stub_;
};

#endif
