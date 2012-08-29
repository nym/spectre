/*

  VectorMath.dart
  
  Copyright (C) 2012 John McCutchan <john@johnmccutchan.com>
  
  This software is provided 'as-is', without any express or implied
  warranty.  In no event will the authors be held liable for any damages
  arising from the use of this software.

  Permission is granted to anyone to use this software for any purpose,
  including commercial applications, and to alter it and redistribute it
  freely, subject to the following restrictions:

  1. The origin of this software must not be misrepresented; you must not
     claim that you wrote the original software. If you use this software
     in a product, an acknowledgment in the product documentation would be
     appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and must not be
     misrepresented as being the original software.
  3. This notice may not be removed or altered from any source distribution.

*/
/// Returns [x] raised to the exponent [y]. Supports vectors and numbers.
Dynamic pow(Dynamic x, Dynamic y, [Dynamic out=null]) {
  if (x is num) {
    return Math.pow(x, y);
  }
  if (x is vec2) {
    if (out == null) {
      out = new vec2.zero();
    }
    out.x = Math.pow(x.x, y.x);
    out.y = Math.pow(x.y, y.y);
    return out;
  }
  if (x is vec3) {
    if (out == null) {
      out = new vec3.zero();
    }
    out.x = Math.pow(x.x, y.x);
    out.y = Math.pow(x.y, y.y);
    out.z = Math.pow(x.z, y.z);
    return out;
  }
  if (x is vec4) {
    if (out == null) {
      out = new vec4.zero();
    }
    out.x = Math.pow(x.x, y.x);
    out.y = Math.pow(x.y, y.y);
    out.z = Math.pow(x.z, y.z);
    out.w = Math.pow(x.w, y.w);
    return out;
  }
  throw new IllegalArgumentException(x);
}
/// Returns *e* raised to the exponent [arg]. Supports vectors and numbers.
Dynamic exp(Dynamic arg, [Dynamic out=null]) {
  if (arg is num) {
    return Math.exp(arg);
  }
  if (arg is vec2) {
    if (out == null) {
      out = new vec2.zero();
    }
    out.x = Math.exp(arg.x);
    out.y = Math.exp(arg.y);
    return out;
  }
  if (arg is vec3) {
    if (out == null) {
      out = new vec3.zero();
    }
    out.x = Math.exp(arg.x);
    out.y = Math.exp(arg.y);
    out.z = Math.exp(arg.z);
    return out;
  }
  if (arg is vec4) {
    if (out == null) {
      out = new vec4.zero();
    }
    out.x = Math.exp(arg.x);
    out.y = Math.exp(arg.y);
    out.z = Math.exp(arg.z);
    out.w = Math.exp(arg.w);
    return out;
  }
  throw new IllegalArgumentException(arg);
}
/// Returns the logarithm of [arg] base *e*. Supports vectors and numbers.
Dynamic log(Dynamic arg, [Dynamic out=null]) {
  if (arg is num) {
    return Math.log(arg);
  }
  if (arg is vec2) {
    if (out == null) {
      out = new vec2.zero();
    }
    out.x = Math.log(arg.x);
    out.y = Math.log(arg.y);
    return out;
  }
  if (arg is vec3) {
    if (out == null) {
      out = new vec3.zero();
    }
    out.x = Math.log(arg.x);
    out.y = Math.log(arg.y);
    out.z = Math.log(arg.z);
    return out;
  }
  if (arg is vec4) {
    if (out == null) {
      out = new vec4.zero();
    }
    out.x = Math.log(arg.x);
    out.y = Math.log(arg.y);
    out.z = Math.log(arg.z);
    out.w = Math.log(arg.w);
    return out;
  }
  throw new IllegalArgumentException(arg);
}
/// Returns *2* raised to the exponent [arg]. Supports vectors and numbers.
Dynamic exp2(Dynamic arg, [Dynamic out=null]) {
  if (arg is num) {
    return _ScalerHelpers.exp2(arg);
  }
  if (arg is vec2) {
    if (out == null) {
      out = new vec2.zero();
    }
    out.x = _ScalerHelpers.exp2(arg.x);
    out.y = _ScalerHelpers.exp2(arg.y);
    return out;
  }
  if (arg is vec3) {
    if (out == null) {
      out = new vec3.zero();
    }
    out.x = _ScalerHelpers.exp2(arg.x);
    out.y = _ScalerHelpers.exp2(arg.y);
    out.z = _ScalerHelpers.exp2(arg.z);
    return out;
  }
  if (arg is vec4) {
    if (out == null) {
      out = new vec4.zero();
    }
    out.x = _ScalerHelpers.exp2(arg.x);
    out.y = _ScalerHelpers.exp2(arg.y);
    out.z = _ScalerHelpers.exp2(arg.z);
    out.w = _ScalerHelpers.exp2(arg.w);
    return out;
  }
  throw new IllegalArgumentException(arg);
}
/// Returns the logarithm of [arg] base *2*. Supports vectors and numbers.
Dynamic log2(Dynamic arg, [Dynamic out=null]) {
  if (arg is num) {
    return _ScalerHelpers.log2(arg);
  }
  if (arg is vec2) {
    if (out == null) {
      out = new vec2.zero();
    }
    out.x = _ScalerHelpers.log2(arg.x);
    out.y = _ScalerHelpers.log2(arg.y);
    return out;
  }
  if (arg is vec3) {
    if (out == null) {
      out = new vec3.zero();
    }
    out.x = _ScalerHelpers.log2(arg.x);
    out.y = _ScalerHelpers.log2(arg.y);
    out.z = _ScalerHelpers.log2(arg.z);
    return out;
  }
  if (arg is vec4) {
    if (out == null) {
      out = new vec4.zero();
    }
    out.x = _ScalerHelpers.log2(arg.x);
    out.y = _ScalerHelpers.log2(arg.y);
    out.z = _ScalerHelpers.log2(arg.z);
    out.w = _ScalerHelpers.log2(arg.w);
    return out;
  }
  throw new IllegalArgumentException(arg);
}
/// Returns the square root of [arg].
Dynamic sqrt(Dynamic arg, [Dynamic out=null]) {
  if (arg is num) {
    return Math.sqrt(arg);
  }
  if (arg is vec2) {
    if (out == null) {
      out = new vec2.zero();
    }
    out.x = Math.sqrt(arg.x);
    out.y = Math.sqrt(arg.y);
    return out;
  }
  if (arg is vec3) {
    if (out == null) {
      out = new vec3.zero();
    }
    out.x = Math.sqrt(arg.x);
    out.y = Math.sqrt(arg.y);
    out.z = Math.sqrt(arg.z);
    return out;
  }
  if (arg is vec4) {
    if (out == null) {
      out = new vec4.zero();
    }
    out.x = Math.sqrt(arg.x);
    out.y = Math.sqrt(arg.y);
    out.z = Math.sqrt(arg.z);
    out.w = Math.sqrt(arg.w);
    return out;
  }
  throw new IllegalArgumentException(arg);
}
/// Returns the inverse square root of [arg]. Supports vectors and numbers.
Dynamic inversesqrt(Dynamic arg, [Dynamic out=null]) {
  if (arg is num) {
    return _ScalerHelpers.inversesqrt(arg);
  }
  if (arg is vec2) {
    if (out == null) {
      out = new vec2.zero();
    }
    out.x = _ScalerHelpers.inversesqrt(arg.x);
    out.y = _ScalerHelpers.inversesqrt(arg.y);
    return out;
  }
  if (arg is vec3) {
    if (out == null) {
      out = new vec3.zero();
    }
    out.x = _ScalerHelpers.inversesqrt(arg.x);
    out.y = _ScalerHelpers.inversesqrt(arg.y);
    out.z = _ScalerHelpers.inversesqrt(arg.z);
    return out;
  }
  if (arg is vec4) {
    if (out == null) {
      out = new vec4.zero();
    }
    out.x = _ScalerHelpers.inversesqrt(arg.x);
    out.y = _ScalerHelpers.inversesqrt(arg.y);
    out.z = _ScalerHelpers.inversesqrt(arg.z);
    out.w = _ScalerHelpers.inversesqrt(arg.w);
    return out;
  }
  throw new IllegalArgumentException(arg);
}
