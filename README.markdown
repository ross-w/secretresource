#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with secretresource](#setup)
    * [Beginning with secretresource](#beginning-with-secretresource)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Limitations - OS compatibility, etc.](#limitations)

## Overview

This module installs a catalog cache terminus which prevents actually caching the catalog. There is also a function to ensure that this is in place before calling sensitive resources.    

## Module Description

This module installs a catalog cache terminus which prevents actually caching the catalog. There is also a function to ensure that this is in place before calling sensitive resources.

## Setup

### Beginning with secretresource

```
include secretresource
```

## Usage

```
secretresource::wrap{ 'supersecret':
  res_name => 'something::secret',
  params   => {
    'secretstuff' => {
      key    => 'verysecret',
    }
  }
}
```

## Limitations

Tested with CentOS 7. May work on other OSes.
