//////////////////////////////////////////////////////////////////////////////////////////
// A cross platform socket APIs, support ios & android & wp8 & window store
// universal app
//////////////////////////////////////////////////////////////////////////////////////////
//
// detail/select_interrupter.hpp
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//
// Copyright (c) 2016-2020 halx99 (halx99 at live dot com)
// Copyright (c) 2003-2020 Christopher M. Kohlhoff (chris at kohlhoff dot com)
//
// Distributed under the Boost Software License, Version 1.0. (See accompanying
// file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
//
// see also: https://github.com/chriskohlhoff/asio
//
#ifndef YASIO__SELECT_INTERRUPTER_HPP
#define YASIO__SELECT_INTERRUPTER_HPP

#if defined(_WIN32)
#  include "socket_select_interrupter.hpp"
#elif defined(__linux__)
#  include "eventfd_select_interrupter.hpp"
#else
#  include "pipe_select_interrupter.hpp"
#endif

namespace yasio
{
namespace inet
{

#if defined(_WIN32)
typedef socket_select_interrupter select_interrupter;
#elif defined(__linux__)
typedef eventfd_select_interrupter select_interrupter;
#else
typedef pipe_select_interrupter select_interrupter;
#endif

} // namespace inet
} // namespace yasio

#endif // YASIO__SELECT_INTERRUPTER_HPP
